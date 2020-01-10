# Install script for directory: /home/spjy/cosmos/source/core/libraries/support

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/spjy/cosmos")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/spjy/cosmos/source/core/build/libraries/support/libCosmosSupport.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/support" TYPE FILE FILES
    "/home/spjy/cosmos/source/core/libraries/support/command_queue.h"
    "/home/spjy/cosmos/source/core/libraries/support/configCosmos.h"
    "/home/spjy/cosmos/source/core/libraries/support/convertdef.h"
    "/home/spjy/cosmos/source/core/libraries/support/convertlib.h"
    "/home/spjy/cosmos/source/core/libraries/support/cosmos-defs.h"
    "/home/spjy/cosmos/source/core/libraries/support/cosmos-errno.h"
    "/home/spjy/cosmos/source/core/libraries/support/datadef.h"
    "/home/spjy/cosmos/source/core/libraries/support/datalib.h"
    "/home/spjy/cosmos/source/core/libraries/support/demlib.h"
    "/home/spjy/cosmos/source/core/libraries/support/elapsedtime.h"
    "/home/spjy/cosmos/source/core/libraries/support/ephemlib.h"
    "/home/spjy/cosmos/source/core/libraries/support/estimation_lib.h"
    "/home/spjy/cosmos/source/core/libraries/support/event.h"
    "/home/spjy/cosmos/source/core/libraries/support/geomag.h"
    "/home/spjy/cosmos/source/core/libraries/support/jpleph.h"
    "/home/spjy/cosmos/source/core/libraries/support/jsondef.h"
    "/home/spjy/cosmos/source/core/libraries/support/jsonlib.h"
    "/home/spjy/cosmos/source/core/libraries/support/nrlmsise-00.h"
    "/home/spjy/cosmos/source/core/libraries/support/objlib.h"
    "/home/spjy/cosmos/source/core/libraries/support/print_utils.h"
    "/home/spjy/cosmos/source/core/libraries/support/sliplib.h"
    "/home/spjy/cosmos/source/core/libraries/support/socketlib.h"
    "/home/spjy/cosmos/source/core/libraries/support/stringlib.h"
    "/home/spjy/cosmos/source/core/libraries/support/timelib.h"
    "/home/spjy/cosmos/source/core/libraries/support/timeutils.h"
    "/home/spjy/cosmos/source/core/libraries/support/transferlib.h"
    )
endif()

