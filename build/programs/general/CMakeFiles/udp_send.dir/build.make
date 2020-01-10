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
include programs/general/CMakeFiles/udp_send.dir/depend.make

# Include the progress variables for this target.
include programs/general/CMakeFiles/udp_send.dir/progress.make

# Include the compile flags for this target's objects.
include programs/general/CMakeFiles/udp_send.dir/flags.make

programs/general/CMakeFiles/udp_send.dir/udp_send.cpp.o: programs/general/CMakeFiles/udp_send.dir/flags.make
programs/general/CMakeFiles/udp_send.dir/udp_send.cpp.o: ../programs/general/udp_send.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spjy/cosmos/source/core/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object programs/general/CMakeFiles/udp_send.dir/udp_send.cpp.o"
	cd /home/spjy/cosmos/source/core/build/programs/general && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/udp_send.dir/udp_send.cpp.o -c /home/spjy/cosmos/source/core/programs/general/udp_send.cpp

programs/general/CMakeFiles/udp_send.dir/udp_send.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/udp_send.dir/udp_send.cpp.i"
	cd /home/spjy/cosmos/source/core/build/programs/general && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/spjy/cosmos/source/core/programs/general/udp_send.cpp > CMakeFiles/udp_send.dir/udp_send.cpp.i

programs/general/CMakeFiles/udp_send.dir/udp_send.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/udp_send.dir/udp_send.cpp.s"
	cd /home/spjy/cosmos/source/core/build/programs/general && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/spjy/cosmos/source/core/programs/general/udp_send.cpp -o CMakeFiles/udp_send.dir/udp_send.cpp.s

programs/general/CMakeFiles/udp_send.dir/udp_send.cpp.o.requires:

.PHONY : programs/general/CMakeFiles/udp_send.dir/udp_send.cpp.o.requires

programs/general/CMakeFiles/udp_send.dir/udp_send.cpp.o.provides: programs/general/CMakeFiles/udp_send.dir/udp_send.cpp.o.requires
	$(MAKE) -f programs/general/CMakeFiles/udp_send.dir/build.make programs/general/CMakeFiles/udp_send.dir/udp_send.cpp.o.provides.build
.PHONY : programs/general/CMakeFiles/udp_send.dir/udp_send.cpp.o.provides

programs/general/CMakeFiles/udp_send.dir/udp_send.cpp.o.provides.build: programs/general/CMakeFiles/udp_send.dir/udp_send.cpp.o


# Object files for target udp_send
udp_send_OBJECTS = \
"CMakeFiles/udp_send.dir/udp_send.cpp.o"

# External object files for target udp_send
udp_send_EXTERNAL_OBJECTS =

programs/general/udp_send: programs/general/CMakeFiles/udp_send.dir/udp_send.cpp.o
programs/general/udp_send: programs/general/CMakeFiles/udp_send.dir/build.make
programs/general/udp_send: libraries/device/serial/libCosmosDeviceSerial.a
programs/general/udp_send: libraries/device/i2c/libCosmosDeviceI2C.a
programs/general/udp_send: libraries/device/disk/libCosmosDeviceDisk.a
programs/general/udp_send: libraries/device/cpu/libCosmosDeviceCpu.a
programs/general/udp_send: libraries/device/ccsds/libCosmosDeviceCcsds.a
programs/general/udp_send: libraries/device/astrodev/libCosmosDeviceAstrodev.a
programs/general/udp_send: libraries/device/arduino/libCosmosDeviceArduino.a
programs/general/udp_send: libraries/device/general/libCosmosDeviceGeneral.a
programs/general/udp_send: libraries/agent/libCosmosAgent.a
programs/general/udp_send: libraries/physics/libCosmosPhysics.a
programs/general/udp_send: libraries/support/libCosmosSupport.a
programs/general/udp_send: libraries/math/libCosmosMath.a
programs/general/udp_send: libraries/device/disk/libCosmosDeviceDisk.a
programs/general/udp_send: libraries/device/cpu/libCosmosDeviceCpu.a
programs/general/udp_send: libraries/device/disk/libCosmosDeviceDisk.a
programs/general/udp_send: libraries/device/cpu/libCosmosDeviceCpu.a
programs/general/udp_send: libraries/device/general/libCosmosDeviceGeneral.a
programs/general/udp_send: libraries/support/libCosmosSupport.a
programs/general/udp_send: libraries/math/libCosmosMath.a
programs/general/udp_send: libraries/thirdparty/zlib/liblocalzlib.a
programs/general/udp_send: programs/general/CMakeFiles/udp_send.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/spjy/cosmos/source/core/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable udp_send"
	cd /home/spjy/cosmos/source/core/build/programs/general && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/udp_send.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
programs/general/CMakeFiles/udp_send.dir/build: programs/general/udp_send

.PHONY : programs/general/CMakeFiles/udp_send.dir/build

programs/general/CMakeFiles/udp_send.dir/requires: programs/general/CMakeFiles/udp_send.dir/udp_send.cpp.o.requires

.PHONY : programs/general/CMakeFiles/udp_send.dir/requires

programs/general/CMakeFiles/udp_send.dir/clean:
	cd /home/spjy/cosmos/source/core/build/programs/general && $(CMAKE_COMMAND) -P CMakeFiles/udp_send.dir/cmake_clean.cmake
.PHONY : programs/general/CMakeFiles/udp_send.dir/clean

programs/general/CMakeFiles/udp_send.dir/depend:
	cd /home/spjy/cosmos/source/core/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/spjy/cosmos/source/core /home/spjy/cosmos/source/core/programs/general /home/spjy/cosmos/source/core/build /home/spjy/cosmos/source/core/build/programs/general /home/spjy/cosmos/source/core/build/programs/general/CMakeFiles/udp_send.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/general/CMakeFiles/udp_send.dir/depend

