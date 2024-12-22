#include <algorithm>
#include <iostream>
#include <memory>
#include <vector>

#include <GLFW/glfw3.h>
#define GLAD_GL_IMPLEMENTATION
#include <glad/gl.h>
#undef GLAD_GL_IMPLEMENTATION
#include <btBulletDynamicsCommon.h>
#include <glm/glm.hpp>

#include <glm/ext/matrix_transform.hpp>
#include <glm/gtx/string_cast.hpp>

#include "camera.h"
#include "context.h"
#include "gl_helper.h"
#include "ground.h"
#include "model.h"
#include "opengl_context.h"
#include "program.h"
#include "utils.h"

#define ANGLE_TO_RADIAN(x) (float)((x) * M_PI / 180.0f)
#define RADIAN_TO_ANGLE(x) (float)((x) * 180.0f / M_PI)

#define CIRCLE_SEGMENT 64
#define SECTOR 36
#define STACK 18

#define ROTATE_SPEED 1.f
#define MOVING_SPEED ROTATE_SPEED / 20.f
#define Y_MOVING_SPEED MOVING_SPEED / 4.f
#define BALL_MOVING_SPEED 0.05f
#define SWING_SPEED 2.0f
#define ROLLING_SPEED 5.0f
#define HOLD_SPEED 0.5f

#define CONSTRAIN_ANGLE -45
#define HOLD_CONSTRAIN_ANGLE 45
#define SWING_FORCE_INCREMENT 0.01
#define MAX_SWING_FORCE 1.0
#define IMPULSE_MULTIPLIER 1

#define SILVER 0.75, 0.75, 0.75
#define CYAN 0, 1, 1
#define PURPLE 1, 0, 1

#define TOLERATE 0.75f
#define BASIC_TOLERANCE 3

float DISTANCE_TOLERANCE = 3;
enum class angle { NONE = 0, CLOCKWISE = -1, COUNTERCLOCKWISE = 1 };
enum class scalar { NONE = 0, MINUS = -1, PLUS = 1 };

// to check the putter is swing or not
bool isSwing = false;
// to check the ball is hit or not
bool isHit = false;
// to check the putter is hold or not
bool isHold = false;
// initial
bool reset = false;
// putter swing force
float swingForce = 0.0f;
// camera lock on ball
bool cameraLock = false;
// putter teleport to ball
bool goToBall = false;
// foul or not
bool foul = false;

int WIDTH = 100, DEPTH = 100;

// the scalar for the putter translation
scalar delta_xzpos = scalar::NONE;
// the scalar for the putter up and down
scalar delta_ypos = scalar::NONE;
// the scalar for the putter swing
angle delta_x_rotate = angle::NONE;
// the scalar for the putter yaw
angle delta_y_rotate = angle::NONE;

// the angle for the putter swing
float x_rotate = 0.0f;
// the angle for the yaw rotation
float y_rotate = 0.0f;

// the position of the putter
glm::vec3 pos(0.0f, 1.5f, 0.0f);
// the forward vector for putter
glm::vec3 forward_vector(0.0f, 0.0f, 1.0f);
// up vector
glm::vec3 up_vector(0.0f, 1.0f, 0.0f);
// the position of the ball
glm::vec3 ballpos(0.0f, 0.0f, 0.0f);
// the position of the goal
glm::vec3 goalpos(0.0f, 0.0f, 0.0f);

void initOpenGL();
void resizeCallback(GLFWwindow* window, int width, int height);
void keyCallback(GLFWwindow* window, int key, int, int action, int);

Context ctx;

Material mFlatwhite;
Material mShinyred;
Material mClearblue;

struct SwingCollisionCallback : public btCollisionWorld::ContactResultCallback {
  bool hitDetected = false;
  const btRigidBody* targetBody;

  SwingCollisionCallback(const btRigidBody* target) : targetBody(target) {}

  btScalar addSingleResult(btManifoldPoint& cp, const btCollisionObjectWrapper* colObj0Wrap, int partId0, int index0,
                           const btCollisionObjectWrapper* colObj1Wrap, int partId1, int index1) override {
    const btRigidBody* body0 = btRigidBody::upcast(colObj0Wrap->getCollisionObject());
    const btRigidBody* body1 = btRigidBody::upcast(colObj1Wrap->getCollisionObject());

    if (body0 == targetBody || body1 == targetBody) {
      hitDetected = true;
    }

    return 0;
  }
};

void initializePhysics() {
  ctx.broadphase = new btDbvtBroadphase();
  ctx.collisionConfiguration = new btDefaultCollisionConfiguration();
  ctx.dispatcher = new btCollisionDispatcher(ctx.collisionConfiguration);
  ctx.solver = new btSequentialImpulseConstraintSolver();
  ctx.dynamicsWorld =
      new btDiscreteDynamicsWorld(ctx.dispatcher, ctx.broadphase, ctx.solver, ctx.collisionConfiguration);

  ctx.dynamicsWorld->setGravity(btVector3(0, -9.8, 0));
}

