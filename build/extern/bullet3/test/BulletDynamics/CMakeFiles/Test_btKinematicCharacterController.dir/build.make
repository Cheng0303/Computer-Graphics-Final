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
include extern/bullet3/test/BulletDynamics/CMakeFiles/Test_btKinematicCharacterController.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include extern/bullet3/test/BulletDynamics/CMakeFiles/Test_btKinematicCharacterController.dir/compiler_depend.make

# Include the progress variables for this target.
include extern/bullet3/test/BulletDynamics/CMakeFiles/Test_btKinematicCharacterController.dir/progress.make

# Include the compile flags for this target's objects.
include extern/bullet3/test/BulletDynamics/CMakeFiles/Test_btKinematicCharacterController.dir/flags.make

extern/bullet3/test/BulletDynamics/CMakeFiles/Test_btKinematicCharacterController.dir/test_btKinematicCharacterController.o: extern/bullet3/test/BulletDynamics/CMakeFiles/Test_btKinematicCharacterController.dir/flags.make
extern/bullet3/test/BulletDynamics/CMakeFiles/Test_btKinematicCharacterController.dir/test_btKinematicCharacterController.o: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/test/BulletDynamics/test_btKinematicCharacterController.cpp
extern/bullet3/test/BulletDynamics/CMakeFiles/Test_btKinematicCharacterController.dir/test_btKinematicCharacterController.o: extern/bullet3/test/BulletDynamics/CMakeFiles/Test_btKinematicCharacterController.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object extern/bullet3/test/BulletDynamics/CMakeFiles/Test_btKinematicCharacterController.dir/test_btKinematicCharacterController.o"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/test/BulletDynamics && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/bullet3/test/BulletDynamics/CMakeFiles/Test_btKinematicCharacterController.dir/test_btKinematicCharacterController.o -MF CMakeFiles/Test_btKinematicCharacterController.dir/test_btKinematicCharacterController.o.d -o CMakeFiles/Test_btKinematicCharacterController.dir/test_btKinematicCharacterController.o -c /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/test/BulletDynamics/test_btKinematicCharacterController.cpp

extern/bullet3/test/BulletDynamics/CMakeFiles/Test_btKinematicCharacterController.dir/test_btKinematicCharacterController.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Test_btKinematicCharacterController.dir/test_btKinematicCharacterController.i"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/test/BulletDynamics && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/test/BulletDynamics/test_btKinematicCharacterController.cpp > CMakeFiles/Test_btKinematicCharacterController.dir/test_btKinematicCharacterController.i

extern/bullet3/test/BulletDynamics/CMakeFiles/Test_btKinematicCharacterController.dir/test_btKinematicCharacterController.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Test_btKinematicCharacterController.dir/test_btKinematicCharacterController.s"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/test/BulletDynamics && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/test/BulletDynamics/test_btKinematicCharacterController.cpp -o CMakeFiles/Test_btKinematicCharacterController.dir/test_btKinematicCharacterController.s

# Object files for target Test_btKinematicCharacterController
Test_btKinematicCharacterController_OBJECTS = \
"CMakeFiles/Test_btKinematicCharacterController.dir/test_btKinematicCharacterController.o"

# External object files for target Test_btKinematicCharacterController
Test_btKinematicCharacterController_EXTERNAL_OBJECTS =

/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/Test_btKinematicCharacterController: extern/bullet3/test/BulletDynamics/CMakeFiles/Test_btKinematicCharacterController.dir/test_btKinematicCharacterController.o
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/Test_btKinematicCharacterController: extern/bullet3/test/BulletDynamics/CMakeFiles/Test_btKinematicCharacterController.dir/build.make
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/Test_btKinematicCharacterController: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletDynamics.3.26.dylib
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/Test_btKinematicCharacterController: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletCollision.3.26.dylib
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/Test_btKinematicCharacterController: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libLinearMath.3.26.dylib
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/Test_btKinematicCharacterController: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libgtest.dylib
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/Test_btKinematicCharacterController: extern/bullet3/test/BulletDynamics/CMakeFiles/Test_btKinematicCharacterController.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/Test_btKinematicCharacterController"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/test/BulletDynamics && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Test_btKinematicCharacterController.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
extern/bullet3/test/BulletDynamics/CMakeFiles/Test_btKinematicCharacterController.dir/build: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/Test_btKinematicCharacterController
.PHONY : extern/bullet3/test/BulletDynamics/CMakeFiles/Test_btKinematicCharacterController.dir/build

extern/bullet3/test/BulletDynamics/CMakeFiles/Test_btKinematicCharacterController.dir/clean:
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/test/BulletDynamics && $(CMAKE_COMMAND) -P CMakeFiles/Test_btKinematicCharacterController.dir/cmake_clean.cmake
.PHONY : extern/bullet3/test/BulletDynamics/CMakeFiles/Test_btKinematicCharacterController.dir/clean

extern/bullet3/test/BulletDynamics/CMakeFiles/Test_btKinematicCharacterController.dir/depend:
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/test/BulletDynamics /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/test/BulletDynamics /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/test/BulletDynamics/CMakeFiles/Test_btKinematicCharacterController.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : extern/bullet3/test/BulletDynamics/CMakeFiles/Test_btKinematicCharacterController.dir/depend

