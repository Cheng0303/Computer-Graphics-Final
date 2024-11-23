#include <algorithm>
#include <iostream>
#include <memory>
#include <vector>

#include <GLFW/glfw3.h>
#define GLAD_GL_IMPLEMENTATION
#include <glad/gl.h>
#undef GLAD_GL_IMPLEMENTATION
#include <glm/glm.hpp>

#include "camera.h"
#include "opengl_context.h"
#include "utils.h"

#define ANGLE_TO_RADIAN(x) (float)((x)*M_PI / 180.0f)
#define RADIAN_TO_ANGLE(x) (float)((x)*180.0f / M_PI)

#define CIRCLE_SEGMENT 64
#define SECTOR 36
#define STACK 18

#define ROTATE_SPEED 1.0f
#define MOVING_SPEED ROTATE_SPEED / 20.f
#define BALL_MOVING_SPEED 0.05f
#define SWING_SPEED 2.0f
#define ROLLING_SPEED 5.0f
#define HOLD_SPEED 0.5f

#define CONSTRAIN_ANGLE -45
#define HOLD_CONSTRAIN_ANGLE 45

#define SILVER 0.75, 0.75, 0.75
#define CYAN 0, 1, 1
#define PURPLE 1, 0, 1

#define TOLERATE 0.75f
#define DISTANCE_TOLERANCE 3
float BONUS_DISTANCE_TOLERANCE = 3;
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

void resizeCallback(GLFWwindow* window, int width, int height) {
  OpenGLContext::framebufferResizeCallback(window, width, height);
  auto ptr = static_cast<Camera*>(glfwGetWindowUserPointer(window));
  if (ptr) {
    ptr->updateProjectionMatrix(OpenGLContext::getAspectRatio());
  }
}

void keyCallback(GLFWwindow* window, int key, int, int action, int) {
  // There are three actions: press, release, hold(repeat)
  if (action == GLFW_REPEAT) return;

  // Press ESC to close the window.
  if (key == GLFW_KEY_ESCAPE) {
    glfwSetWindowShouldClose(window, GLFW_TRUE);
    return;
  }

  switch (key) {
    case GLFW_KEY_UP:
      if (action == GLFW_PRESS) {
        delta_xzpos = scalar::PLUS;
      } else if (action == GLFW_RELEASE) {
        delta_xzpos = scalar::NONE;
      }
      break;

    case GLFW_KEY_DOWN:
      if (action == GLFW_PRESS) {
        delta_xzpos = scalar::MINUS;
      } else if (action == GLFW_RELEASE) {
        delta_xzpos = scalar::NONE;
      }
      break;

    case GLFW_KEY_LEFT:
      if (action == GLFW_PRESS) {
        delta_y_rotate = angle::COUNTERCLOCKWISE;
      } else if (action == GLFW_RELEASE) {
        delta_y_rotate = angle::NONE;
      }
      break;

    case GLFW_KEY_RIGHT:
      if (action == GLFW_PRESS) {
        delta_y_rotate = angle::CLOCKWISE;
      } else if (action == GLFW_RELEASE) {
        delta_y_rotate = angle::NONE;
      }
      break;

    case GLFW_KEY_SPACE:
      if (!bonus && action == GLFW_PRESS && !isSwing) {
        isSwing = true;
        delta_x_rotate = angle::COUNTERCLOCKWISE;
      }
      else if (bonus && action == GLFW_PRESS && !isSwing) {
        isHold = true;
        delta_x_rotate = angle::CLOCKWISE;
      }
      else if (bonus && action == GLFW_RELEASE && isHold) {
        isHold = false;
        isSwing = true;
        delta_x_rotate = angle::COUNTERCLOCKWISE;
      }
      break;
    
    case GLFW_KEY_B:
      if (action == GLFW_PRESS) {
        bonus = bonus? false : true;
      }
      break;

    default:
      break;
  }
}

void initOpenGL() {
  // Initialize OpenGL context, details are wrapped in class.
#ifdef __APPLE__
  // MacOS need explicit request legacy support
  OpenGLContext::createContext(21, GLFW_OPENGL_ANY_PROFILE);
#else
  // OpenGLContext::createContext(21, GLFW_OPENGL_ANY_PROFILE);
  OpenGLContext::createContext(43, GLFW_OPENGL_COMPAT_PROFILE);
#endif
  GLFWwindow* window = OpenGLContext::getWindow();
  /* TODO#0: Change window title to "HW1 - `your student id`"
   *        Ex. HW1 - 311550000
   */
  glfwSetWindowTitle(window, "HW1 - 111550020");
  glfwSetKeyCallback(window, keyCallback);
  glfwSetFramebufferSizeCallback(window, resizeCallback);
  glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
#ifndef NDEBUG
  OpenGLContext::printSystemInfo();
  // This is useful if you want to debug your OpenGL API calls.
  OpenGLContext::enableDebugCallback();
#endif
}

