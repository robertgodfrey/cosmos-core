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
include programs/agents/CMakeFiles/agent_data.dir/depend.make

# Include the progress variables for this target.
include programs/agents/CMakeFiles/agent_data.dir/progress.make

# Include the compile flags for this target's objects.
include programs/agents/CMakeFiles/agent_data.dir/flags.make

programs/agents/CMakeFiles/agent_data.dir/agent_data.cpp.o: programs/agents/CMakeFiles/agent_data.dir/flags.make
programs/agents/CMakeFiles/agent_data.dir/agent_data.cpp.o: ../programs/agents/agent_data.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spjy/cosmos/source/core/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object programs/agents/CMakeFiles/agent_data.dir/agent_data.cpp.o"
	cd /home/spjy/cosmos/source/core/build/programs/agents && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/agent_data.dir/agent_data.cpp.o -c /home/spjy/cosmos/source/core/programs/agents/agent_data.cpp

programs/agents/CMakeFiles/agent_data.dir/agent_data.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/agent_data.dir/agent_data.cpp.i"
	cd /home/spjy/cosmos/source/core/build/programs/agents && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/spjy/cosmos/source/core/programs/agents/agent_data.cpp > CMakeFiles/agent_data.dir/agent_data.cpp.i

programs/agents/CMakeFiles/agent_data.dir/agent_data.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/agent_data.dir/agent_data.cpp.s"
	cd /home/spjy/cosmos/source/core/build/programs/agents && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/spjy/cosmos/source/core/programs/agents/agent_data.cpp -o CMakeFiles/agent_data.dir/agent_data.cpp.s

programs/agents/CMakeFiles/agent_data.dir/agent_data.cpp.o.requires:

.PHONY : programs/agents/CMakeFiles/agent_data.dir/agent_data.cpp.o.requires

programs/agents/CMakeFiles/agent_data.dir/agent_data.cpp.o.provides: programs/agents/CMakeFiles/agent_data.dir/agent_data.cpp.o.requires
	$(MAKE) -f programs/agents/CMakeFiles/agent_data.dir/build.make programs/agents/CMakeFiles/agent_data.dir/agent_data.cpp.o.provides.build
.PHONY : programs/agents/CMakeFiles/agent_data.dir/agent_data.cpp.o.provides

programs/agents/CMakeFiles/agent_data.dir/agent_data.cpp.o.provides.build: programs/agents/CMakeFiles/agent_data.dir/agent_data.cpp.o


# Object files for target agent_data
agent_data_OBJECTS = \
"CMakeFiles/agent_data.dir/agent_data.cpp.o"

# External object files for target agent_data
agent_data_EXTERNAL_OBJECTS =

programs/agents/agent_data: programs/agents/CMakeFiles/agent_data.dir/agent_data.cpp.o
programs/agents/agent_data: programs/agents/CMakeFiles/agent_data.dir/build.make
programs/agents/agent_data: libraries/device/serial/libCosmosDeviceSerial.a
programs/agents/agent_data: libraries/device/i2c/libCosmosDeviceI2C.a
programs/agents/agent_data: libraries/device/disk/libCosmosDeviceDisk.a
programs/agents/agent_data: libraries/device/cpu/libCosmosDeviceCpu.a
programs/agents/agent_data: libraries/device/ccsds/libCosmosDeviceCcsds.a
programs/agents/agent_data: libraries/device/astrodev/libCosmosDeviceAstrodev.a
programs/agents/agent_data: libraries/device/arduino/libCosmosDeviceArduino.a
programs/agents/agent_data: libraries/device/general/libCosmosDeviceGeneral.a
programs/agents/agent_data: libraries/agent/libCosmosAgent.a
programs/agents/agent_data: libraries/physics/libCosmosPhysics.a
programs/agents/agent_data: libraries/support/libCosmosSupport.a
programs/agents/agent_data: libraries/math/libCosmosMath.a
programs/agents/agent_data: libraries/device/disk/libCosmosDeviceDisk.a
programs/agents/agent_data: libraries/device/cpu/libCosmosDeviceCpu.a
programs/agents/agent_data: libraries/device/disk/libCosmosDeviceDisk.a
programs/agents/agent_data: libraries/device/cpu/libCosmosDeviceCpu.a
programs/agents/agent_data: libraries/device/general/libCosmosDeviceGeneral.a
programs/agents/agent_data: libraries/support/libCosmosSupport.a
programs/agents/agent_data: libraries/math/libCosmosMath.a
programs/agents/agent_data: libraries/thirdparty/zlib/liblocalzlib.a
programs/agents/agent_data: programs/agents/CMakeFiles/agent_data.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/spjy/cosmos/source/core/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable agent_data"
	cd /home/spjy/cosmos/source/core/build/programs/agents && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/agent_data.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
programs/agents/CMakeFiles/agent_data.dir/build: programs/agents/agent_data

.PHONY : programs/agents/CMakeFiles/agent_data.dir/build

programs/agents/CMakeFiles/agent_data.dir/requires: programs/agents/CMakeFiles/agent_data.dir/agent_data.cpp.o.requires

.PHONY : programs/agents/CMakeFiles/agent_data.dir/requires

programs/agents/CMakeFiles/agent_data.dir/clean:
	cd /home/spjy/cosmos/source/core/build/programs/agents && $(CMAKE_COMMAND) -P CMakeFiles/agent_data.dir/cmake_clean.cmake
.PHONY : programs/agents/CMakeFiles/agent_data.dir/clean

programs/agents/CMakeFiles/agent_data.dir/depend:
	cd /home/spjy/cosmos/source/core/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/spjy/cosmos/source/core /home/spjy/cosmos/source/core/programs/agents /home/spjy/cosmos/source/core/build /home/spjy/cosmos/source/core/build/programs/agents /home/spjy/cosmos/source/core/build/programs/agents/CMakeFiles/agent_data.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/agents/CMakeFiles/agent_data.dir/depend