void updateRigidBodyFromObject(Object* obj) {
  if (obj->rigidBody) {
    btTransform trans;

    glm::vec3 position(obj->transformMatrix[3][0], obj->transformMatrix[3][1], obj->transformMatrix[3][2]);

    glm::mat3 rotation = glm::mat3(obj->transformMatrix);
    btMatrix3x3 btRotation(rotation[0][0], rotation[0][1], rotation[0][2], rotation[1][0], rotation[1][1],
                           rotation[1][2], rotation[2][0], rotation[2][1], rotation[2][2]);

    // 更新Bullet世界剛體狀態
    trans.setOrigin(btVector3(position.x, position.y, position.z));
    trans.setBasis(btRotation);

    obj->rigidBody->setWorldTransform(trans);
    obj->rigidBody->getMotionState()->setWorldTransform(trans);
  }
}

void updateObjectFromRigidBody(Object* obj) {
  if (obj->rigidBody) {
    btTransform trans;
    obj->rigidBody->getMotionState()->getWorldTransform(trans);

    // Bullet矩陣轉glm矩陣
    glm::mat4 newTransform = glm::mat4(1.0f);
    trans.getOpenGLMatrix(glm::value_ptr(newTransform));

    // 更新 transformMatrix
    obj->transformMatrix = newTransform;
  }
}

void updatePhysics(float deltaTime) {
  ctx.dynamicsWorld->stepSimulation(deltaTime, 10);

  updateObjectFromRigidBody(ctx.objects[4]);
}

void loadMaterial() {
  mFlatwhite.ambient = glm::vec3(0.0f, 0.0f, 0.0f);
  mFlatwhite.diffuse = glm::vec3(1.0f, 1.0f, 1.0f);
  mFlatwhite.specular = glm::vec3(0.0f, 0.0f, 0.0f);
  mFlatwhite.shininess = 10;

  mShinyred.ambient = glm::vec3(0.1985f, 0.0000f, 0.0000f);
  mShinyred.diffuse = glm::vec3(0.5921f, 0.0167f, 0.0000f);
  mShinyred.specular = glm::vec3(0.5973f, 0.2083f, 0.2083f);
  mShinyred.shininess = 100.0f;

  mClearblue.ambient = glm::vec3(0.0394f, 0.0394f, 0.3300f);
  mClearblue.diffuse = glm::vec3(0.1420f, 0.1420f, 0.9500f);
  mClearblue.specular = glm::vec3(0.1420f, 0.1420f, 0.9500f);
  mClearblue.shininess = 10;
}

void loadPrograms() {
  // ctx.programs.push_back(new ExampleProgram(&ctx));
  ctx.programs.clear();
  ctx.programs.push_back(new LightProgram(&ctx));
  // ctx.programs.push_back(new BasicProgram(&ctx));

  for (auto iter = ctx.programs.begin(); iter != ctx.programs.end(); iter++) {
    if (!(*iter)->load()) {
      std::cout << "Load program fail, force terminate" << std::endl;
      exit(1);
    }
  }
  glUseProgram(0);
}

btCollisionShape* createGolfBallShape(Model* ballModel) { return new btSphereShape(0.1f); }

btCollisionShape* createGolfPutterShape(Model* putterModel,
                                        const glm::vec3& scaleFactor = glm::vec3(0.5f, 0.5f, 0.5f)) {
  btConvexHullShape* shape = new btConvexHullShape();
  for (size_t i = 0; i < putterModel->positions.size(); i += 3) {
    btVector3 vertex(putterModel->positions[i] * scaleFactor.x, putterModel->positions[i + 1] * scaleFactor.y,
                     putterModel->positions[i + 2] * scaleFactor.z);
    shape->addPoint(vertex);
  }
  return shape;
}

btCollisionShape* createGroundShape(Model* groundModel) {
  btTriangleMesh* mesh = new btTriangleMesh();

  for (size_t i = 0; i < groundModel->positions.size(); i += 9) {
    btVector3 vertex0(groundModel->positions[i], groundModel->positions[i + 1], groundModel->positions[i + 2]);
    btVector3 vertex1(groundModel->positions[i + 3], groundModel->positions[i + 4], groundModel->positions[i + 5]);
    btVector3 vertex2(groundModel->positions[i + 6], groundModel->positions[i + 7], groundModel->positions[i + 8]);
    mesh->addTriangle(vertex0, vertex1, vertex2);
  }

  return new btBvhTriangleMeshShape(mesh, true);
}

