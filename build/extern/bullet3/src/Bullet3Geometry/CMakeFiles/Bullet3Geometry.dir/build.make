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
include extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/compiler_depend.make

# Include the progress variables for this target.
include extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/progress.make

# Include the compile flags for this target's objects.
include extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/flags.make

extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/b3ConvexHullComputer.o: extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/flags.make
extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/b3ConvexHullComputer.o: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Geometry/b3ConvexHullComputer.cpp
extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/b3ConvexHullComputer.o: extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/b3ConvexHullComputer.o"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Geometry && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/b3ConvexHullComputer.o -MF CMakeFiles/Bullet3Geometry.dir/b3ConvexHullComputer.o.d -o CMakeFiles/Bullet3Geometry.dir/b3ConvexHullComputer.o -c /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Geometry/b3ConvexHullComputer.cpp

extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/b3ConvexHullComputer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Bullet3Geometry.dir/b3ConvexHullComputer.i"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Geometry && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Geometry/b3ConvexHullComputer.cpp > CMakeFiles/Bullet3Geometry.dir/b3ConvexHullComputer.i

extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/b3ConvexHullComputer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Bullet3Geometry.dir/b3ConvexHullComputer.s"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Geometry && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Geometry/b3ConvexHullComputer.cpp -o CMakeFiles/Bullet3Geometry.dir/b3ConvexHullComputer.s

extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/b3GeometryUtil.o: extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/flags.make
extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/b3GeometryUtil.o: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Geometry/b3GeometryUtil.cpp
extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/b3GeometryUtil.o: extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/b3GeometryUtil.o"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Geometry && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/b3GeometryUtil.o -MF CMakeFiles/Bullet3Geometry.dir/b3GeometryUtil.o.d -o CMakeFiles/Bullet3Geometry.dir/b3GeometryUtil.o -c /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Geometry/b3GeometryUtil.cpp

extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/b3GeometryUtil.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Bullet3Geometry.dir/b3GeometryUtil.i"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Geometry && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Geometry/b3GeometryUtil.cpp > CMakeFiles/Bullet3Geometry.dir/b3GeometryUtil.i

extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/b3GeometryUtil.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Bullet3Geometry.dir/b3GeometryUtil.s"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Geometry && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Geometry/b3GeometryUtil.cpp -o CMakeFiles/Bullet3Geometry.dir/b3GeometryUtil.s

# Object files for target Bullet3Geometry
Bullet3Geometry_OBJECTS = \
"CMakeFiles/Bullet3Geometry.dir/b3ConvexHullComputer.o" \
"CMakeFiles/Bullet3Geometry.dir/b3GeometryUtil.o"

# External object files for target Bullet3Geometry
Bullet3Geometry_EXTERNAL_OBJECTS =

/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Geometry.3.26.dylib: extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/b3ConvexHullComputer.o
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Geometry.3.26.dylib: extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/b3GeometryUtil.o
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Geometry.3.26.dylib: extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/build.make
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Geometry.3.26.dylib: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Common.3.26.dylib
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Geometry.3.26.dylib: extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Geometry.dylib"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Geometry && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Bullet3Geometry.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Geometry && $(CMAKE_COMMAND) -E cmake_symlink_library /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Geometry.3.26.dylib /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Geometry.3.26.dylib /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Geometry.dylib

/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Geometry.dylib: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Geometry.3.26.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Geometry.dylib

# Rule to build all files generated by this target.
extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/build: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Geometry.dylib
.PHONY : extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/build

extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/clean:
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Geometry && $(CMAKE_COMMAND) -P CMakeFiles/Bullet3Geometry.dir/cmake_clean.cmake
.PHONY : extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/clean

extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/depend:
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Geometry /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Geometry /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : extern/bullet3/src/Bullet3Geometry/CMakeFiles/Bullet3Geometry.dir/depend

