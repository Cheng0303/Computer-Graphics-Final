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
include extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/compiler_depend.make

# Include the progress variables for this target.
include extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/progress.make

# Include the compile flags for this target's objects.
include extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/flags.make

extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bChunk.o: extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/flags.make
extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bChunk.o: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/Extras/Serialize/BulletFileLoader/bChunk.cpp
extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bChunk.o: extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bChunk.o"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/Extras/Serialize/BulletFileLoader && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bChunk.o -MF CMakeFiles/BulletFileLoader.dir/bChunk.o.d -o CMakeFiles/BulletFileLoader.dir/bChunk.o -c /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/Extras/Serialize/BulletFileLoader/bChunk.cpp

extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bChunk.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/BulletFileLoader.dir/bChunk.i"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/Extras/Serialize/BulletFileLoader && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/Extras/Serialize/BulletFileLoader/bChunk.cpp > CMakeFiles/BulletFileLoader.dir/bChunk.i

extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bChunk.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/BulletFileLoader.dir/bChunk.s"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/Extras/Serialize/BulletFileLoader && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/Extras/Serialize/BulletFileLoader/bChunk.cpp -o CMakeFiles/BulletFileLoader.dir/bChunk.s

extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bDNA.o: extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/flags.make
extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bDNA.o: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/Extras/Serialize/BulletFileLoader/bDNA.cpp
extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bDNA.o: extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bDNA.o"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/Extras/Serialize/BulletFileLoader && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bDNA.o -MF CMakeFiles/BulletFileLoader.dir/bDNA.o.d -o CMakeFiles/BulletFileLoader.dir/bDNA.o -c /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/Extras/Serialize/BulletFileLoader/bDNA.cpp

extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bDNA.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/BulletFileLoader.dir/bDNA.i"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/Extras/Serialize/BulletFileLoader && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/Extras/Serialize/BulletFileLoader/bDNA.cpp > CMakeFiles/BulletFileLoader.dir/bDNA.i

extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bDNA.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/BulletFileLoader.dir/bDNA.s"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/Extras/Serialize/BulletFileLoader && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/Extras/Serialize/BulletFileLoader/bDNA.cpp -o CMakeFiles/BulletFileLoader.dir/bDNA.s

extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bFile.o: extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/flags.make
extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bFile.o: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/Extras/Serialize/BulletFileLoader/bFile.cpp
extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bFile.o: extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bFile.o"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/Extras/Serialize/BulletFileLoader && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bFile.o -MF CMakeFiles/BulletFileLoader.dir/bFile.o.d -o CMakeFiles/BulletFileLoader.dir/bFile.o -c /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/Extras/Serialize/BulletFileLoader/bFile.cpp

extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bFile.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/BulletFileLoader.dir/bFile.i"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/Extras/Serialize/BulletFileLoader && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/Extras/Serialize/BulletFileLoader/bFile.cpp > CMakeFiles/BulletFileLoader.dir/bFile.i

extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bFile.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/BulletFileLoader.dir/bFile.s"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/Extras/Serialize/BulletFileLoader && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/Extras/Serialize/BulletFileLoader/bFile.cpp -o CMakeFiles/BulletFileLoader.dir/bFile.s

extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/btBulletFile.o: extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/flags.make
extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/btBulletFile.o: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/Extras/Serialize/BulletFileLoader/btBulletFile.cpp
extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/btBulletFile.o: extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/btBulletFile.o"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/Extras/Serialize/BulletFileLoader && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/btBulletFile.o -MF CMakeFiles/BulletFileLoader.dir/btBulletFile.o.d -o CMakeFiles/BulletFileLoader.dir/btBulletFile.o -c /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/Extras/Serialize/BulletFileLoader/btBulletFile.cpp

extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/btBulletFile.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/BulletFileLoader.dir/btBulletFile.i"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/Extras/Serialize/BulletFileLoader && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/Extras/Serialize/BulletFileLoader/btBulletFile.cpp > CMakeFiles/BulletFileLoader.dir/btBulletFile.i

extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/btBulletFile.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/BulletFileLoader.dir/btBulletFile.s"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/Extras/Serialize/BulletFileLoader && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/Extras/Serialize/BulletFileLoader/btBulletFile.cpp -o CMakeFiles/BulletFileLoader.dir/btBulletFile.s

# Object files for target BulletFileLoader
BulletFileLoader_OBJECTS = \
"CMakeFiles/BulletFileLoader.dir/bChunk.o" \
"CMakeFiles/BulletFileLoader.dir/bDNA.o" \
"CMakeFiles/BulletFileLoader.dir/bFile.o" \
"CMakeFiles/BulletFileLoader.dir/btBulletFile.o"

# External object files for target BulletFileLoader
BulletFileLoader_EXTERNAL_OBJECTS =

/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletFileLoader.3.26.dylib: extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bChunk.o
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletFileLoader.3.26.dylib: extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bDNA.o
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletFileLoader.3.26.dylib: extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/bFile.o
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletFileLoader.3.26.dylib: extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/btBulletFile.o
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletFileLoader.3.26.dylib: extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/build.make
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletFileLoader.3.26.dylib: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libLinearMath.3.26.dylib
/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletFileLoader.3.26.dylib: extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared library /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletFileLoader.dylib"
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/Extras/Serialize/BulletFileLoader && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BulletFileLoader.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/Extras/Serialize/BulletFileLoader && $(CMAKE_COMMAND) -E cmake_symlink_library /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletFileLoader.3.26.dylib /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletFileLoader.3.26.dylib /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletFileLoader.dylib

/Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletFileLoader.dylib: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletFileLoader.3.26.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletFileLoader.dylib

# Rule to build all files generated by this target.
extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/build: /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/bin/libBulletFileLoader.dylib
.PHONY : extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/build

extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/clean:
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/Extras/Serialize/BulletFileLoader && $(CMAKE_COMMAND) -P CMakeFiles/BulletFileLoader.dir/cmake_clean.cmake
.PHONY : extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/clean

extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/depend:
	cd /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/extern/bullet3/Extras/Serialize/BulletFileLoader /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/Extras/Serialize/BulletFileLoader /Users/hanlin/Desktop/VScode/cg/final/Computer-Graphics-Final/build/extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : extern/bullet3/Extras/Serialize/BulletFileLoader/CMakeFiles/BulletFileLoader.dir/depend

