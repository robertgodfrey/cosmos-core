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
include libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/depend.make

# Include the progress variables for this target.
include libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/progress.make

# Include the compile flags for this target's objects.
include libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/flags.make

libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/astrodev_lib.cpp.o: libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/flags.make
libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/astrodev_lib.cpp.o: ../libraries/device/astrodev/astrodev_lib.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/spjy/cosmos/source/core/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/astrodev_lib.cpp.o"
	cd /home/spjy/cosmos/source/core/build/libraries/device/astrodev && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CosmosDeviceAstrodev.dir/astrodev_lib.cpp.o -c /home/spjy/cosmos/source/core/libraries/device/astrodev/astrodev_lib.cpp

libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/astrodev_lib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CosmosDeviceAstrodev.dir/astrodev_lib.cpp.i"
	cd /home/spjy/cosmos/source/core/build/libraries/device/astrodev && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/spjy/cosmos/source/core/libraries/device/astrodev/astrodev_lib.cpp > CMakeFiles/CosmosDeviceAstrodev.dir/astrodev_lib.cpp.i

libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/astrodev_lib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CosmosDeviceAstrodev.dir/astrodev_lib.cpp.s"
	cd /home/spjy/cosmos/source/core/build/libraries/device/astrodev && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/spjy/cosmos/source/core/libraries/device/astrodev/astrodev_lib.cpp -o CMakeFiles/CosmosDeviceAstrodev.dir/astrodev_lib.cpp.s

libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/astrodev_lib.cpp.o.requires:

.PHONY : libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/astrodev_lib.cpp.o.requires

libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/astrodev_lib.cpp.o.provides: libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/astrodev_lib.cpp.o.requires
	$(MAKE) -f libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/build.make libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/astrodev_lib.cpp.o.provides.build
.PHONY : libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/astrodev_lib.cpp.o.provides

libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/astrodev_lib.cpp.o.provides.build: libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/astrodev_lib.cpp.o


# Object files for target CosmosDeviceAstrodev
CosmosDeviceAstrodev_OBJECTS = \
"CMakeFiles/CosmosDeviceAstrodev.dir/astrodev_lib.cpp.o"

# External object files for target CosmosDeviceAstrodev
CosmosDeviceAstrodev_EXTERNAL_OBJECTS =

libraries/device/astrodev/libCosmosDeviceAstrodev.a: libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/astrodev_lib.cpp.o
libraries/device/astrodev/libCosmosDeviceAstrodev.a: libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/build.make
libraries/device/astrodev/libCosmosDeviceAstrodev.a: libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/spjy/cosmos/source/core/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libCosmosDeviceAstrodev.a"
	cd /home/spjy/cosmos/source/core/build/libraries/device/astrodev && $(CMAKE_COMMAND) -P CMakeFiles/CosmosDeviceAstrodev.dir/cmake_clean_target.cmake
	cd /home/spjy/cosmos/source/core/build/libraries/device/astrodev && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CosmosDeviceAstrodev.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/build: libraries/device/astrodev/libCosmosDeviceAstrodev.a

.PHONY : libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/build

libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/requires: libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/astrodev_lib.cpp.o.requires

.PHONY : libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/requires

libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/clean:
	cd /home/spjy/cosmos/source/core/build/libraries/device/astrodev && $(CMAKE_COMMAND) -P CMakeFiles/CosmosDeviceAstrodev.dir/cmake_clean.cmake
.PHONY : libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/clean

libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/depend:
	cd /home/spjy/cosmos/source/core/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/spjy/cosmos/source/core /home/spjy/cosmos/source/core/libraries/device/astrodev /home/spjy/cosmos/source/core/build /home/spjy/cosmos/source/core/build/libraries/device/astrodev /home/spjy/cosmos/source/core/build/libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libraries/device/astrodev/CMakeFiles/CosmosDeviceAstrodev.dir/depend

