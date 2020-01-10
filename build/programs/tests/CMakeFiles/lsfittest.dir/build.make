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
include programs/tests/CMakeFiles/lsfittest.dir/depend.make

# Include the progress variables for this target.
include programs/tests/CMakeFiles/lsfittest.dir/progress.make

# Include the compile flags for this target's objects.
include programs/tests/CMakeFiles/lsfittest.dir/flags.make

programs/tests/CMakeFiles/lsfittest.dir/lsfittest.cpp.o: programs/tests/CMakeFiles/lsfittest.dir/flags.make
programs/tests/CMakeFiles/lsfittest.dir/lsfittest.cpp.o: ../programs/tests/lsfittest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spjy/cosmos/source/core/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object programs/tests/CMakeFiles/lsfittest.dir/lsfittest.cpp.o"
	cd /home/spjy/cosmos/source/core/build/programs/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lsfittest.dir/lsfittest.cpp.o -c /home/spjy/cosmos/source/core/programs/tests/lsfittest.cpp

programs/tests/CMakeFiles/lsfittest.dir/lsfittest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lsfittest.dir/lsfittest.cpp.i"
	cd /home/spjy/cosmos/source/core/build/programs/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/spjy/cosmos/source/core/programs/tests/lsfittest.cpp > CMakeFiles/lsfittest.dir/lsfittest.cpp.i

programs/tests/CMakeFiles/lsfittest.dir/lsfittest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lsfittest.dir/lsfittest.cpp.s"
	cd /home/spjy/cosmos/source/core/build/programs/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/spjy/cosmos/source/core/programs/tests/lsfittest.cpp -o CMakeFiles/lsfittest.dir/lsfittest.cpp.s

programs/tests/CMakeFiles/lsfittest.dir/lsfittest.cpp.o.requires:

.PHONY : programs/tests/CMakeFiles/lsfittest.dir/lsfittest.cpp.o.requires

programs/tests/CMakeFiles/lsfittest.dir/lsfittest.cpp.o.provides: programs/tests/CMakeFiles/lsfittest.dir/lsfittest.cpp.o.requires
	$(MAKE) -f programs/tests/CMakeFiles/lsfittest.dir/build.make programs/tests/CMakeFiles/lsfittest.dir/lsfittest.cpp.o.provides.build
.PHONY : programs/tests/CMakeFiles/lsfittest.dir/lsfittest.cpp.o.provides

programs/tests/CMakeFiles/lsfittest.dir/lsfittest.cpp.o.provides.build: programs/tests/CMakeFiles/lsfittest.dir/lsfittest.cpp.o


# Object files for target lsfittest
lsfittest_OBJECTS = \
"CMakeFiles/lsfittest.dir/lsfittest.cpp.o"

# External object files for target lsfittest
lsfittest_EXTERNAL_OBJECTS =

programs/tests/lsfittest: programs/tests/CMakeFiles/lsfittest.dir/lsfittest.cpp.o
programs/tests/lsfittest: programs/tests/CMakeFiles/lsfittest.dir/build.make
programs/tests/lsfittest: libraries/device/serial/libCosmosDeviceSerial.a
programs/tests/lsfittest: libraries/device/i2c/libCosmosDeviceI2C.a
programs/tests/lsfittest: libraries/device/disk/libCosmosDeviceDisk.a
programs/tests/lsfittest: libraries/device/cpu/libCosmosDeviceCpu.a
programs/tests/lsfittest: libraries/device/ccsds/libCosmosDeviceCcsds.a
programs/tests/lsfittest: libraries/device/astrodev/libCosmosDeviceAstrodev.a
programs/tests/lsfittest: libraries/device/arduino/libCosmosDeviceArduino.a
programs/tests/lsfittest: libraries/device/general/libCosmosDeviceGeneral.a
programs/tests/lsfittest: libraries/agent/libCosmosAgent.a
programs/tests/lsfittest: libraries/physics/libCosmosPhysics.a
programs/tests/lsfittest: libraries/support/libCosmosSupport.a
programs/tests/lsfittest: libraries/math/libCosmosMath.a
programs/tests/lsfittest: libraries/device/disk/libCosmosDeviceDisk.a
programs/tests/lsfittest: libraries/device/cpu/libCosmosDeviceCpu.a
programs/tests/lsfittest: libraries/device/disk/libCosmosDeviceDisk.a
programs/tests/lsfittest: libraries/device/cpu/libCosmosDeviceCpu.a
programs/tests/lsfittest: libraries/device/general/libCosmosDeviceGeneral.a
programs/tests/lsfittest: libraries/support/libCosmosSupport.a
programs/tests/lsfittest: libraries/math/libCosmosMath.a
programs/tests/lsfittest: libraries/thirdparty/zlib/liblocalzlib.a
programs/tests/lsfittest: programs/tests/CMakeFiles/lsfittest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/spjy/cosmos/source/core/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable lsfittest"
	cd /home/spjy/cosmos/source/core/build/programs/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lsfittest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
programs/tests/CMakeFiles/lsfittest.dir/build: programs/tests/lsfittest

.PHONY : programs/tests/CMakeFiles/lsfittest.dir/build

programs/tests/CMakeFiles/lsfittest.dir/requires: programs/tests/CMakeFiles/lsfittest.dir/lsfittest.cpp.o.requires

.PHONY : programs/tests/CMakeFiles/lsfittest.dir/requires

programs/tests/CMakeFiles/lsfittest.dir/clean:
	cd /home/spjy/cosmos/source/core/build/programs/tests && $(CMAKE_COMMAND) -P CMakeFiles/lsfittest.dir/cmake_clean.cmake
.PHONY : programs/tests/CMakeFiles/lsfittest.dir/clean

programs/tests/CMakeFiles/lsfittest.dir/depend:
	cd /home/spjy/cosmos/source/core/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/spjy/cosmos/source/core /home/spjy/cosmos/source/core/programs/tests /home/spjy/cosmos/source/core/build /home/spjy/cosmos/source/core/build/programs/tests /home/spjy/cosmos/source/core/build/programs/tests/CMakeFiles/lsfittest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/tests/CMakeFiles/lsfittest.dir/depend

