# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.5/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.5/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build

# Include any dependencies generated for this target.
include extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/compiler_depend.make

# Include the progress variables for this target.
include extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/progress.make

# Include the compile flags for this target's objects.
include extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/flags.make

extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/BasicExample.o: extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/flags.make
extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/BasicExample.o: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/BasicDemo/BasicExample.cpp
extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/BasicExample.o: extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/BasicExample.o"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/BasicDemo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/BasicExample.o -MF CMakeFiles/AppBasicExampleGui.dir/BasicExample.o.d -o CMakeFiles/AppBasicExampleGui.dir/BasicExample.o -c /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/BasicDemo/BasicExample.cpp

extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/BasicExample.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/AppBasicExampleGui.dir/BasicExample.i"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/BasicDemo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/BasicDemo/BasicExample.cpp > CMakeFiles/AppBasicExampleGui.dir/BasicExample.i

extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/BasicExample.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/AppBasicExampleGui.dir/BasicExample.s"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/BasicDemo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/BasicDemo/BasicExample.cpp -o CMakeFiles/AppBasicExampleGui.dir/BasicExample.s

extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/StandaloneMain/main_opengl_single_example.o: extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/flags.make
extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/StandaloneMain/main_opengl_single_example.o: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/StandaloneMain/main_opengl_single_example.cpp
extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/StandaloneMain/main_opengl_single_example.o: extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/StandaloneMain/main_opengl_single_example.o"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/BasicDemo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/StandaloneMain/main_opengl_single_example.o -MF CMakeFiles/AppBasicExampleGui.dir/__/StandaloneMain/main_opengl_single_example.o.d -o CMakeFiles/AppBasicExampleGui.dir/__/StandaloneMain/main_opengl_single_example.o -c /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/StandaloneMain/main_opengl_single_example.cpp

extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/StandaloneMain/main_opengl_single_example.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/AppBasicExampleGui.dir/__/StandaloneMain/main_opengl_single_example.i"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/BasicDemo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/StandaloneMain/main_opengl_single_example.cpp > CMakeFiles/AppBasicExampleGui.dir/__/StandaloneMain/main_opengl_single_example.i

extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/StandaloneMain/main_opengl_single_example.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/AppBasicExampleGui.dir/__/StandaloneMain/main_opengl_single_example.s"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/BasicDemo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/StandaloneMain/main_opengl_single_example.cpp -o CMakeFiles/AppBasicExampleGui.dir/__/StandaloneMain/main_opengl_single_example.s

extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/OpenGLGuiHelper.o: extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/flags.make
extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/OpenGLGuiHelper.o: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/ExampleBrowser/OpenGLGuiHelper.cpp
extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/OpenGLGuiHelper.o: extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/OpenGLGuiHelper.o"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/BasicDemo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/OpenGLGuiHelper.o -MF CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/OpenGLGuiHelper.o.d -o CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/OpenGLGuiHelper.o -c /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/ExampleBrowser/OpenGLGuiHelper.cpp

extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/OpenGLGuiHelper.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/OpenGLGuiHelper.i"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/BasicDemo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/ExampleBrowser/OpenGLGuiHelper.cpp > CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/OpenGLGuiHelper.i

extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/OpenGLGuiHelper.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/OpenGLGuiHelper.s"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/BasicDemo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/ExampleBrowser/OpenGLGuiHelper.cpp -o CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/OpenGLGuiHelper.s

extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/GL_ShapeDrawer.o: extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/flags.make
extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/GL_ShapeDrawer.o: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/ExampleBrowser/GL_ShapeDrawer.cpp
extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/GL_ShapeDrawer.o: extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/GL_ShapeDrawer.o"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/BasicDemo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/GL_ShapeDrawer.o -MF CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/GL_ShapeDrawer.o.d -o CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/GL_ShapeDrawer.o -c /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/ExampleBrowser/GL_ShapeDrawer.cpp

extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/GL_ShapeDrawer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/GL_ShapeDrawer.i"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/BasicDemo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/ExampleBrowser/GL_ShapeDrawer.cpp > CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/GL_ShapeDrawer.i

extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/GL_ShapeDrawer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/GL_ShapeDrawer.s"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/BasicDemo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/ExampleBrowser/GL_ShapeDrawer.cpp -o CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/GL_ShapeDrawer.s

extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/CollisionShape2TriangleMesh.o: extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/flags.make
extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/CollisionShape2TriangleMesh.o: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/ExampleBrowser/CollisionShape2TriangleMesh.cpp
extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/CollisionShape2TriangleMesh.o: extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/CollisionShape2TriangleMesh.o"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/BasicDemo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/CollisionShape2TriangleMesh.o -MF CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/CollisionShape2TriangleMesh.o.d -o CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/CollisionShape2TriangleMesh.o -c /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/ExampleBrowser/CollisionShape2TriangleMesh.cpp

extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/CollisionShape2TriangleMesh.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/CollisionShape2TriangleMesh.i"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/BasicDemo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/ExampleBrowser/CollisionShape2TriangleMesh.cpp > CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/CollisionShape2TriangleMesh.i

extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/CollisionShape2TriangleMesh.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/CollisionShape2TriangleMesh.s"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/BasicDemo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/ExampleBrowser/CollisionShape2TriangleMesh.cpp -o CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/CollisionShape2TriangleMesh.s

extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/Utils/b3Clock.o: extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/flags.make
extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/Utils/b3Clock.o: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/Utils/b3Clock.cpp
extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/Utils/b3Clock.o: extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/Utils/b3Clock.o"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/BasicDemo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/Utils/b3Clock.o -MF CMakeFiles/AppBasicExampleGui.dir/__/Utils/b3Clock.o.d -o CMakeFiles/AppBasicExampleGui.dir/__/Utils/b3Clock.o -c /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/Utils/b3Clock.cpp

extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/Utils/b3Clock.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/AppBasicExampleGui.dir/__/Utils/b3Clock.i"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/BasicDemo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/Utils/b3Clock.cpp > CMakeFiles/AppBasicExampleGui.dir/__/Utils/b3Clock.i

extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/Utils/b3Clock.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/AppBasicExampleGui.dir/__/Utils/b3Clock.s"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/BasicDemo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/Utils/b3Clock.cpp -o CMakeFiles/AppBasicExampleGui.dir/__/Utils/b3Clock.s

# Object files for target AppBasicExampleGui
AppBasicExampleGui_OBJECTS = \
"CMakeFiles/AppBasicExampleGui.dir/BasicExample.o" \
"CMakeFiles/AppBasicExampleGui.dir/__/StandaloneMain/main_opengl_single_example.o" \
"CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/OpenGLGuiHelper.o" \
"CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/GL_ShapeDrawer.o" \
"CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/CollisionShape2TriangleMesh.o" \
"CMakeFiles/AppBasicExampleGui.dir/__/Utils/b3Clock.o"

# External object files for target AppBasicExampleGui
AppBasicExampleGui_EXTERNAL_OBJECTS =

/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/AppBasicExampleGui: extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/BasicExample.o
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/AppBasicExampleGui: extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/StandaloneMain/main_opengl_single_example.o
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/AppBasicExampleGui: extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/OpenGLGuiHelper.o
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/AppBasicExampleGui: extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/GL_ShapeDrawer.o
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/AppBasicExampleGui: extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/ExampleBrowser/CollisionShape2TriangleMesh.o
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/AppBasicExampleGui: extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/__/Utils/b3Clock.o
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/AppBasicExampleGui: extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/build.make
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/AppBasicExampleGui: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletDynamics.3.26.dylib
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/AppBasicExampleGui: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletCollision.3.26.dylib
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/AppBasicExampleGui: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libLinearMath.3.26.dylib
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/AppBasicExampleGui: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libOpenGLWindow.dylib
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/AppBasicExampleGui: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Common.3.26.dylib
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/AppBasicExampleGui: extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/AppBasicExampleGui"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/BasicDemo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AppBasicExampleGui.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/build: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/AppBasicExampleGui
.PHONY : extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/build

extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/clean:
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/BasicDemo && $(CMAKE_COMMAND) -P CMakeFiles/AppBasicExampleGui.dir/cmake_clean.cmake
.PHONY : extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/clean

extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/depend:
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/BasicDemo /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/BasicDemo /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : extern/bullet3/examples/BasicDemo/CMakeFiles/AppBasicExampleGui.dir/depend

