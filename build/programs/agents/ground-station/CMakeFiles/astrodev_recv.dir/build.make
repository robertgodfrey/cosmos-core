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
include programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/depend.make

# Include the progress variables for this target.
include programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/progress.make

# Include the compile flags for this target's objects.
include programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/flags.make

programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/astrodev_recv.cpp.o: programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/flags.make
programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/astrodev_recv.cpp.o: ../programs/agents/ground-station/astrodev_recv.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spjy/cosmos/source/core/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/astrodev_recv.cpp.o"
	cd /home/spjy/cosmos/source/core/build/programs/agents/ground-station && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/astrodev_recv.dir/astrodev_recv.cpp.o -c /home/spjy/cosmos/source/core/programs/agents/ground-station/astrodev_recv.cpp

programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/astrodev_recv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/astrodev_recv.dir/astrodev_recv.cpp.i"
	cd /home/spjy/cosmos/source/core/build/programs/agents/ground-station && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/spjy/cosmos/source/core/programs/agents/ground-station/astrodev_recv.cpp > CMakeFiles/astrodev_recv.dir/astrodev_recv.cpp.i

programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/astrodev_recv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/astrodev_recv.dir/astrodev_recv.cpp.s"
	cd /home/spjy/cosmos/source/core/build/programs/agents/ground-station && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/spjy/cosmos/source/core/programs/agents/ground-station/astrodev_recv.cpp -o CMakeFiles/astrodev_recv.dir/astrodev_recv.cpp.s

programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/astrodev_recv.cpp.o.requires:

.PHONY : programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/astrodev_recv.cpp.o.requires

programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/astrodev_recv.cpp.o.provides: programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/astrodev_recv.cpp.o.requires
	$(MAKE) -f programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/build.make programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/astrodev_recv.cpp.o.provides.build
.PHONY : programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/astrodev_recv.cpp.o.provides

programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/astrodev_recv.cpp.o.provides.build: programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/astrodev_recv.cpp.o


# Object files for target astrodev_recv
astrodev_recv_OBJECTS = \
"CMakeFiles/astrodev_recv.dir/astrodev_recv.cpp.o"

# External object files for target astrodev_recv
astrodev_recv_EXTERNAL_OBJECTS =

programs/agents/ground-station/astrodev_recv: programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/astrodev_recv.cpp.o
programs/agents/ground-station/astrodev_recv: programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/build.make
programs/agents/ground-station/astrodev_recv: libraries/device/serial/libCosmosDeviceSerial.a
programs/agents/ground-station/astrodev_recv: libraries/device/i2c/libCosmosDeviceI2C.a
programs/agents/ground-station/astrodev_recv: libraries/device/disk/libCosmosDeviceDisk.a
programs/agents/ground-station/astrodev_recv: libraries/device/cpu/libCosmosDeviceCpu.a
programs/agents/ground-station/astrodev_recv: libraries/device/ccsds/libCosmosDeviceCcsds.a
programs/agents/ground-station/astrodev_recv: libraries/device/astrodev/libCosmosDeviceAstrodev.a
programs/agents/ground-station/astrodev_recv: libraries/device/arduino/libCosmosDeviceArduino.a
programs/agents/ground-station/astrodev_recv: libraries/device/general/libCosmosDeviceGeneral.a
programs/agents/ground-station/astrodev_recv: libraries/agent/libCosmosAgent.a
programs/agents/ground-station/astrodev_recv: libraries/physics/libCosmosPhysics.a
programs/agents/ground-station/astrodev_recv: libraries/support/libCosmosSupport.a
programs/agents/ground-station/astrodev_recv: libraries/math/libCosmosMath.a
programs/agents/ground-station/astrodev_recv: libraries/device/disk/libCosmosDeviceDisk.a
programs/agents/ground-station/astrodev_recv: libraries/device/cpu/libCosmosDeviceCpu.a
programs/agents/ground-station/astrodev_recv: libraries/device/disk/libCosmosDeviceDisk.a
programs/agents/ground-station/astrodev_recv: libraries/device/cpu/libCosmosDeviceCpu.a
programs/agents/ground-station/astrodev_recv: libraries/device/general/libCosmosDeviceGeneral.a
programs/agents/ground-station/astrodev_recv: libraries/support/libCosmosSupport.a
programs/agents/ground-station/astrodev_recv: libraries/math/libCosmosMath.a
programs/agents/ground-station/astrodev_recv: libraries/thirdparty/zlib/liblocalzlib.a
programs/agents/ground-station/astrodev_recv: programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/spjy/cosmos/source/core/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable astrodev_recv"
	cd /home/spjy/cosmos/source/core/build/programs/agents/ground-station && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/astrodev_recv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/build: programs/agents/ground-station/astrodev_recv

.PHONY : programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/build

programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/requires: programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/astrodev_recv.cpp.o.requires

.PHONY : programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/requires

programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/clean:
	cd /home/spjy/cosmos/source/core/build/programs/agents/ground-station && $(CMAKE_COMMAND) -P CMakeFiles/astrodev_recv.dir/cmake_clean.cmake
.PHONY : programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/clean

programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/depend:
	cd /home/spjy/cosmos/source/core/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/spjy/cosmos/source/core /home/spjy/cosmos/source/core/programs/agents/ground-station /home/spjy/cosmos/source/core/build /home/spjy/cosmos/source/core/build/programs/agents/ground-station /home/spjy/cosmos/source/core/build/programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/agents/ground-station/CMakeFiles/astrodev_recv.dir/depend

