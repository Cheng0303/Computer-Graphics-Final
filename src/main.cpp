#include <algorithm>
#include <iostream>
#include <memory>
#include <vector>

#include <GLFW/glfw3.h>
#define GLAD_GL_IMPLEMENTATION
#include <glad/gl.h>
#undef GLAD_GL_IMPLEMENTATION
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
#define BALL_MOVING_SPEED 0.05f
#define SWING_SPEED 2.f
#define ROLLING_SPEED 5.0f
#define HOLD_SPEED 0.5f

#define CONSTRAIN_ANGLE -45
#define HOLD_CONSTRAIN_ANGLE 45

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
// bonus switch
bool bonus = false;

// the scalar for the putter translation
scalar delta_xzpos = scalar::NONE;
// the scalar for the ball translation
scalar delta_ballpos = scalar::NONE;
// the scalar for the ball rotation
angle delta_ball_rotate = angle::NONE;
// the scalar for the putter swing
angle delta_x_rotate = angle::NONE;
// the scalar for the putter yaw
angle delta_y_rotate = angle::NONE;

// the angle for the ball rotation
float ball_rotate = 0.0f;
// the angle for the putter swing
float x_rotate = 0.0f;
// the angle for the yaw rotation
float y_rotate = 0.0f;

// the position of the putter
glm::vec3 xzpos(0.0f, 6.0f, 0.0f);
// the forward vector for putter
glm::vec3 forward_vector(0.0f, 0.0f, 1.0f);
// the forward vector for the ball translation
glm::vec3 ball_forward(0.0f, 0.0f, 1.0f);
// x,y,z coordinate for ball rotation
glm::vec3 ball_rotate_normal(0, 1, 0);
// the position of the ball
glm::vec3 ballpos(2.0f, 0.25f, 2.0f);
// the position of the ball when it is hit at the start
glm::vec3 startpos(0, 0, 0);

// all the former rotations for the ball
glm::mat4 currentRotation = glm::identity<glm::mat4>();

void initOpenGL();
void resizeCallback(GLFWwindow* window, int width, int height);
void keyCallback(GLFWwindow* window, int key, int, int action, int);

Context ctx;

Material mFlatwhite;
Material mShinyred;
Material mClearblue;

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
  //ctx.programs.push_back(new ExampleProgram(&ctx));
  ctx.programs.push_back(new LightProgram(&ctx));
  //ctx.programs.push_back(new BasicProgram(&ctx));

  for (auto iter = ctx.programs.begin(); iter != ctx.programs.end(); iter++) {
    if (!(*iter)->load()) {
      std::cout << "Load program fail, force terminate" << std::endl;
      exit(1);
    }
  }
  glUseProgram(0);
}

Model* loadBall() {
  Model* m = Model::fromObjectFile("../assets/models/ball/ball.obj");
  m->textures.push_back(createTexture("../assets/models/ball/ball_tex.jpg"));
  //m->textures.push_back(createTexture("../assets/models/Vase/Vase2.jpg"));
  m->modelMatrix = glm::scale(m->modelMatrix, glm::vec3(0.1f, 0.1f, 0.1f));
  ctx.models.push_back(m);
  return m;
}

Model* loadputter() {
  Model* m = Model::fromObjectFile("../assets/models/putter/putter.obj");
  m->textures.push_back(createTexture("../assets/models/Vase/Vase2.jpg"));
  m->modelMatrix = glm::scale(m->modelMatrix, glm::vec3(0.5f, 0.5f, 0.5f));
  ctx.models.push_back(m);
  
  return m;
}

