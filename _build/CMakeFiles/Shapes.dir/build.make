# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tony/DckFgtsn/workspace/tasks/RK2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tony/DckFgtsn/workspace/tasks/RK2/_build

# Include any dependencies generated for this target.
include CMakeFiles/Shapes.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Shapes.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Shapes.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Shapes.dir/flags.make

CMakeFiles/Shapes.dir/examples/Shapes.cpp.o: CMakeFiles/Shapes.dir/flags.make
CMakeFiles/Shapes.dir/examples/Shapes.cpp.o: ../examples/Shapes.cpp
CMakeFiles/Shapes.dir/examples/Shapes.cpp.o: CMakeFiles/Shapes.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tony/DckFgtsn/workspace/tasks/RK2/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Shapes.dir/examples/Shapes.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Shapes.dir/examples/Shapes.cpp.o -MF CMakeFiles/Shapes.dir/examples/Shapes.cpp.o.d -o CMakeFiles/Shapes.dir/examples/Shapes.cpp.o -c /home/tony/DckFgtsn/workspace/tasks/RK2/examples/Shapes.cpp

CMakeFiles/Shapes.dir/examples/Shapes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Shapes.dir/examples/Shapes.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tony/DckFgtsn/workspace/tasks/RK2/examples/Shapes.cpp > CMakeFiles/Shapes.dir/examples/Shapes.cpp.i

CMakeFiles/Shapes.dir/examples/Shapes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Shapes.dir/examples/Shapes.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tony/DckFgtsn/workspace/tasks/RK2/examples/Shapes.cpp -o CMakeFiles/Shapes.dir/examples/Shapes.cpp.s

# Object files for target Shapes
Shapes_OBJECTS = \
"CMakeFiles/Shapes.dir/examples/Shapes.cpp.o"

# External object files for target Shapes
Shapes_EXTERNAL_OBJECTS =

Shapes: CMakeFiles/Shapes.dir/examples/Shapes.cpp.o
Shapes: CMakeFiles/Shapes.dir/build.make
Shapes: CMakeFiles/Shapes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tony/DckFgtsn/workspace/tasks/RK2/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Shapes"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Shapes.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Shapes.dir/build: Shapes
.PHONY : CMakeFiles/Shapes.dir/build

CMakeFiles/Shapes.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Shapes.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Shapes.dir/clean

CMakeFiles/Shapes.dir/depend:
	cd /home/tony/DckFgtsn/workspace/tasks/RK2/_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tony/DckFgtsn/workspace/tasks/RK2 /home/tony/DckFgtsn/workspace/tasks/RK2 /home/tony/DckFgtsn/workspace/tasks/RK2/_build /home/tony/DckFgtsn/workspace/tasks/RK2/_build /home/tony/DckFgtsn/workspace/tasks/RK2/_build/CMakeFiles/Shapes.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Shapes.dir/depend