btCollisionShape* createWallShape(Model* wallModel, const glm::vec3& scaleFactor = glm::vec3(100, 1.5f, 100)) {
  btTriangleMesh* mesh = new btTriangleMesh();

  for (size_t i = 0; i < wallModel->positions.size(); i += 9) {
    btVector3 vertex0(wallModel->positions[i] * scaleFactor.x, wallModel->positions[i + 1] * scaleFactor.y,
                      wallModel->positions[i + 2] * scaleFactor.z);
    btVector3 vertex1(wallModel->positions[i + 3] * scaleFactor.x, wallModel->positions[i + 4] * scaleFactor.y,
                      wallModel->positions[i + 5] * scaleFactor.z);
    btVector3 vertex2(wallModel->positions[i + 6] * scaleFactor.x, wallModel->positions[i + 7] * scaleFactor.y,
                      wallModel->positions[i + 8] * scaleFactor.z);
    mesh->addTriangle(vertex0, vertex1, vertex2);
  }

  return new btBvhTriangleMeshShape(mesh, true);
}

void setupPhysics(Object* object, Model* model, btDiscreteDynamicsWorld* dynamicsWorld, btCollisionShape* shape,
                  float mass = 1.0f) {
  // 碰撞形狀
  model->collisionShape = shape;

  // 運動狀態
  btDefaultMotionState* motionState = new btDefaultMotionState(btTransform(
      btQuaternion(0, 0, 0, 1),
      btVector3(object->transformMatrix[3][0], object->transformMatrix[3][1], object->transformMatrix[3][2])));

  // 計算慣性
  btVector3 inertia(0, 0, 0);
  if (mass > 0.0f) {
    shape->calculateLocalInertia(mass, inertia);
  }

  // 創建剛體
  btRigidBody::btRigidBodyConstructionInfo rigidBodyCI(mass, motionState, shape, inertia);
  object->rigidBody = new btRigidBody(rigidBodyCI);

  // 將剛體加入物理世界
  dynamicsWorld->addRigidBody(object->rigidBody);
}

Model* loadBall() {
  Model* m = Model::fromObjectFile("../assets/models/ball/ball.obj");
  m->textures.push_back(createTexture("../assets/models/ball/ball_tex.jpg"));
  // m->textures.push_back(createTexture("../assets/models/Vase/Vase2.jpg"));
  m->modelMatrix = glm::scale(m->modelMatrix, glm::vec3(0.1f, 0.1f, 0.1f));
  ctx.models.push_back(m);
  return m;
}

Model* loadPutter() {
  Model* m = Model::fromObjectFile("../assets/models/putter/putter.obj");
  m->textures.push_back(createTexture("../assets/models/Vase/Vase2.jpg"));
  m->modelMatrix = glm::scale(m->modelMatrix, glm::vec3(0.5f, 0.5f, 0.5f));
  ctx.models.push_back(m);

  return m;
}

Model* loadFlag() {
  Model* m = Model::fromObjectFile("../assets/models/ground/flag.obj");
  m->textures.push_back(createTexture("../assets/models/ground/flag.png"));
  m->modelMatrix = glm::scale(m->modelMatrix, glm::vec3(1.f, 1.f, 1.f));
  if (reset)
    ctx.models[0] = m;
  else
    ctx.models.push_back(m);
  return m;
}

Model* loadGoal() {
  Model* m = Model::fromObjectFile("../assets/models/ground/goal.obj");
  m->textures.push_back(createTexture("../assets/models/Vase/Vase2.jpg"));
  m->modelMatrix = glm::scale(m->modelMatrix, glm::vec3(1.f, 1.f, 1.f));
  if (reset)
    ctx.models[1] = m;
  else
    ctx.models.push_back(m);
  return m;
}

Model* loadWall(int width, int depth) {
  Model* m = Model::fromObjectFile("../assets/models/ground/wall.obj");
  m->textures.push_back(createTexture("../assets/models/ground/wood.jpg"));
  m->modelMatrix = glm::scale(m->modelMatrix, glm::vec3(width - 1, 1.5f, depth - 1));
  if (reset)
    ctx.models[2] = m;
  else
    ctx.models.push_back(m);
  return m;
}

