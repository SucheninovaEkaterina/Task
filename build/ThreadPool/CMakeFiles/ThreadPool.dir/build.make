# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /snap/cmake/1186/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1186/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ekaterina/threadPool

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ekaterina/threadPool/build

# Include any dependencies generated for this target.
include ThreadPool/CMakeFiles/ThreadPool.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include ThreadPool/CMakeFiles/ThreadPool.dir/compiler_depend.make

# Include the progress variables for this target.
include ThreadPool/CMakeFiles/ThreadPool.dir/progress.make

# Include the compile flags for this target's objects.
include ThreadPool/CMakeFiles/ThreadPool.dir/flags.make

ThreadPool/CMakeFiles/ThreadPool.dir/ThreadPool.cpp.o: ThreadPool/CMakeFiles/ThreadPool.dir/flags.make
ThreadPool/CMakeFiles/ThreadPool.dir/ThreadPool.cpp.o: /home/ekaterina/threadPool/ThreadPool/ThreadPool.cpp
ThreadPool/CMakeFiles/ThreadPool.dir/ThreadPool.cpp.o: ThreadPool/CMakeFiles/ThreadPool.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ekaterina/threadPool/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ThreadPool/CMakeFiles/ThreadPool.dir/ThreadPool.cpp.o"
	cd /home/ekaterina/threadPool/build/ThreadPool && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ThreadPool/CMakeFiles/ThreadPool.dir/ThreadPool.cpp.o -MF CMakeFiles/ThreadPool.dir/ThreadPool.cpp.o.d -o CMakeFiles/ThreadPool.dir/ThreadPool.cpp.o -c /home/ekaterina/threadPool/ThreadPool/ThreadPool.cpp

ThreadPool/CMakeFiles/ThreadPool.dir/ThreadPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ThreadPool.dir/ThreadPool.cpp.i"
	cd /home/ekaterina/threadPool/build/ThreadPool && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ekaterina/threadPool/ThreadPool/ThreadPool.cpp > CMakeFiles/ThreadPool.dir/ThreadPool.cpp.i

ThreadPool/CMakeFiles/ThreadPool.dir/ThreadPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ThreadPool.dir/ThreadPool.cpp.s"
	cd /home/ekaterina/threadPool/build/ThreadPool && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ekaterina/threadPool/ThreadPool/ThreadPool.cpp -o CMakeFiles/ThreadPool.dir/ThreadPool.cpp.s

# Object files for target ThreadPool
ThreadPool_OBJECTS = \
"CMakeFiles/ThreadPool.dir/ThreadPool.cpp.o"

# External object files for target ThreadPool
ThreadPool_EXTERNAL_OBJECTS =

ThreadPool/libThreadPool.a: ThreadPool/CMakeFiles/ThreadPool.dir/ThreadPool.cpp.o
ThreadPool/libThreadPool.a: ThreadPool/CMakeFiles/ThreadPool.dir/build.make
ThreadPool/libThreadPool.a: ThreadPool/CMakeFiles/ThreadPool.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ekaterina/threadPool/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libThreadPool.a"
	cd /home/ekaterina/threadPool/build/ThreadPool && $(CMAKE_COMMAND) -P CMakeFiles/ThreadPool.dir/cmake_clean_target.cmake
	cd /home/ekaterina/threadPool/build/ThreadPool && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ThreadPool.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ThreadPool/CMakeFiles/ThreadPool.dir/build: ThreadPool/libThreadPool.a
.PHONY : ThreadPool/CMakeFiles/ThreadPool.dir/build

ThreadPool/CMakeFiles/ThreadPool.dir/clean:
	cd /home/ekaterina/threadPool/build/ThreadPool && $(CMAKE_COMMAND) -P CMakeFiles/ThreadPool.dir/cmake_clean.cmake
.PHONY : ThreadPool/CMakeFiles/ThreadPool.dir/clean

ThreadPool/CMakeFiles/ThreadPool.dir/depend:
	cd /home/ekaterina/threadPool/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ekaterina/threadPool /home/ekaterina/threadPool/ThreadPool /home/ekaterina/threadPool/build /home/ekaterina/threadPool/build/ThreadPool /home/ekaterina/threadPool/build/ThreadPool/CMakeFiles/ThreadPool.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ThreadPool/CMakeFiles/ThreadPool.dir/depend

