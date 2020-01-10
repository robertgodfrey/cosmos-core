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
include programs/agents/other/CMakeFiles/agent_physics.dir/depend.make

# Include the progress variables for this target.
include programs/agents/other/CMakeFiles/agent_physics.dir/progress.make

# Include the compile flags for this target's objects.
include programs/agents/other/CMakeFiles/agent_physics.dir/flags.make

programs/agents/other/CMakeFiles/agent_physics.dir/agent_physics.cpp.o: programs/agents/other/CMakeFiles/agent_physics.dir/flags.make
programs/agents/other/CMakeFiles/agent_physics.dir/agent_physics.cpp.o: ../programs/agents/other/agent_physics.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spjy/cosmos/source/core/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object programs/agents/other/CMakeFiles/agent_physics.dir/agent_physics.cpp.o"
	cd /home/spjy/cosmos/source/core/build/programs/agents/other && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/agent_physics.dir/agent_physics.cpp.o -c /home/spjy/cosmos/source/core/programs/agents/other/agent_physics.cpp

programs/agents/other/CMakeFiles/agent_physics.dir/agent_physics.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/agent_physics.dir/agent_physics.cpp.i"
	cd /home/spjy/cosmos/source/core/build/programs/agents/other && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/spjy/cosmos/source/core/programs/agents/other/agent_physics.cpp > CMakeFiles/agent_physics.dir/agent_physics.cpp.i

programs/agents/other/CMakeFiles/agent_physics.dir/agent_physics.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/agent_physics.dir/agent_physics.cpp.s"
	cd /home/spjy/cosmos/source/core/build/programs/agents/other && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/spjy/cosmos/source/core/programs/agents/other/agent_physics.cpp -o CMakeFiles/agent_physics.dir/agent_physics.cpp.s

programs/agents/other/CMakeFiles/agent_physics.dir/agent_physics.cpp.o.requires:

.PHONY : programs/agents/other/CMakeFiles/agent_physics.dir/agent_physics.cpp.o.requires

programs/agents/other/CMakeFiles/agent_physics.dir/agent_physics.cpp.o.provides: programs/agents/other/CMakeFiles/agent_physics.dir/agent_physics.cpp.o.requires
	$(MAKE) -f programs/agents/other/CMakeFiles/agent_physics.dir/build.make programs/agents/other/CMakeFiles/agent_physics.dir/agent_physics.cpp.o.provides.build
.PHONY : programs/agents/other/CMakeFiles/agent_physics.dir/agent_physics.cpp.o.provides

programs/agents/other/CMakeFiles/agent_physics.dir/agent_physics.cpp.o.provides.build: programs/agents/other/CMakeFiles/agent_physics.dir/agent_physics.cpp.o


# Object files for target agent_physics
agent_physics_OBJECTS = \
"CMakeFiles/agent_physics.dir/agent_physics.cpp.o"

# External object files for target agent_physics
agent_physics_EXTERNAL_OBJECTS =

programs/agents/other/agent_physics: programs/agents/other/CMakeFiles/agent_physics.dir/agent_physics.cpp.o
programs/agents/other/agent_physics: programs/agents/other/CMakeFiles/agent_physics.dir/build.make
programs/agents/other/agent_physics: libraries/device/serial/libCosmosDeviceSerial.a
programs/agents/other/agent_physics: libraries/device/i2c/libCosmosDeviceI2C.a
programs/agents/other/agent_physics: libraries/device/disk/libCosmosDeviceDisk.a
programs/agents/other/agent_physics: libraries/device/cpu/libCosmosDeviceCpu.a
programs/agents/other/agent_physics: libraries/device/ccsds/libCosmosDeviceCcsds.a
programs/agents/other/agent_physics: libraries/device/astrodev/libCosmosDeviceAstrodev.a
programs/agents/other/agent_physics: libraries/device/arduino/libCosmosDeviceArduino.a
programs/agents/other/agent_physics: libraries/device/general/libCosmosDeviceGeneral.a
programs/agents/other/agent_physics: libraries/agent/libCosmosAgent.a
programs/agents/other/agent_physics: libraries/physics/libCosmosPhysics.a
programs/agents/other/agent_physics: libraries/support/libCosmosSupport.a
programs/agents/other/agent_physics: libraries/math/libCosmosMath.a
programs/agents/other/agent_physics: libraries/device/disk/libCosmosDeviceDisk.a
programs/agents/other/agent_physics: libraries/device/cpu/libCosmosDeviceCpu.a
programs/agents/other/agent_physics: libraries/device/disk/libCosmosDeviceDisk.a
programs/agents/other/agent_physics: libraries/device/cpu/libCosmosDeviceCpu.a
programs/agents/other/agent_physics: libraries/device/general/libCosmosDeviceGeneral.a
programs/agents/other/agent_physics: libraries/support/libCosmosSupport.a
programs/agents/other/agent_physics: libraries/math/libCosmosMath.a
programs/agents/other/agent_physics: libraries/thirdparty/zlib/liblocalzlib.a
programs/agents/other/agent_physics: programs/agents/other/CMakeFiles/agent_physics.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/spjy/cosmos/source/core/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable agent_physics"
	cd /home/spjy/cosmos/source/core/build/programs/agents/other && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/agent_physics.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
programs/agents/other/CMakeFiles/agent_physics.dir/build: programs/agents/other/agent_physics

.PHONY : programs/agents/other/CMakeFiles/agent_physics.dir/build

programs/agents/other/CMakeFiles/agent_physics.dir/requires: programs/agents/other/CMakeFiles/agent_physics.dir/agent_physics.cpp.o.requires

.PHONY : programs/agents/other/CMakeFiles/agent_physics.dir/requires

programs/agents/other/CMakeFiles/agent_physics.dir/clean:
	cd /home/spjy/cosmos/source/core/build/programs/agents/other && $(CMAKE_COMMAND) -P CMakeFiles/agent_physics.dir/cmake_clean.cmake
.PHONY : programs/agents/other/CMakeFiles/agent_physics.dir/clean

programs/agents/other/CMakeFiles/agent_physics.dir/depend:
	cd /home/spjy/cosmos/source/core/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/spjy/cosmos/source/core /home/spjy/cosmos/source/core/programs/agents/other /home/spjy/cosmos/source/core/build /home/spjy/cosmos/source/core/build/programs/agents/other /home/spjy/cosmos/source/core/build/programs/agents/other/CMakeFiles/agent_physics.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/agents/other/CMakeFiles/agent_physics.dir/depend