int addGolfHole(std::vector<float>& heightmap, int width, int depth) {
  std::srand(std::time(nullptr));
  int holeX = width * 3 / 4 + (std::rand() % (width / 4));
  int holeZ = depth * 3 / 4 + (std::rand() % (depth / 4));

  int holeIndex = holeZ * width + holeX;
  std::cout << holeX << " " << holeZ << std::endl;
  goalpos = glm::vec3(holeX, 0.0f, holeZ);
  int tmp = heightmap[holeIndex];
  heightmap[holeIndex] = -5.0f;
  for (int i = -2; i <= 2; i++) {
    for (int j = -2; j <= 2; j++) {
      int neighborIndex = (holeZ + i) * width + (holeX + j);
      if (neighborIndex >= 0 && neighborIndex < heightmap.size() && holeZ + i >= 0 && holeZ + i <= DEPTH &&
          holeX + j >= 0 && holeX + i <= WIDTH) {
        heightmap[neighborIndex] = -5.f;
      }
    }
  }
  std::cout << holeIndex << " " << heightmap[holeIndex] << std::endl;
  float holeHeight = heightmap[holeIndex];
  glm::vec3 flagPosition(holeX, tmp + 3, holeZ);
  glm::vec3 goalPosition(holeX, tmp - 4, holeZ);
  Model* flag = loadFlag();
  Model* goal = loadGoal();
  Model* wall = loadWall(width, depth);
  if (reset) {
    Object* flagObject = new Object(0, glm::translate(glm::identity<glm::mat4>(), flagPosition));
    ctx.objects[0] = flagObject;

    Object* goalObject = new Object(1, glm::translate(glm::identity<glm::mat4>(), goalPosition));
    setupPhysics(goalObject, goal, ctx.dynamicsWorld, createGroundShape(goal), 0);
    goalObject->rigidBody->setFriction(0.6f);
    ctx.objects[1] = goalObject;

    Object* wallObject = new Object(2, glm::translate(glm::identity<glm::mat4>(), glm::vec3(0.0, 0.0, 0.0)));
    setupPhysics(wallObject, wall, ctx.dynamicsWorld, createWallShape(wall), 0);
    ctx.objects[2] = wallObject;
  } else {
    Object* flagObject = new Object(0, glm::translate(glm::identity<glm::mat4>(), flagPosition));
    ctx.objects.push_back(flagObject);

    Object* goalObject = new Object(1, glm::translate(glm::identity<glm::mat4>(), goalPosition));
    setupPhysics(goalObject, goal, ctx.dynamicsWorld, createGroundShape(goal), 0);
    goalObject->rigidBody->setFriction(0.6f);
    ctx.objects.push_back(goalObject);

    Object* wallObject = new Object(2, glm::translate(glm::identity<glm::mat4>(), glm::vec3(0.0, 0.0, 0.0)));
    setupPhysics(wallObject, wall, ctx.dynamicsWorld, createWallShape(wall), 0);
    ctx.objects.push_back(wallObject);
  }
  return holeIndex;
}

Model* generateGround(int width, int depth) {
  Model* m = new Model();

  WIDTH = width;
  DEPTH = depth;
  float scale = 0.1f;      // ����a�Υ��Ƶ{��
  float amplitude = 2.0f;  // ����a�ΰ���
  std::vector<float> heightmap = generatePerlinHeightmap(width, depth, scale, amplitude);

  int k = addGolfHole(heightmap, width, depth);
  std::cout << k << " " << heightmap[k] << std::endl;

  // �K�[�a�Ϊ����� (�P���e���޿�ۦP)
  for (int z = 0; z < depth - 1; z++) {
    for (int x = 0; x < width - 1; x++) {
      int topLeft = z * width + x;
      int topRight = topLeft + 1;
      int bottomLeft = (z + 1) * width + x;
      int bottomRight = bottomLeft + 1;
      m->positions.push_back(x);
      m->positions.push_back(heightmap[topLeft]);
      m->positions.push_back(z);
      m->positions.push_back(x);
      m->positions.push_back(heightmap[bottomLeft]);
      m->positions.push_back(z + 1);
      m->positions.push_back(x + 1);
      m->positions.push_back(heightmap[topRight]);
      m->positions.push_back(z);

      m->normals.push_back(0.0f);
      m->normals.push_back(1.0f);
      m->normals.push_back(0.0f);
      m->normals.push_back(0.0f);
      m->normals.push_back(1.0f);
      m->normals.push_back(0.0f);
      m->normals.push_back(0.0f);
      m->normals.push_back(1.0f);
      m->normals.push_back(0.0f);

      m->texcoords.push_back(0);
      m->texcoords.push_back(0);
      m->texcoords.push_back(1);
      m->texcoords.push_back(0);
      m->texcoords.push_back(1);
      m->texcoords.push_back(1);

      m->positions.push_back(x + 1);
      m->positions.push_back(heightmap[topRight]);
      m->positions.push_back(z);
      m->positions.push_back(x);
      m->positions.push_back(heightmap[bottomLeft]);
      m->positions.push_back(z + 1);
      m->positions.push_back(x + 1);
      m->positions.push_back(heightmap[bottomRight]);
      m->positions.push_back(z + 1);

      m->normals.push_back(0.0f);
      m->normals.push_back(1.0f);
      m->normals.push_back(0.0f);
      m->normals.push_back(0.0f);
      m->normals.push_back(1.0f);
      m->normals.push_back(0.0f);
      m->normals.push_back(0.0f);
      m->normals.push_back(1.0f);
      m->normals.push_back(0.0f);

      m->texcoords.push_back(1);
      m->texcoords.push_back(1);
      m->texcoords.push_back(1);
      m->texcoords.push_back(0);
      m->texcoords.push_back(0);
      m->texcoords.push_back(1);
    }
  }

  m->textures.push_back(createTexture("../assets/models/ground/grass.jpg"));
  m->numVertex = m->positions.size() / 3;
  if (reset) {
    std::cout << "change!!" << std::endl;
    ctx.models[3] = m;
    Object* groundObject = new Object(3, glm::translate(glm::identity<glm::mat4>(), glm::vec3(0.0, 0.0, 0.0)));
    setupPhysics(groundObject, m, ctx.dynamicsWorld, createGroundShape(m), 0);
    groundObject->rigidBody->setFriction(0.8f);
    ctx.objects[3] = groundObject;
  } else
    ctx.models.push_back(m);

  std::cout << m->positions.size() / 3 << std::endl;
  return m;
}