Model* generateGround(int width, int depth) {
  Model* m = new Model();

  float scale = 0.1f;       // 控制地形平滑程度
  float amplitude = 2.0f;  // 控制地形高度
  std::vector<float> heightmap = generatePerlinHeightmap(width, depth, scale, amplitude);


  // 添加地形的索引 (與之前的邏輯相同)
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
      m->positions.push_back(z+1);
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

      m->texcoords.push_back((float)x / width);
      m->texcoords.push_back((float)z / depth);
      m->texcoords.push_back((float)x / width);
      m->texcoords.push_back((float)z / depth);
      m->texcoords.push_back((float)x / width);
      m->texcoords.push_back((float)z / depth);

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

      m->texcoords.push_back((float)x / width);
      m->texcoords.push_back((float)z / depth);
      m->texcoords.push_back((float)x / width);
      m->texcoords.push_back((float)z / depth);
      m->texcoords.push_back((float)x / width);
      m->texcoords.push_back((float)z / depth);
    }
  }

  m->textures.push_back(createTexture("../assets/models/ground/grass.jpg"));
  m->numVertex = m->positions.size() / 3;
  ctx.models.push_back(m);
  return m;
}

void loadModels() {
  
  //Model* m = new Model();
  //float pos[] = {-1, 0, -1, -1, 0, 1, 1, 0, 1, 1, 0, -1};
  //float nor[] = {0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f};
  //float tx[] = {0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f};
  //for (int i = 0; i < 12; i++) {
  //  m->positions.push_back(pos[i]);
  //  m->normals.push_back(nor[i]);
  //  if (i < 8) m->texcoords.push_back(tx[i]);
  //}
  //m->textures.push_back(createTexture("../assets/models/Vase/Vase2.jpg"));
  //m->numVertex = 4;
  //m->drawMode = GL_QUADS;
  //ctx.models.push_back(m);
  Model* ground = generateGround(100, 100);
  Model* ball = loadBall(); 
  Model* putter = loadputter();
}

void setupObjects() {
  //ground
  ctx.objects.push_back(new Object(0, glm::translate(glm::identity<glm::mat4>(), glm::vec3(0.0, 0.0, 0.0))));
  //ball
  ctx.objects.push_back(new Object(1, glm::translate(glm::identity<glm::mat4>(), glm::vec3(0.0, 0.0, 0.0))));
  //putter
  ctx.objects.push_back(new Object(2, glm::translate(glm::identity<glm::mat4>(), glm::vec3(0.0, 0.0, 0.0))));
}

void transform() {
    // ball transform
    glm::mat4 ball_transform = glm::identity<glm::mat4>();
    ball_transform = glm::translate(ball_transform, ballpos);
    ball_transform *= currentRotation;
    ball_transform = glm::scale(ball_transform, glm::vec3(0.5f, 0.5f, 0.5f));
    ctx.objects[1]->transformMatrix = ball_transform;

    // putter transform;
    glm::mat4 putter_transform = glm::identity<glm::mat4>();
    putter_transform = glm::translate(putter_transform, xzpos);
    putter_transform = glm::rotate(putter_transform, glm::radians(y_rotate), glm::vec3(0.0f, 1.0f, 0.0f));
    putter_transform = glm::rotate(putter_transform, glm::radians(x_rotate), glm::vec3(1.0f, 0.0f, 0.0f));
    putter_transform = glm::translate(putter_transform, glm::vec3(0.0f, -6.0f, 0.0f));
    putter_transform = glm::scale(putter_transform, glm::vec3(0.5f, 0.5f, 0.5f));
    ctx.objects[2]->transformMatrix = putter_transform;
}

