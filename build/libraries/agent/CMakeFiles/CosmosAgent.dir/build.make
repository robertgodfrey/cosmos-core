# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/spjy/cosmos/source/core

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/spjy/cosmos/source/core/build

# Include any dependencies generated for this target.
include libraries/agent/CMakeFiles/CosmosAgent.dir/depend.make

# Include the progress variables for this target.
include libraries/agent/CMakeFiles/CosmosAgent.dir/progress.make

# Include the compile flags for this target's objects.
include libraries/agent/CMakeFiles/CosmosAgent.dir/flags.make

libraries/agent/CMakeFiles/CosmosAgent.dir/agentclass.cpp.o: libraries/agent/CMakeFiles/CosmosAgent.dir/flags.make
libraries/agent/CMakeFiles/CosmosAgent.dir/agentclass.cpp.o: ../libraries/agent/agentclass.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spjy/cosmos/source/core/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libraries/agent/CMakeFiles/CosmosAgent.dir/agentclass.cpp.o"
	cd /home/spjy/cosmos/source/core/build/libraries/agent && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CosmosAgent.dir/agentclass.cpp.o -c /home/spjy/cosmos/source/core/libraries/agent/agentclass.cpp

libraries/agent/CMakeFiles/CosmosAgent.dir/agentclass.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CosmosAgent.dir/agentclass.cpp.i"
	cd /home/spjy/cosmos/source/core/build/libraries/agent && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/spjy/cosmos/source/core/libraries/agent/agentclass.cpp > CMakeFiles/CosmosAgent.dir/agentclass.cpp.i

libraries/agent/CMakeFiles/CosmosAgent.dir/agentclass.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CosmosAgent.dir/agentclass.cpp.s"
	cd /home/spjy/cosmos/source/core/build/libraries/agent && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/spjy/cosmos/source/core/libraries/agent/agentclass.cpp -o CMakeFiles/CosmosAgent.dir/agentclass.cpp.s

libraries/agent/CMakeFiles/CosmosAgent.dir/agentclass.cpp.o.requires:

.PHONY : libraries/agent/CMakeFiles/CosmosAgent.dir/agentclass.cpp.o.requires

libraries/agent/CMakeFiles/CosmosAgent.dir/agentclass.cpp.o.provides: libraries/agent/CMakeFiles/CosmosAgent.dir/agentclass.cpp.o.requires
	$(MAKE) -f libraries/agent/CMakeFiles/CosmosAgent.dir/build.make libraries/agent/CMakeFiles/CosmosAgent.dir/agentclass.cpp.o.provides.build
.PHONY : libraries/agent/CMakeFiles/CosmosAgent.dir/agentclass.cpp.o.provides

libraries/agent/CMakeFiles/CosmosAgent.dir/agentclass.cpp.o.provides.build: libraries/agent/CMakeFiles/CosmosAgent.dir/agentclass.cpp.o


libraries/agent/CMakeFiles/CosmosAgent.dir/scheduler.cpp.o: libraries/agent/CMakeFiles/CosmosAgent.dir/flags.make
libraries/agent/CMakeFiles/CosmosAgent.dir/scheduler.cpp.o: ../libraries/agent/scheduler.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spjy/cosmos/source/core/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object libraries/agent/CMakeFiles/CosmosAgent.dir/scheduler.cpp.o"
	cd /home/spjy/cosmos/source/core/build/libraries/agent && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CosmosAgent.dir/scheduler.cpp.o -c /home/spjy/cosmos/source/core/libraries/agent/scheduler.cpp

libraries/agent/CMakeFiles/CosmosAgent.dir/scheduler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CosmosAgent.dir/scheduler.cpp.i"
	cd /home/spjy/cosmos/source/core/build/libraries/agent && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/spjy/cosmos/source/core/libraries/agent/scheduler.cpp > CMakeFiles/CosmosAgent.dir/scheduler.cpp.i