void loadModels() {
  // Model* m = new Model();
  // float pos[] = {-1, 0, -1, -1, 0, 1, 1, 0, 1, 1, 0, -1};
  // float nor[] = {0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f};
  // float tx[] = {0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f};
  // for (int i = 0; i < 12; i++) {
  //   m->positions.push_back(pos[i]);
  //   m->normals.push_back(nor[i]);
  //   if (i < 8) m->texcoords.push_back(tx[i]);
  // }
  // m->textures.push_back(createTexture("../assets/models/Vase/Vase2.jpg"));
  // m->numVertex = 4;
  // m->drawMode = GL_QUADS;
  // ctx.models.push_back(m);

  Model* ground = generateGround(100, 100);
  Model* ball = loadBall();
  Model* putter = loadPutter();
}

void setupObjects() {
  // ground
  Model* groundModel = generateGround(20, 20);
  Object* groundObject = new Object(3, glm::translate(glm::identity<glm::mat4>(), glm::vec3(0.0, 0.0, 0.0)));
  setupPhysics(groundObject, groundModel, ctx.dynamicsWorld, createGroundShape(groundModel), 0);
  groundObject->rigidBody->setFriction(0.8f);
  ctx.objects.push_back(groundObject);

  // ball
  Model* ballModel = loadBall();
  Object* ballObject = new Object(4, glm::translate(glm::identity<glm::mat4>(), glm::vec3(5.0, 0.0, 5.0)));
  setupPhysics(ballObject, ballModel, ctx.dynamicsWorld, createGolfBallShape(ballModel), 0.045);
  ballObject->rigidBody->setFriction(0.1f);
  ballObject->rigidBody->setRollingFriction(0.01f);
  ballObject->rigidBody->setCcdMotionThreshold(0.01f);
  ballObject->rigidBody->setCcdSweptSphereRadius(0.05f);
  ballObject->rigidBody->setActivationState(DISABLE_DEACTIVATION);
  ctx.objects.push_back(ballObject);

  // putter
  Model* putterModel = loadPutter();
  Object* putterObject = new Object(5, glm::translate(glm::identity<glm::mat4>(), glm::vec3(0.0, 0.0, 0.0)));
  setupPhysics(putterObject, putterModel, ctx.dynamicsWorld, createGolfPutterShape(putterModel), 0);
  ctx.objects.push_back(putterObject);
}

void transform() {
  // // ball transform
  // glm::mat4 ball_transform = glm::identity<glm::mat4>();
  // ball_transform = glm::translate(ball_transform, ballpos);
  // ball_transform *= currentRotation;
  // ball_transform = glm::scale(ball_transform, glm::vec3(0.5f, 0.5f, 0.5f));
  // ctx.objects[1]->transformMatrix = ball_transform;

  // putter transform;
  glm::mat4 putter_transform = glm::identity<glm::mat4>();
  putter_transform = glm::translate(putter_transform, pos);
  putter_transform = glm::rotate(putter_transform, glm::radians(y_rotate), glm::vec3(0.0f, 1.0f, 0.0f));
  putter_transform = glm::rotate(putter_transform, glm::radians(x_rotate), glm::vec3(1.0f, 0.0f, 0.0f));
  putter_transform = glm::translate(putter_transform, glm::vec3(0.0f, -1.5f, 0.0f));
  putter_transform = glm::scale(putter_transform, glm::vec3(0.5f, 0.5f, 0.5f));
  ctx.objects[5]->transformMatrix = putter_transform;
  updateRigidBodyFromObject(ctx.objects[5]);
}