void drawUnitSphere() {
  float sectorStep = 2 * M_PI / SECTOR;
  float stackStep = M_PI / STACK;

  glBegin(GL_TRIANGLE_STRIP);
  for (int i = 0; i < STACK; ++i) {
    float stackAngle1 = M_PI / 2 - i * stackStep;
    float stackAngle2 = M_PI / 2 - (i + 1) * stackStep;

    float xy1 = cos(stackAngle1);
    float z1 = sin(stackAngle1);
    float xy2 = cos(stackAngle2);
    float z2 = sin(stackAngle2);

    for (int j = 0; j <= SECTOR; ++j) {
      float sectorAngle = j * sectorStep;

      float x1 = xy1 * cos(sectorAngle);
      float y1 = xy1 * sin(sectorAngle);
      float x2 = xy2 * cos(sectorAngle);
      float y2 = xy2 * sin(sectorAngle);

      if (i < STACK / 2) {
        glColor3f(CYAN);
      } else {
        glColor3f(PURPLE);
      }

      glNormal3f(x1, y1, z1);
      glVertex3f(x1, y1, z1);

      glNormal3f(x2, y2, z2);
      glVertex3f(x2, y2, z2);
    }
  }
  glEnd();
}

void drawUnitCylinder() {
  float angleStep = 2 * M_PI / CIRCLE_SEGMENT;

  glBegin(GL_TRIANGLES);
  for (int i = 0; i < CIRCLE_SEGMENT; ++i) {
    float angle1 = i * angleStep;
    float angle2 = (i + 1) * angleStep;

    float x1 = cos(angle1);
    float z1 = sin(angle1);
    float x2 = cos(angle2);
    float z2 = sin(angle2);

    glColor3f(SILVER);

    glNormal3f(x1, 0.0f, z1);
    glVertex3f(x1, -0.5f, z1);
    glVertex3f(x1, 0.5f, z1);
    glNormal3f(x2, 0.0f, z2);
    glVertex3f(x2, 0.5f, z2);

    glNormal3f(x1, 0.0f, z1);
    glVertex3f(x1, -0.5f, z1);
    glNormal3f(x2, 0.0f, z2);
    glVertex3f(x2, 0.5f, z2);
    glVertex3f(x2, -0.5f, z2);
  }
  glEnd();

  glBegin(GL_TRIANGLE_FAN);
  glNormal3f(0.0f, 1.0f, 0.0f);
  glVertex3f(0.0f, 0.5f, 0.0f);
  for (int i = CIRCLE_SEGMENT; i >= 0; --i) {
    float angle = i * angleStep;
    glVertex3f(cos(angle), 0.5f, sin(angle));
  }
  glEnd();

  glBegin(GL_TRIANGLE_FAN);
  glNormal3f(0.0f, -1.0f, 0.0f);
  glVertex3f(0.0f, -0.5f, 0.0f);
  for (int i = 0; i <= CIRCLE_SEGMENT; ++i) {
    float angle = i * angleStep;
    glVertex3f(cos(angle), -0.5f, sin(angle));
  }
  glEnd();
}

void light() {
  GLfloat light_specular[] = {0.6, 0.6, 0.6, 1};
  GLfloat light_diffuse[] = {0.6, 0.6, 0.6, 1};
  GLfloat light_ambient[] = {0.4, 0.4, 0.4, 1};
  GLfloat light_position[] = {50.0, 75.0, 80.0, 1.0};
  // z buffer enable
  glEnable(GL_DEPTH_TEST);
  // enable lighting
  glEnable(GL_LIGHTING);
  glShadeModel(GL_SMOOTH);
  glEnable(GL_COLOR_MATERIAL);
  glColorMaterial(GL_FRONT, GL_AMBIENT_AND_DIFFUSE);
  glEnable(GL_NORMALIZE);
  // set light property
  glEnable(GL_LIGHT0);
  glLightfv(GL_LIGHT0, GL_POSITION, light_position);
  glLightfv(GL_LIGHT0, GL_DIFFUSE, light_diffuse);
  glLightfv(GL_LIGHT0, GL_SPECULAR, light_specular);
  glLightfv(GL_LIGHT0, GL_AMBIENT, light_ambient);
}

