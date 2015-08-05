/********************************************************************
* Copyright (C) 2015 by Interstel Technologies, Inc.
*   and Hawaii Space Flight Laboratory.
*
* This file is part of the COSMOS/core that is the central
* module for COSMOS. For more information on COSMOS go to
* <http://cosmos-project.com>
*
* The COSMOS/core software is licenced under the
* GNU Lesser General Public License (LGPL) version 3 licence.
*
* You should have received a copy of the
* GNU Lesser General Public License
* If not, go to <http://www.gnu.org/licenses/>
*
* COSMOS/core is free software: you can redistribute it and/or
* modify it under the terms of the GNU Lesser General Public License
* as published by the Free Software Foundation, either version 3 of
* the License, or (at your option) any later version.
*
* COSMOS/core is distributed in the hope that it will be useful, but
* WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* Lesser General Public License for more details.
*
* Refer to the "licences" folder for further information on the
* condititons and terms to use this software.
********************************************************************/

// ?? remove ElapsedTime from timelib.h and use this one instead

// just for the old code for timeval, deprecated
//#if defined(_MSC_VER) && (_MSC_VER >= 1020)
//#include <winsock.h>
//#endif

#ifndef ELAPSED_TIME
#define ELAPSED_TIME

//#include "configCosmos.h" // avoid including this if not really needed
#include <iostream>
#include <string>
#include <ctime>

#ifdef BUILD_TYPE_arm
#include <sys/time.h>
#else
#include <chrono>
#endif

//using namespace std;  // don't use this as it may cause conflicts with other namespaces

// profiling class
// On windows using MinGw32 it does not get better than 1ms
class ElapsedTime {
    //new for c++11
#ifdef BUILD_TYPE_arm
    //	struct timespec timeStart, timeNow, timeCheck;
    timeval timeStart, timeNow, timeCheck;
#else
    std::chrono::steady_clock::time_point timeStart, timeNow, timeCheck; //timeStop
#endif

public:
    //int timeval_subtract (struct timeval* result, struct timeval* x, struct timeval* y);
    //float elapsed_time(struct timeval a,struct timeval b);
    void printElapsedTime();
    void printElapsedTime(std::string text);
    double getElapsedTimeMiliSeconds();
    double lap();
    double split();
    double getElapsedTime();

    void tic();
    double toc();
    //double toc(bool print_flag);
    double toc(std::string text);
    void reset();

    void start();
    //    double stop();
    double check();

    // turn on/off printing
    bool print = true; //
    double elapsedTime = 0.; // equivalent to reset chrono
    void info();
};



//class ElapsedTimeOld {
//    // old plain c
//    struct timeval time1, time2;

//    //IN UNIX the use of the timezone struct is obsolete;
//    //See http://linux.about.com/od/commands/l/blcmdl2_gettime.htm
//    struct timezone x;
//    float timeDiff;


//public:
//    int timeval_subtract (struct timeval* result, struct timeval* x, struct timeval* y);
//    float elapsed_time(struct timeval a,struct timeval b);
//};

#endif