void resetBall() {
  btRigidBody* ballRigidBody = ctx.objects[4]->rigidBody;
  btTransform ballStart;
  ballStart.setIdentity();
  ballStart.setOrigin(btVector3(5.0f, 0.25f, 5.0f));

  ballRigidBody->setWorldTransform(ballStart);

  if (ballRigidBody->getMotionState()) {
    ballRigidBody->getMotionState()->setWorldTransform(ballStart);
  }

  ballRigidBody->setLinearVelocity(btVector3(0, 0, 0));
  ballRigidBody->setAngularVelocity(btVector3(0, 0, 0));

  ballRigidBody->activate();
}
void init() {
  delta_xzpos = scalar::NONE;
  delta_x_rotate = angle::NONE;
  delta_y_rotate = angle::NONE;

  x_rotate = 0.0f;
  y_rotate = 0.0f;

  pos = glm::vec3(0.0f, 1.5f, 0.0f);

  forward_vector = glm::vec3(0.0f, 0.0f, 1.0f);
  resetBall();
  std::srand(std::time(nullptr));
  WIDTH = 100 + std::rand() % 100;
  DEPTH = 100 + std::rand() % 100;
  generateGround(WIDTH, DEPTH);
  reset = false;
  loadPrograms();
}

void dealBallFoul() {
  int newX = (ballpos.x < 0) ? 5 : (ballpos.x > WIDTH) ? WIDTH - 5 : ballpos.x;
  int newZ = (ballpos.z < 0) ? 5 : (ballpos.z > DEPTH) ? DEPTH - 5 : ballpos.z;

  btRigidBody* ballRigidBody = ctx.objects[4]->rigidBody;
  btTransform ballStart;
  ballStart.setIdentity();
  ballStart.setOrigin(btVector3(newX, 1.25f, newZ));

  ballRigidBody->setWorldTransform(ballStart);

  if (ballRigidBody->getMotionState()) {
    ballRigidBody->getMotionState()->setWorldTransform(ballStart);
  }

  ballRigidBody->setLinearVelocity(btVector3(0, 0, 0));
  ballRigidBody->setAngularVelocity(btVector3(0, 0, 0));
  std::cout << "FOUL!!" << std::endl;
  ballRigidBody->activate();
}

void inHole() {
  if (std::abs(ballpos.x - goalpos.x) <= 2 && std::abs(ballpos.z - goalpos.z) <= 2 && ballpos.y <= -1) {
    std::cout << "\nCongratulations!!!!!!\n" << std::endl;
    reset = true;
  }
}

void detectAndApplyForce() {
  btRigidBody* ballRigidBody = ctx.objects[4]->rigidBody;
  btRigidBody* putterRigidBody = ctx.objects[5]->rigidBody;
  SwingCollisionCallback collisionCallback(ballRigidBody);
  ctx.dynamicsWorld->contactTest(putterRigidBody, collisionCallback);

  if (collisionCallback.hitDetected && !isHit) {
    isHit = true;
    btTransform putterTransform = putterRigidBody->getWorldTransform();
    btVector3 localEndPosition(-0.25f, -1.5f, 0.0f);
    btVector3 worldEndPosition = putterTransform * localEndPosition;
    btVector3 ballPosition = ballRigidBody->getWorldTransform().getOrigin();

    std::cout << "hit!" << std::endl;
    btVector3 forceDirection = (ballPosition - worldEndPosition).normalized();
    std::cout << "Direction: " << forceDirection.getX() << " " << forceDirection.getY() << " " << forceDirection.getZ()
              << std::endl;
    btScalar forceMagnitude = swingForce * IMPULSE_MULTIPLIER;
    btVector3 impulse = forceDirection * forceMagnitude;
    ballRigidBody->applyCentralImpulse(impulse);
    btVector3 velocity = ballRigidBody->getLinearVelocity();
    std::cout << "Ball Velocity: " << velocity.getX() << ", " << velocity.getY() << ", " << velocity.getZ()
              << std::endl;
    std::cout << "Swing Force: " << swingForce << std::endl;
  }
}

