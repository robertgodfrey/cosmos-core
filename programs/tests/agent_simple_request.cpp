#include "support/configCosmos.h"
#include "support/elapsedtime.h"
#include "support/timeutils.h"
#include "agent/agentclass.h"
#include "support/cosmos-errno.h"

#include <iostream>
#include <string>

Cosmos::Support::Error e;
static Agent *agent;
int32_t request_add(string &request, string &response, Agent* agent){

    vector<string> args = string_split(request);
    if(args.size() < 3) { // incorrect arg count
        return AGENT_ERROR_REQUEST;
    }

    // reading argument in as int
    int num1 = stoi(args[1]);
    int num2 = stoi(args[2]);
    // use the argument to do something
    int sum = num1+ num2;
    // return the response string
    response = to_signed(sum);
    return 0;
}

int32_t request_hello(string &request, string &response, Agent* agent){

   response ="HelloWorld";

    return 0;
}

int main(int argc, char **argv)
{
    int32_t status = 0;
    agent = new Agent("", "","test_simple_request");

    status = agent->add_request("add", request_add, "int1 int2", "returns the sum of 2 integers");
    status = agent->add_request("hello", request_hello, "", "replies with: \"HelloWorld\"");

    //adding a device
    devicestruc *sun1 = nullptr;
    status = agent->add_device("sun1", DeviceType::SSEN, &sun1);
    if(status < 0){
        cout << e.ErrorString(status) << endl;
    }
    reinterpret_cast<ssenstruc *>(sun1)->azimuth = 50.;
    cout << reinterpret_cast<ssenstruc *>(sun1)->azimuth << endl;

    string sun2_utc;
    status = agent->device_property_name("sun2", "utc", sun2_utc);
    if(status < 0){
        cout << e.ErrorString(status) << endl;
    }
    cout << sun2_utc << endl;
    string azi;
    status = agent->device_property_name("sun2", "azimuth", azi);
    if(status < 0){
        cout << e.ErrorString(status) << endl;
    }
    cout << azi  << endl;





}
