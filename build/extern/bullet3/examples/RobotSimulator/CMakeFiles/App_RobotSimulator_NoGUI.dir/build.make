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
include extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/compiler_depend.make

# Include the progress variables for this target.
include extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/progress.make

# Include the compile flags for this target's objects.
include extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/flags.make

extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/RobotSimulatorMain.o: extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/flags.make
extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/RobotSimulatorMain.o: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/RobotSimulator/RobotSimulatorMain.cpp
extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/RobotSimulatorMain.o: extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/RobotSimulatorMain.o"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/RobotSimulator && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/RobotSimulatorMain.o -MF CMakeFiles/App_RobotSimulator_NoGUI.dir/RobotSimulatorMain.o.d -o CMakeFiles/App_RobotSimulator_NoGUI.dir/RobotSimulatorMain.o -c /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/RobotSimulator/RobotSimulatorMain.cpp

extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/RobotSimulatorMain.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/App_RobotSimulator_NoGUI.dir/RobotSimulatorMain.i"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/RobotSimulator && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/RobotSimulator/RobotSimulatorMain.cpp > CMakeFiles/App_RobotSimulator_NoGUI.dir/RobotSimulatorMain.i

extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/RobotSimulatorMain.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/App_RobotSimulator_NoGUI.dir/RobotSimulatorMain.s"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/RobotSimulator && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/RobotSimulator/RobotSimulatorMain.cpp -o CMakeFiles/App_RobotSimulator_NoGUI.dir/RobotSimulatorMain.s

extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/MinitaurSetup.o: extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/flags.make
extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/MinitaurSetup.o: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/RobotSimulator/MinitaurSetup.cpp
extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/MinitaurSetup.o: extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/MinitaurSetup.o"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/RobotSimulator && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/MinitaurSetup.o -MF CMakeFiles/App_RobotSimulator_NoGUI.dir/MinitaurSetup.o.d -o CMakeFiles/App_RobotSimulator_NoGUI.dir/MinitaurSetup.o -c /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/RobotSimulator/MinitaurSetup.cpp

extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/MinitaurSetup.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/App_RobotSimulator_NoGUI.dir/MinitaurSetup.i"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/RobotSimulator && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/RobotSimulator/MinitaurSetup.cpp > CMakeFiles/App_RobotSimulator_NoGUI.dir/MinitaurSetup.i

extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/MinitaurSetup.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/App_RobotSimulator_NoGUI.dir/MinitaurSetup.s"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/RobotSimulator && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/RobotSimulator/MinitaurSetup.cpp -o CMakeFiles/App_RobotSimulator_NoGUI.dir/MinitaurSetup.s

# Object files for target App_RobotSimulator_NoGUI
App_RobotSimulator_NoGUI_OBJECTS = \
"CMakeFiles/App_RobotSimulator_NoGUI.dir/RobotSimulatorMain.o" \
"CMakeFiles/App_RobotSimulator_NoGUI.dir/MinitaurSetup.o"

# External object files for target App_RobotSimulator_NoGUI
App_RobotSimulator_NoGUI_EXTERNAL_OBJECTS =

/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/App_RobotSimulator_NoGUI-3.26: extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/RobotSimulatorMain.o
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/App_RobotSimulator_NoGUI-3.26: extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/MinitaurSetup.o
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/App_RobotSimulator_NoGUI-3.26: extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/build.make
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/App_RobotSimulator_NoGUI-3.26: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletRobotics.3.26.dylib
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/App_RobotSimulator_NoGUI-3.26: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletWorldImporter.3.26.dylib
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/App_RobotSimulator_NoGUI-3.26: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletSoftBody.3.26.dylib
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/App_RobotSimulator_NoGUI-3.26: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletInverseDynamicsUtils.3.26.dylib
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/App_RobotSimulator_NoGUI-3.26: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletInverseDynamics.3.26.dylib
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/App_RobotSimulator_NoGUI-3.26: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Common.3.26.dylib
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/App_RobotSimulator_NoGUI-3.26: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletFileLoader.3.26.dylib
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/App_RobotSimulator_NoGUI-3.26: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletDynamics.3.26.dylib
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/App_RobotSimulator_NoGUI-3.26: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletCollision.3.26.dylib
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/App_RobotSimulator_NoGUI-3.26: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libLinearMath.3.26.dylib
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/App_RobotSimulator_NoGUI-3.26: extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/App_RobotSimulator_NoGUI"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/RobotSimulator && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/App_RobotSimulator_NoGUI.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/RobotSimulator && $(CMAKE_COMMAND) -E cmake_symlink_executable /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/App_RobotSimulator_NoGUI-3.26 /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/App_RobotSimulator_NoGUI

/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/App_RobotSimulator_NoGUI: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/App_RobotSimulator_NoGUI-3.26

# Rule to build all files generated by this target.
extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/build: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/App_RobotSimulator_NoGUI
.PHONY : extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/build

extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/clean:
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/RobotSimulator && $(CMAKE_COMMAND) -P CMakeFiles/App_RobotSimulator_NoGUI.dir/cmake_clean.cmake
.PHONY : extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/clean

extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/depend:
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/examples/RobotSimulator /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/RobotSimulator /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : extern/bullet3/examples/RobotSimulator/CMakeFiles/App_RobotSimulator_NoGUI.dir/depend