int main() {
  initOpenGL();
  initializePhysics();

  GLFWwindow* window = OpenGLContext::getWindow();
  glfwSetWindowTitle(window, "Final Project");

  // Init Camera helper
  Camera camera(glm::vec3(0, 2, 5));
  camera.initialize(OpenGLContext::getAspectRatio());
  // Store camera as glfw global variable for callbacks use
  glfwSetWindowUserPointer(window, &camera);
  ctx.camera = &camera;
  ctx.window = window;

  loadMaterial();
  // loadModels();
  setupObjects();
  loadPrograms();

  // Main rendering loop
  while (!glfwWindowShouldClose(window)) {
    ballpos = glm::vec3(ctx.objects[4]->rigidBody->getWorldTransform().getOrigin().x(),
                        ctx.objects[4]->rigidBody->getWorldTransform().getOrigin().y(),
                        ctx.objects[4]->rigidBody->getWorldTransform().getOrigin().z());

    // Polling events.
    glfwPollEvents();
    // Update camera position and view
    if (cameraLock) {
      camera.lockOnToTarget(ballpos, 5.0f, 30.0f);
    }
    camera.move(window);
    // GL_XXX_BIT can simply "OR" together to use.
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    /// TO DO Enable DepthTest
    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LEQUAL);
    glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
    glClear(GL_COLOR_BUFFER_BIT);
    glClearDepth(1.0f);

    ctx.programs[ctx.currentProgram]->doMainLoop();

    inHole();

    if (reset) init();

    if (ballpos.y < -10) {
      dealBallFoul();
    }

    if (delta_xzpos == scalar::PLUS) {
      pos += forward_vector * MOVING_SPEED;
    } else if (delta_xzpos == scalar::MINUS) {
      pos -= forward_vector * MOVING_SPEED;
    }

    if (delta_ypos == scalar::PLUS) {
      pos += up_vector * Y_MOVING_SPEED;
    } else if (delta_ypos == scalar::MINUS) {
      pos -= up_vector * Y_MOVING_SPEED;
    }

    if (delta_y_rotate == angle::CLOCKWISE) {
      y_rotate -= ROTATE_SPEED;
    } else if (delta_y_rotate == angle::COUNTERCLOCKWISE) {
      y_rotate += ROTATE_SPEED;
    }

    if (goToBall) {
      goToBall = false;
      pos = ballpos + glm::vec3(-0.25f, 1.5f, -0.25f);
    }

    float radians = ANGLE_TO_RADIAN(y_rotate);
    forward_vector = glm::normalize(glm::vec3(sinf(radians), 0.0f, cosf(radians)));

    if (isHold) {
      if (delta_x_rotate == angle::CLOCKWISE && x_rotate < HOLD_CONSTRAIN_ANGLE) {
        x_rotate += HOLD_SPEED;
        swingForce = std::min(swingForce + SWING_FORCE_INCREMENT, MAX_SWING_FORCE);
        DISTANCE_TOLERANCE = BASIC_TOLERANCE + (x_rotate / 15);
      }
      if (glm::radians(x_rotate) >= HOLD_CONSTRAIN_ANGLE) {
        x_rotate = HOLD_CONSTRAIN_ANGLE;
      }
    }
    if (isSwing) {
      if (delta_x_rotate == angle::COUNTERCLOCKWISE) {
        x_rotate -= SWING_SPEED;
        detectAndApplyForce();
      } else if (delta_x_rotate == angle::CLOCKWISE) {
        x_rotate += SWING_SPEED;
      }
      if (x_rotate <= CONSTRAIN_ANGLE) {
        delta_x_rotate = angle::CLOCKWISE;
      } else if (delta_x_rotate == angle::CLOCKWISE && x_rotate >= 0.0f) {
        x_rotate = 0.0f;
        isSwing = false;
        delta_x_rotate = angle::NONE;
        swingForce = 0.0f;
        isHit = false;
      }
    }

    // glm::mat4 putterTransform = glm::translate(glm::mat4(1.0f), xzpos) *
    //                             glm::rotate(glm::mat4(1.0f), glm::radians(y_rotate), glm::vec3(0.0f, 1.0f, 0.0f)) *
    //                             glm::rotate(glm::mat4(1.0f), glm::radians(x_rotate), glm::vec3(1.0f, 0.0f, 0.0f)) *
    //                             glm::translate(glm::mat4(1.0f), glm::vec3(0.0f, -6.0f, 0.0f));
    // glm::vec3 putterCenter = glm::vec3(putterTransform * glm::vec4(0.0f, 0.0f, 0.0f, 1.0f));

    // float distance = glm::length(putterCenter - ballpos);

    // if (distance < TOLERATE && isSwing) {
    //   isHit = true;
    //   delta_ballpos = scalar::PLUS;
    //   delta_ball_rotate = angle::CLOCKWISE;

    //   ball_forward = glm::normalize(glm::vec3(forward_vector.x, 0.0f, forward_vector.z));
    //   ball_rotate_normal = glm::normalize(glm::cross(glm::vec3(0.0f, 1.0f, 0.0f), ball_forward));
    //   startpos = ballpos;
    // }

    // if (isHit) {
    //   ballpos += ball_forward * BALL_MOVING_SPEED;

    //   glm::mat4 rotationMatrix = glm::rotate(glm::mat4(1.0f), glm::radians(ROLLING_SPEED), ball_rotate_normal);
    //   currentRotation = rotationMatrix * currentRotation;

    //   float distance = glm::length(ballpos - startpos);

    //   if (distance >= DISTANCE_TOLERANCE) {
    //     isHit = false;
    //     delta_ballpos = scalar::NONE;
    //     delta_ball_rotate = angle::NONE;
    //     if (ballpos.x > 35.0f || ballpos.x < -35.0f || ballpos.z > 35.0f || ballpos.z < -35.0f) {
    //     ballpos = glm::vec3(2.0f, 0.25f, 2.0f);
    //     }

    //   }
    // }

    transform();
    updatePhysics(0.0167);

#ifdef __APPLE__
    // Some platform need explicit glFlush
    glFlush();
#endif
    glfwSwapBuffers(window);
  }
  return 0;
}

