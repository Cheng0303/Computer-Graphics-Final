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
include extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/compiler_depend.make

# Include the progress variables for this target.
include extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/progress.make

# Include the compile flags for this target's objects.
include extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/flags.make

extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvh.o: extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/flags.make
extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvh.o: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Collision/BroadPhaseCollision/b3DynamicBvh.cpp
extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvh.o: extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvh.o"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Collision && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvh.o -MF CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvh.o.d -o CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvh.o -c /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Collision/BroadPhaseCollision/b3DynamicBvh.cpp

extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvh.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvh.i"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Collision && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Collision/BroadPhaseCollision/b3DynamicBvh.cpp > CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvh.i

extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvh.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvh.s"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Collision && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Collision/BroadPhaseCollision/b3DynamicBvh.cpp -o CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvh.s

extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvhBroadphase.o: extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/flags.make
extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvhBroadphase.o: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Collision/BroadPhaseCollision/b3DynamicBvhBroadphase.cpp
extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvhBroadphase.o: extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvhBroadphase.o"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Collision && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvhBroadphase.o -MF CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvhBroadphase.o.d -o CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvhBroadphase.o -c /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Collision/BroadPhaseCollision/b3DynamicBvhBroadphase.cpp

extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvhBroadphase.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvhBroadphase.i"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Collision && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Collision/BroadPhaseCollision/b3DynamicBvhBroadphase.cpp > CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvhBroadphase.i

extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvhBroadphase.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvhBroadphase.s"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Collision && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Collision/BroadPhaseCollision/b3DynamicBvhBroadphase.cpp -o CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvhBroadphase.s

extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3OverlappingPairCache.o: extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/flags.make
extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3OverlappingPairCache.o: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Collision/BroadPhaseCollision/b3OverlappingPairCache.cpp
extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3OverlappingPairCache.o: extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3OverlappingPairCache.o"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Collision && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3OverlappingPairCache.o -MF CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3OverlappingPairCache.o.d -o CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3OverlappingPairCache.o -c /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Collision/BroadPhaseCollision/b3OverlappingPairCache.cpp

extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3OverlappingPairCache.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3OverlappingPairCache.i"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Collision && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Collision/BroadPhaseCollision/b3OverlappingPairCache.cpp > CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3OverlappingPairCache.i

extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3OverlappingPairCache.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3OverlappingPairCache.s"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Collision && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Collision/BroadPhaseCollision/b3OverlappingPairCache.cpp -o CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3OverlappingPairCache.s

extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3ConvexUtility.o: extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/flags.make
extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3ConvexUtility.o: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Collision/NarrowPhaseCollision/b3ConvexUtility.cpp
extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3ConvexUtility.o: extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3ConvexUtility.o"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Collision && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3ConvexUtility.o -MF CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3ConvexUtility.o.d -o CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3ConvexUtility.o -c /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Collision/NarrowPhaseCollision/b3ConvexUtility.cpp

extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3ConvexUtility.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3ConvexUtility.i"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Collision && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Collision/NarrowPhaseCollision/b3ConvexUtility.cpp > CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3ConvexUtility.i

extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3ConvexUtility.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3ConvexUtility.s"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Collision && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Collision/NarrowPhaseCollision/b3ConvexUtility.cpp -o CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3ConvexUtility.s

extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3CpuNarrowPhase.o: extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/flags.make
extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3CpuNarrowPhase.o: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Collision/NarrowPhaseCollision/b3CpuNarrowPhase.cpp
extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3CpuNarrowPhase.o: extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3CpuNarrowPhase.o"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Collision && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3CpuNarrowPhase.o -MF CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3CpuNarrowPhase.o.d -o CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3CpuNarrowPhase.o -c /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Collision/NarrowPhaseCollision/b3CpuNarrowPhase.cpp

extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3CpuNarrowPhase.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3CpuNarrowPhase.i"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Collision && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Collision/NarrowPhaseCollision/b3CpuNarrowPhase.cpp > CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3CpuNarrowPhase.i

extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3CpuNarrowPhase.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3CpuNarrowPhase.s"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Collision && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Collision/NarrowPhaseCollision/b3CpuNarrowPhase.cpp -o CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3CpuNarrowPhase.s

# Object files for target Bullet3Collision
Bullet3Collision_OBJECTS = \
"CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvh.o" \
"CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvhBroadphase.o" \
"CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3OverlappingPairCache.o" \
"CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3ConvexUtility.o" \
"CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3CpuNarrowPhase.o"

# External object files for target Bullet3Collision
Bullet3Collision_EXTERNAL_OBJECTS =

/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Collision.3.26.dylib: extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvh.o
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Collision.3.26.dylib: extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3DynamicBvhBroadphase.o
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Collision.3.26.dylib: extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/BroadPhaseCollision/b3OverlappingPairCache.o
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Collision.3.26.dylib: extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3ConvexUtility.o
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Collision.3.26.dylib: extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/NarrowPhaseCollision/b3CpuNarrowPhase.o
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Collision.3.26.dylib: extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/build.make
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Collision.3.26.dylib: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Geometry.3.26.dylib
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Collision.3.26.dylib: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Common.3.26.dylib
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Collision.3.26.dylib: extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX shared library /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Collision.dylib"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Collision && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Bullet3Collision.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Collision && $(CMAKE_COMMAND) -E cmake_symlink_library /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Collision.3.26.dylib /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Collision.3.26.dylib /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Collision.dylib

/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Collision.dylib: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Collision.3.26.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Collision.dylib

# Rule to build all files generated by this target.
extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/build: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBullet3Collision.dylib
.PHONY : extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/build

extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/clean:
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Collision && $(CMAKE_COMMAND) -P CMakeFiles/Bullet3Collision.dir/cmake_clean.cmake
.PHONY : extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/clean

extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/depend:
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/src/Bullet3Collision /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Collision /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : extern/bullet3/src/Bullet3Collision/CMakeFiles/Bullet3Collision.dir/depend