libraries/agent/CMakeFiles/CosmosAgent.dir/scheduler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CosmosAgent.dir/scheduler.cpp.s"
	cd /home/spjy/cosmos/source/core/build/libraries/agent && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/spjy/cosmos/source/core/libraries/agent/scheduler.cpp -o CMakeFiles/CosmosAgent.dir/scheduler.cpp.s

libraries/agent/CMakeFiles/CosmosAgent.dir/scheduler.cpp.o.requires:

.PHONY : libraries/agent/CMakeFiles/CosmosAgent.dir/scheduler.cpp.o.requires

libraries/agent/CMakeFiles/CosmosAgent.dir/scheduler.cpp.o.provides: libraries/agent/CMakeFiles/CosmosAgent.dir/scheduler.cpp.o.requires
	$(MAKE) -f libraries/agent/CMakeFiles/CosmosAgent.dir/build.make libraries/agent/CMakeFiles/CosmosAgent.dir/scheduler.cpp.o.provides.build
.PHONY : libraries/agent/CMakeFiles/CosmosAgent.dir/scheduler.cpp.o.provides

libraries/agent/CMakeFiles/CosmosAgent.dir/scheduler.cpp.o.provides.build: libraries/agent/CMakeFiles/CosmosAgent.dir/scheduler.cpp.o


# Object files for target CosmosAgent
CosmosAgent_OBJECTS = \
"CMakeFiles/CosmosAgent.dir/agentclass.cpp.o" \
"CMakeFiles/CosmosAgent.dir/scheduler.cpp.o"

# External object files for target CosmosAgent
CosmosAgent_EXTERNAL_OBJECTS =

libraries/agent/libCosmosAgent.a: libraries/agent/CMakeFiles/CosmosAgent.dir/agentclass.cpp.o
libraries/agent/libCosmosAgent.a: libraries/agent/CMakeFiles/CosmosAgent.dir/scheduler.cpp.o
libraries/agent/libCosmosAgent.a: libraries/agent/CMakeFiles/CosmosAgent.dir/build.make
libraries/agent/libCosmosAgent.a: libraries/agent/CMakeFiles/CosmosAgent.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/spjy/cosmos/source/core/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libCosmosAgent.a"
	cd /home/spjy/cosmos/source/core/build/libraries/agent && $(CMAKE_COMMAND) -P CMakeFiles/CosmosAgent.dir/cmake_clean_target.cmake
	cd /home/spjy/cosmos/source/core/build/libraries/agent && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CosmosAgent.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libraries/agent/CMakeFiles/CosmosAgent.dir/build: libraries/agent/libCosmosAgent.a

.PHONY : libraries/agent/CMakeFiles/CosmosAgent.dir/build

libraries/agent/CMakeFiles/CosmosAgent.dir/requires: libraries/agent/CMakeFiles/CosmosAgent.dir/agentclass.cpp.o.requires
libraries/agent/CMakeFiles/CosmosAgent.dir/requires: libraries/agent/CMakeFiles/CosmosAgent.dir/scheduler.cpp.o.requires

.PHONY : libraries/agent/CMakeFiles/CosmosAgent.dir/requires

libraries/agent/CMakeFiles/CosmosAgent.dir/clean:
	cd /home/spjy/cosmos/source/core/build/libraries/agent && $(CMAKE_COMMAND) -P CMakeFiles/CosmosAgent.dir/cmake_clean.cmake
.PHONY : libraries/agent/CMakeFiles/CosmosAgent.dir/clean

libraries/agent/CMakeFiles/CosmosAgent.dir/depend:
	cd /home/spjy/cosmos/source/core/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/spjy/cosmos/source/core /home/spjy/cosmos/source/core/libraries/agent /home/spjy/cosmos/source/core/build /home/spjy/cosmos/source/core/build/libraries/agent /home/spjy/cosmos/source/core/build/libraries/agent/CMakeFiles/CosmosAgent.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libraries/agent/CMakeFiles/CosmosAgent.dir/depend