void keyCallback(GLFWwindow* window, int key, int, int action, int) {
  // There are three actions: press, release, hold(repeat)
  if (action == GLFW_REPEAT) return;

  // Press ESC to close the window.
  if (key == GLFW_KEY_ESCAPE) {
    glfwSetWindowShouldClose(window, GLFW_TRUE);
    return;
  }
  if (action == GLFW_PRESS || action == GLFW_RELEASE) {
    switch (key) {
      case GLFW_KEY_F9: {
        if (glfwGetInputMode(window, GLFW_CURSOR) == GLFW_CURSOR_DISABLED) {
          // Show the mouse cursor
          glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_NORMAL);
        } else {
          // Hide the mouse cursor
          glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
        }
        break;
      }
      case GLFW_KEY_UP: {
        if (action == GLFW_PRESS) {
          delta_xzpos = scalar::PLUS;
        } else if (action == GLFW_RELEASE) {
          delta_xzpos = scalar::NONE;
        }
        break;
      }
      case GLFW_KEY_DOWN: {
        if (action == GLFW_PRESS) {
          delta_xzpos = scalar::MINUS;
        } else if (action == GLFW_RELEASE) {
          delta_xzpos = scalar::NONE;
        }
        break;
      }
      case GLFW_KEY_LEFT: {
        if (action == GLFW_PRESS) {
          delta_y_rotate = angle::COUNTERCLOCKWISE;
        } else if (action == GLFW_RELEASE) {
          delta_y_rotate = angle::NONE;
        }
        break;
      }
      case GLFW_KEY_RIGHT: {
        if (action == GLFW_PRESS) {
          delta_y_rotate = angle::CLOCKWISE;
        } else if (action == GLFW_RELEASE) {
          delta_y_rotate = angle::NONE;
        }
        break;
      }
      case GLFW_KEY_O: {
        if (action == GLFW_PRESS) {
          delta_ypos = scalar::PLUS;
        } else if (action == GLFW_RELEASE) {
          delta_ypos = scalar::NONE;
        }
        break;
      }
      case GLFW_KEY_L: {
        if (action == GLFW_PRESS) {
          delta_ypos = scalar::MINUS;
        } else if (action == GLFW_RELEASE) {
          delta_ypos = scalar::NONE;
        }
        break;
      }
      case GLFW_KEY_P: {
        if (action == GLFW_PRESS) {
          cameraLock = cameraLock ? false : true;
        }
        break;
      }
      case GLFW_KEY_I: {
        if (action == GLFW_PRESS) {
          goToBall = true;
        }
        break;
      }
      case GLFW_KEY_SPACE: {
        if (action == GLFW_PRESS && !isSwing) {
          isHold = true;
          delta_x_rotate = angle::CLOCKWISE;
        } else if (action == GLFW_RELEASE && isHold) {
          isHold = false;
          isSwing = true;
          delta_x_rotate = angle::COUNTERCLOCKWISE;
        }
        break;
      }
      case GLFW_KEY_R: {
        if (action == GLFW_PRESS) {
          reset = true;
        }
      }
      default:
        break;
    }
  }
}
void resizeCallback(GLFWwindow* window, int width, int height) {
  OpenGLContext::framebufferResizeCallback(window, width, height);
  auto ptr = static_cast<Camera*>(glfwGetWindowUserPointer(window));
  if (ptr) {
    ptr->updateProjectionMatrix(OpenGLContext::getAspectRatio());
  }
}

void initOpenGL() {
  // Initialize OpenGL context, details are wrapped in class.
#ifdef __APPLE__
  // MacOS need explicit request legacy support
  OpenGLContext::createContext(41, GLFW_OPENGL_ANY_PROFILE);
#else
  OpenGLContext::createContext(41, GLFW_OPENGL_ANY_PROFILE);
//  OpenGLContext::createContext(43, GLFW_OPENGL_COMPAT_PROFILE);
#endif
  GLFWwindow* window = OpenGLContext::getWindow();
  glfwSetKeyCallback(window, keyCallback);
  glfwSetFramebufferSizeCallback(window, resizeCallback);
  glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
#ifndef NDEBUG
  OpenGLContext::printSystemInfo();
  // This is useful if you want to debug your OpenGL API calls.
  OpenGLContext::enableDebugCallback();
#endif
}
