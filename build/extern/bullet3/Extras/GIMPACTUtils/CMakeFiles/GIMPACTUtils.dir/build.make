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
CMAKE_SOURCE_DIR = /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build

# Include any dependencies generated for this target.
include extern/bullet3/Extras/GIMPACTUtils/CMakeFiles/GIMPACTUtils.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include extern/bullet3/Extras/GIMPACTUtils/CMakeFiles/GIMPACTUtils.dir/compiler_depend.make

# Include the progress variables for this target.
include extern/bullet3/Extras/GIMPACTUtils/CMakeFiles/GIMPACTUtils.dir/progress.make

# Include the compile flags for this target's objects.
include extern/bullet3/Extras/GIMPACTUtils/CMakeFiles/GIMPACTUtils.dir/flags.make

extern/bullet3/Extras/GIMPACTUtils/CMakeFiles/GIMPACTUtils.dir/btGImpactConvexDecompositionShape.o: extern/bullet3/Extras/GIMPACTUtils/CMakeFiles/GIMPACTUtils.dir/flags.make
extern/bullet3/Extras/GIMPACTUtils/CMakeFiles/GIMPACTUtils.dir/btGImpactConvexDecompositionShape.o: /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/extern/bullet3/Extras/GIMPACTUtils/btGImpactConvexDecompositionShape.cpp
extern/bullet3/Extras/GIMPACTUtils/CMakeFiles/GIMPACTUtils.dir/btGImpactConvexDecompositionShape.o: extern/bullet3/Extras/GIMPACTUtils/CMakeFiles/GIMPACTUtils.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object extern/bullet3/Extras/GIMPACTUtils/CMakeFiles/GIMPACTUtils.dir/btGImpactConvexDecompositionShape.o"
	cd /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build/extern/bullet3/Extras/GIMPACTUtils && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/bullet3/Extras/GIMPACTUtils/CMakeFiles/GIMPACTUtils.dir/btGImpactConvexDecompositionShape.o -MF CMakeFiles/GIMPACTUtils.dir/btGImpactConvexDecompositionShape.o.d -o CMakeFiles/GIMPACTUtils.dir/btGImpactConvexDecompositionShape.o -c /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/extern/bullet3/Extras/GIMPACTUtils/btGImpactConvexDecompositionShape.cpp

extern/bullet3/Extras/GIMPACTUtils/CMakeFiles/GIMPACTUtils.dir/btGImpactConvexDecompositionShape.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/GIMPACTUtils.dir/btGImpactConvexDecompositionShape.i"
	cd /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build/extern/bullet3/Extras/GIMPACTUtils && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/extern/bullet3/Extras/GIMPACTUtils/btGImpactConvexDecompositionShape.cpp > CMakeFiles/GIMPACTUtils.dir/btGImpactConvexDecompositionShape.i

extern/bullet3/Extras/GIMPACTUtils/CMakeFiles/GIMPACTUtils.dir/btGImpactConvexDecompositionShape.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/GIMPACTUtils.dir/btGImpactConvexDecompositionShape.s"
	cd /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build/extern/bullet3/Extras/GIMPACTUtils && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/extern/bullet3/Extras/GIMPACTUtils/btGImpactConvexDecompositionShape.cpp -o CMakeFiles/GIMPACTUtils.dir/btGImpactConvexDecompositionShape.s

# Object files for target GIMPACTUtils
GIMPACTUtils_OBJECTS = \
"CMakeFiles/GIMPACTUtils.dir/btGImpactConvexDecompositionShape.o"

# External object files for target GIMPACTUtils
GIMPACTUtils_EXTERNAL_OBJECTS =

/Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/bin/libGIMPACTUtils.3.26.dylib: extern/bullet3/Extras/GIMPACTUtils/CMakeFiles/GIMPACTUtils.dir/btGImpactConvexDecompositionShape.o
/Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/bin/libGIMPACTUtils.3.26.dylib: extern/bullet3/Extras/GIMPACTUtils/CMakeFiles/GIMPACTUtils.dir/build.make
/Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/bin/libGIMPACTUtils.3.26.dylib: /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/bin/libConvexDecomposition.3.26.dylib
/Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/bin/libGIMPACTUtils.3.26.dylib: /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/bin/libBulletCollision.3.26.dylib
/Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/bin/libGIMPACTUtils.3.26.dylib: /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/bin/libLinearMath.3.26.dylib
/Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/bin/libGIMPACTUtils.3.26.dylib: extern/bullet3/Extras/GIMPACTUtils/CMakeFiles/GIMPACTUtils.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/bin/libGIMPACTUtils.dylib"
	cd /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build/extern/bullet3/Extras/GIMPACTUtils && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GIMPACTUtils.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build/extern/bullet3/Extras/GIMPACTUtils && $(CMAKE_COMMAND) -E cmake_symlink_library /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/bin/libGIMPACTUtils.3.26.dylib /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/bin/libGIMPACTUtils.3.26.dylib /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/bin/libGIMPACTUtils.dylib

/Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/bin/libGIMPACTUtils.dylib: /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/bin/libGIMPACTUtils.3.26.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/bin/libGIMPACTUtils.dylib

# Rule to build all files generated by this target.
extern/bullet3/Extras/GIMPACTUtils/CMakeFiles/GIMPACTUtils.dir/build: /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/bin/libGIMPACTUtils.dylib
.PHONY : extern/bullet3/Extras/GIMPACTUtils/CMakeFiles/GIMPACTUtils.dir/build

extern/bullet3/Extras/GIMPACTUtils/CMakeFiles/GIMPACTUtils.dir/clean:
	cd /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build/extern/bullet3/Extras/GIMPACTUtils && $(CMAKE_COMMAND) -P CMakeFiles/GIMPACTUtils.dir/cmake_clean.cmake
.PHONY : extern/bullet3/Extras/GIMPACTUtils/CMakeFiles/GIMPACTUtils.dir/clean

extern/bullet3/Extras/GIMPACTUtils/CMakeFiles/GIMPACTUtils.dir/depend:
	cd /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/extern/bullet3/Extras/GIMPACTUtils /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build/extern/bullet3/Extras/GIMPACTUtils /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build/extern/bullet3/Extras/GIMPACTUtils/CMakeFiles/GIMPACTUtils.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : extern/bullet3/Extras/GIMPACTUtils/CMakeFiles/GIMPACTUtils.dir/depend