int main() {
  initOpenGL();
  GLFWwindow* window = OpenGLContext::getWindow();
  glfwSetWindowTitle(window, "HW2 - 111652046");

  // Init Camera helper
  Camera camera(glm::vec3(0, 2, 5));
  camera.initialize(OpenGLContext::getAspectRatio());
  // Store camera as glfw global variable for callbacks use
  glfwSetWindowUserPointer(window, &camera);
  ctx.camera = &camera;
  ctx.window = window;

  loadMaterial();
  loadModels();
  loadPrograms();
  setupObjects();

  // Main rendering loop
  while (!glfwWindowShouldClose(window)) {

    // Polling events.
    glfwPollEvents();
    // Update camera position and view
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

    if (delta_xzpos == scalar::PLUS) {
      xzpos += forward_vector * MOVING_SPEED;
    } else if (delta_xzpos == scalar::MINUS) {
      xzpos -= forward_vector * MOVING_SPEED;
    }

    if (delta_y_rotate == angle::CLOCKWISE) {
      y_rotate -= ROTATE_SPEED;
    } else if (delta_y_rotate == angle::COUNTERCLOCKWISE) {
      y_rotate += ROTATE_SPEED;
    }

    float radians = ANGLE_TO_RADIAN(y_rotate);
    forward_vector = glm::normalize(glm::vec3(sinf(radians), 0.0f, cosf(radians)));

    if (isHold) {
      if (delta_x_rotate == angle::CLOCKWISE && x_rotate < HOLD_CONSTRAIN_ANGLE) {
        x_rotate += HOLD_SPEED;
        DISTANCE_TOLERANCE = BASIC_TOLERANCE + (x_rotate / 15);
      }
      if (glm::radians(x_rotate) >= HOLD_CONSTRAIN_ANGLE) {
        x_rotate = HOLD_CONSTRAIN_ANGLE;
      }
    }
    if (isSwing) {
      if (delta_x_rotate == angle::COUNTERCLOCKWISE) {
        x_rotate -= SWING_SPEED;
      } else if (delta_x_rotate == angle::CLOCKWISE) {
        x_rotate += SWING_SPEED;
      }
      if (x_rotate <= CONSTRAIN_ANGLE) {
        delta_x_rotate = angle::CLOCKWISE;
      } else if (delta_x_rotate == angle::CLOCKWISE && x_rotate >= 0.0f) {
        x_rotate = 0.0f;
        isSwing = false;
        delta_x_rotate = angle::NONE;
      }
    }

    glm::mat4 putterTransform = glm::translate(glm::mat4(1.0f), xzpos) *
                                glm::rotate(glm::mat4(1.0f), glm::radians(y_rotate), glm::vec3(0.0f, 1.0f, 0.0f)) *
                                glm::rotate(glm::mat4(1.0f), glm::radians(x_rotate), glm::vec3(1.0f, 0.0f, 0.0f)) *
                                glm::translate(glm::mat4(1.0f), glm::vec3(0.0f, -6.0f, 0.0f));
    glm::vec3 putterCenter = glm::vec3(putterTransform * glm::vec4(0.0f, 0.0f, 0.0f, 1.0f));

    float distance = glm::length(putterCenter - ballpos);

    if (distance < TOLERATE && isSwing) {
      isHit = true;
      delta_ballpos = scalar::PLUS;
      delta_ball_rotate = angle::CLOCKWISE;

      ball_forward = glm::normalize(glm::vec3(forward_vector.x, 0.0f, forward_vector.z));
      ball_rotate_normal = glm::normalize(glm::cross(glm::vec3(0.0f, 1.0f, 0.0f), ball_forward));
      startpos = ballpos;
    }

    if (isHit) {
      ballpos += ball_forward * BALL_MOVING_SPEED;

      glm::mat4 rotationMatrix = glm::rotate(glm::mat4(1.0f), glm::radians(ROLLING_SPEED), ball_rotate_normal);
      currentRotation = rotationMatrix * currentRotation;

      float distance = glm::length(ballpos - startpos);
      
      if (distance >= DISTANCE_TOLERANCE) {
        isHit = false;
        delta_ballpos = scalar::NONE;
        delta_ball_rotate = angle::NONE;
        if (ballpos.x > 35.0f || ballpos.x < -35.0f || ballpos.z > 35.0f || ballpos.z < -35.0f) {
        ballpos = glm::vec3(2.0f, 0.25f, 2.0f);
        }
        
      }
    }

    transform();


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
  OpenGLContext::createContext(21, GLFW_OPENGL_ANY_PROFILE);
#else
  OpenGLContext::createContext(21, GLFW_OPENGL_ANY_PROFILE);
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