int main() {
  std::cout << "test" << std::endl;
  initOpenGL();
  GLFWwindow* window = OpenGLContext::getWindow();

  // Init Camera helper
  Camera camera(glm::vec3(0, 5, 10));
  camera.initialize(OpenGLContext::getAspectRatio());
  // Store camera as glfw global variable for callbasks use
  glfwSetWindowUserPointer(window, &camera);

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
    // Projection Matrix
    glMatrixMode(GL_PROJECTION);
    glLoadMatrixf(camera.getProjectionMatrix());
    // ModelView Matrix
    glMatrixMode(GL_MODELVIEW);
    glLoadMatrixf(camera.getViewMatrix());

#ifndef DISABLE_LIGHT
    glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
    glClear(GL_COLOR_BUFFER_BIT);
    glClearDepth(1.0f);
    light();
#endif

    /* TODO#4-1: Update putter
     *       1. Update xzpos with forward_vector.
     *       2. Update y_rotate.
     *       3. Update x_rotate(Swing). Remember that the constrain of `CONSTRAIN_ANGLE`
     *       4. Calculate forward_vector for next rendering loop.
     *
     * Hint:
     *      glm::normalize (
     * Note:
     *       You can use `ROTATE_SPEED` and `MOVING_SPEED` and `SWING_SPEED`
     * as the speed constant. If the rotate/movement/swing speed is too slow or too fast, please change `ROTATE_SPEED`
     * or `MOVING_SPEED` or `SWING_SPEED` value. You should finish keyCallback first and use variables include
     * "delta_" to update.
     */
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

    if (bonus && isHold) {
        if (delta_x_rotate == angle::CLOCKWISE && x_rotate < HOLD_CONSTRAIN_ANGLE) {
          x_rotate += HOLD_SPEED;
          BONUS_DISTANCE_TOLERANCE = DISTANCE_TOLERANCE + (x_rotate / 15);
        }
        if (x_rotate >= HOLD_CONSTRAIN_ANGLE) {
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

    /* TODO#4-2: Hit detection and Update golfball
     *       1. Find the position of the hitting part and the ball to calculate distance
     *       2. Determine whether the ball is hit(distance < TOLERANCE && putter is swinging)
     *          
     *       if the ball is hit:
     *       3. Update ballpos with ball_forward.
     *       4. Update ball_rotate.
     *       5. Calculate the new ball_forward with forward_vector.
     *       6. Calculate the new ball_rotate_normal
     *       7. Calculate the new startpos
     * 
     *       Implement ball stop:
     *       8. Determine whether the ball has to stop(distance >= DISTANCE_TOLERANCE)
     *       9. Update currentRotation
     * Hint:
     *      glm::mat4
     *      glm::translate
     *      glm::rotate
     *      glm::scale
     *      glm::length
     *      glm::normalize (
     * Note:
     *       You can use `BALL_MOVING_SPEED` and `ROLLING_SPEED`
     * as the speed constant. If the rotate/movement speed is too slow or too fast, please change `ROTATE_SPEED`
     * or `BALL_MOVING_SPEED` value. You should finish keyCallback first and use variables include
     * "delta_" to update.
     */
    glm::mat4 putterTransform = glm::translate(glm::mat4(1.0f), xzpos) *
        glm::rotate(glm::mat4(1.0f), glm::radians(y_rotate), glm::vec3(0.0f, 1.0f, 0.0f)) *
        glm::rotate(glm::mat4(1.0f), glm::radians(x_rotate), glm::vec3(1.0f, 0.0f, 0.0f)) *
        glm::translate(glm::mat4(1.0f), glm::vec3(-0.5f, -5.6f, 0.0f));
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
        if (!bonus && distance >= DISTANCE_TOLERANCE) {
            isHit = false;
            delta_ballpos = scalar::NONE;
            delta_ball_rotate = angle::NONE;
        }
        else if (bonus) {
            if (distance >= BONUS_DISTANCE_TOLERANCE) {
                isHit = false;
                delta_ballpos = scalar::NONE;
                delta_ball_rotate = angle::NONE;
                if (ballpos.x > 35.0f || ballpos.x < -35.0f || ballpos.z > 35.0f || ballpos.z < -35.0f) {
                    ballpos = glm::vec3(2.0f, 0.25f, 2.0f);
                }
            }
        }
    }

    // Render a white plane
    glPushMatrix();
    glScalef(7, 1, 7);
    glBegin(GL_TRIANGLE_STRIP);
    glColor3f(1.0f, 1.0f, 1.0f);
    glNormal3f(0.0f, 1.0f, 0.0f);
    glVertex3f(-5.0f, 0.0f, -5.0f);
    glVertex3f(-5.0f, 0.0f, 5.0f);
    glVertex3f(5.0f, 0.0f, -5.0f);
    glVertex3f(5.0f, 0.0f, 5.0f);
    glEnd();
    glPopMatrix();

    /* TODO#3-1: Render the putter
     *       1. Do rotate and translate for the putter.
     *       2. Render the hitting part.
     *       3. Render the rod part.
     * Hint:
     *       glPushMatrix/glPopMatrix (https://registry.khronos.org/OpenGL-Refpages/gl2.1/xhtml/glPushMatrix.xml)
     *       glRotatef (https://registry.khronos.org/OpenGL-Refpages/gl2.1/xhtml/glRotate.xml)
     *       glTranslatef (https://registry.khronos.org/OpenGL-Refpages/gl2.1/xhtml/glTranslate.xml)
     *       glColor3f (https://registry.khronos.org/OpenGL-Refpages/gl2.1/xhtml/glColor.xml)
     *       glScalef (https://registry.khronos.org/OpenGL-Refpages/gl2.1/xhtml/glScale.xml)
     * Note:
     *       The size of every component can refer to `Components size definition` section
     *       You may implement drawUnitCylinder first
     *       You should try and think carefully about changing the order of rotate and translate
     *       You can just use initial value for rotate and translate the whole putter before finishing TODO#3 and TODO#4
     */

    //握把
    glPushMatrix();
    glTranslatef(xzpos.x, xzpos.y, xzpos.z);
    glRotatef(y_rotate, 0.0f, 1.0f, 0.0f);  
    glRotatef(x_rotate, 1.0f, 0.0f, 0.0f);
    glTranslatef(0.0f, -3.0f, 0.0f);
    glScalef(0.15f, 6.0f, 0.15f);
    drawUnitCylinder();
    glPopMatrix();

    //桿頭
    glPushMatrix();
    glTranslatef(xzpos.x, xzpos.y, xzpos.z);
    glRotatef(y_rotate, 0.0f, 1.0f, 0.0f);
    glRotatef(x_rotate, 1.0f, 0.0f, 0.0f);
    glTranslatef(-0.5f, -5.6f, 0.0f);
    glRotatef(90.0f, 0.0f, 0.0f, 1.0f);
    glRotatef(90.0f, 1.0f, 0.0f, 0.0f);
    glScalef(0.4f, 0.5f, 1.0f);
    drawUnitCylinder();
    glPopMatrix();

    /* TODO#3-2: Render the golf ball
     *       1. Do rotate and translate for the ball.
     *       2. Render the ball.
     * Hint:
     *       glPushMatrix/glPopMatrix (https://registry.khronos.org/OpenGL-Refpages/gl2.1/xhtml/glPushMatrix.xml)
     *       glRotatef (https://registry.khronos.org/OpenGL-Refpages/gl2.1/xhtml/glRotate.xml)
     *       glTranslatef (https://registry.khronos.org/OpenGL-Refpages/gl2.1/xhtml/glTranslate.xml)
     *       glColor3f (https://registry.khronos.org/OpenGL-Refpages/gl2.1/xhtml/glColor.xml)
     *       glScalef (https://registry.khronos.org/OpenGL-Refpages/gl2.1/xhtml/glScale.xml)
     *       glMultMatrixf(https://registry.khronos.org/OpenGL-Refpages/gl2.1/xhtml/glMultMatrix.xml)
     *       glm::value_ptr()
     * Note:
     *       The size of every component can refer to `Components size definition` section
     *       You may implement drawUnitSphere first
     *       You should try and think carefully about changing the order of rotate and translate
     *       You can just use initial value for rotate and translate the whole putter before finishing TODO#3 and TODO#4
     */
    glPushMatrix();
    glTranslatef(ballpos.x, ballpos.y, ballpos.z);
    glMultMatrixf(glm::value_ptr(currentRotation));
    glScalef(0.25f, 0.25f, 0.25f);
    drawUnitSphere();
    glPopMatrix();

#ifdef __APPLE__
    // Some platform need explicit glFlush
    glFlush();
#endif
    glfwSwapBuffers(window);
  }
  return 0;
}
