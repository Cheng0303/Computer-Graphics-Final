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
include extern/glm/glm/CMakeFiles/glm_shared.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include extern/glm/glm/CMakeFiles/glm_shared.dir/compiler_depend.make

# Include the progress variables for this target.
include extern/glm/glm/CMakeFiles/glm_shared.dir/progress.make

# Include the compile flags for this target's objects.
include extern/glm/glm/CMakeFiles/glm_shared.dir/flags.make

extern/glm/glm/CMakeFiles/glm_shared.dir/detail/glm.cpp.o: extern/glm/glm/CMakeFiles/glm_shared.dir/flags.make
extern/glm/glm/CMakeFiles/glm_shared.dir/detail/glm.cpp.o: /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/extern/glm/glm/detail/glm.cpp
extern/glm/glm/CMakeFiles/glm_shared.dir/detail/glm.cpp.o: extern/glm/glm/CMakeFiles/glm_shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object extern/glm/glm/CMakeFiles/glm_shared.dir/detail/glm.cpp.o"
	cd /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build/extern/glm/glm && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/glm/glm/CMakeFiles/glm_shared.dir/detail/glm.cpp.o -MF CMakeFiles/glm_shared.dir/detail/glm.cpp.o.d -o CMakeFiles/glm_shared.dir/detail/glm.cpp.o -c /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/extern/glm/glm/detail/glm.cpp

extern/glm/glm/CMakeFiles/glm_shared.dir/detail/glm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/glm_shared.dir/detail/glm.cpp.i"
	cd /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build/extern/glm/glm && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/extern/glm/glm/detail/glm.cpp > CMakeFiles/glm_shared.dir/detail/glm.cpp.i

extern/glm/glm/CMakeFiles/glm_shared.dir/detail/glm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/glm_shared.dir/detail/glm.cpp.s"
	cd /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build/extern/glm/glm && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/extern/glm/glm/detail/glm.cpp -o CMakeFiles/glm_shared.dir/detail/glm.cpp.s

# Object files for target glm_shared
glm_shared_OBJECTS = \
"CMakeFiles/glm_shared.dir/detail/glm.cpp.o"

# External object files for target glm_shared
glm_shared_EXTERNAL_OBJECTS =

/Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/bin/libglm_shared.dylib: extern/glm/glm/CMakeFiles/glm_shared.dir/detail/glm.cpp.o
/Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/bin/libglm_shared.dylib: extern/glm/glm/CMakeFiles/glm_shared.dir/build.make
/Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/bin/libglm_shared.dylib: extern/glm/glm/CMakeFiles/glm_shared.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/bin/libglm_shared.dylib"
	cd /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build/extern/glm/glm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glm_shared.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
extern/glm/glm/CMakeFiles/glm_shared.dir/build: /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/bin/libglm_shared.dylib
.PHONY : extern/glm/glm/CMakeFiles/glm_shared.dir/build

extern/glm/glm/CMakeFiles/glm_shared.dir/clean:
	cd /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build/extern/glm/glm && $(CMAKE_COMMAND) -P CMakeFiles/glm_shared.dir/cmake_clean.cmake
.PHONY : extern/glm/glm/CMakeFiles/glm_shared.dir/clean

extern/glm/glm/CMakeFiles/glm_shared.dir/depend:
	cd /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/extern/glm/glm /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build/extern/glm/glm /Users/hanlin/Desktop/VScode/CG/final/Computer-Graphics-Final/build/extern/glm/glm/CMakeFiles/glm_shared.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : extern/glm/glm/CMakeFiles/glm_shared.dir/depend
