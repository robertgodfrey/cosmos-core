#include "support/configCosmos.h"
#include "agent/agentclass.h"
#include "device/general/ic9100_lib.h"

static ic9100_handle ic9100;
static Agent *agent;
static std::string nodename="";
static std::string radioname;
static size_t deviceindex;
static size_t radioindex = 9999;
static std::string radiodevice;
static uint16_t radioaddr;
static bool radioconnected = false;
static bool radioenabled = false;
static float freqoffset;
static string port;

static uint16_t model;
static uint16_t radiotype = static_cast<uint16_t>(DeviceType::NONE);
static float freq;
static float band;
static uint8_t opmode = static_cast<uint8_t>(DEVICE_RADIO_MODE_UNDEF);

double value1 = 0.;
double value2 = 0.;
string command = "";


int main(int argc, char *argv[])
{
    int32_t iretn;

    switch (argc)
    {
    case 9:
        if (static_cast<string>("ic9100") == argv[3])
        {
            model = static_cast<uint16_t>(DEVICE_MODEL_IC9100);
            port = argv[8];
            radioaddr = stoi(port.substr(port.find(':')+1));
            port = port.substr(0, port.find(':'));
        }
        else if (static_cast<string>("astrodev") == argv[3])
        {
            model = static_cast<uint16_t>(DEVICE_MODEL_ASTRODEV);
            port = argv[8];
        }
        else if (static_cast<string>("usrp") == argv[3])
        {
            model = static_cast<uint16_t>(DEVICE_MODEL_USRP);
            port = argv[8];
            radioaddr = stoi(port.substr(port.find(':')+1));
            port = port.substr(0, port.find(':'));
        }
        if (static_cast<string>("txr") == argv[4])
        {
            radiotype = static_cast<uint16_t>(DeviceType::TXR);
        }
        else if (static_cast<string>("rxr") == argv[4])
        {
            radiotype = static_cast<uint16_t>(DeviceType::RXR);
        }
        else if (static_cast<string>("tcv") == argv[4])
        {
            radiotype = static_cast<uint16_t>(DeviceType::TCV);
        }
        freq = atof(argv[5]);
        band = atof(argv[6]);
        if (static_cast<string>("am") == argv[7])
        {
            opmode = static_cast<uint16_t>(DEVICE_RADIO_MODE_AM);
        }
        else if (static_cast<string>("amd") == argv[7])
        {
            opmode = static_cast<uint16_t>(DEVICE_RADIO_MODE_AMD);
        }
        else if (static_cast<string>("fm") == argv[7])
        {
            opmode = static_cast<uint16_t>(DEVICE_RADIO_MODE_FM);
        }
        else if (static_cast<string>("fmd") == argv[7])
        {
            opmode = static_cast<uint16_t>(DEVICE_RADIO_MODE_FMD);
        }
        else if (static_cast<string>("lsb") == argv[7])
        {
            opmode = static_cast<uint16_t>(DEVICE_RADIO_MODE_LSB);
        }
        else if (static_cast<string>("lsbd") == argv[7])
        {
            opmode = static_cast<uint16_t>(DEVICE_RADIO_MODE_LSBD);
        }
        else if (static_cast<string>("usb") == argv[7])
        {
            opmode = static_cast<uint16_t>(DEVICE_RADIO_MODE_USB);
        }
        else if (static_cast<string>("usbd") == argv[7])
        {
            opmode = static_cast<uint16_t>(DEVICE_RADIO_MODE_USBD);
        }
        else if (static_cast<string>("dv") == argv[7])
        {
            opmode = static_cast<uint16_t>(DEVICE_RADIO_MODE_DV);
        }
        else if (static_cast<string>("dvd") == argv[7])
        {
            opmode = static_cast<uint16_t>(DEVICE_RADIO_MODE_DVD);
        }
        else if (static_cast<string>("cw") == argv[7])
        {
            opmode = static_cast<uint16_t>(DEVICE_RADIO_MODE_CW);
        }
        else if (static_cast<string>("cwr") == argv[7])
        {
            opmode = static_cast<uint16_t>(DEVICE_RADIO_MODE_CWR);
        }
        else if (static_cast<string>("rtty") == argv[7])
        {
            opmode = static_cast<uint16_t>(DEVICE_RADIO_MODE_RTTY);
        }
        else if (static_cast<string>("rttyr") == argv[7])
        {
            opmode = static_cast<uint16_t>(DEVICE_RADIO_MODE_RTTYR);
        }
        nodename = argv[2];
        radioname = argv[1];
        break;
    case 6:
        nodename = argv[5];
    case 5:
        value2 = atof(argv[4]);
    case 4:
        value2 = atof(argv[3]);
    case 3:
        command = argv[2];
        radioname = argv[1];
        break;
    default:
        printf("Usage: agent->radio radioname [nodename  [ic9100/astrodev txr/rxr/tcv frequency bandwidth mode device:addr]]");
        exit (1);
        break;
    }

    // Establish the command channel and heartbeat
    agent = new Agent(nodename);

    if ((iretn = agent->wait()) < 0)
    {
        fprintf(agent->get_debug_fd(), "%16.10f %s Failed to start Agent %s on Node %s Dated %s : %s\n",currentmjd(), mjd2iso8601(currentmjd()).c_str(), agent->getAgent().c_str(), agent->getNode().c_str(), utc2iso8601(data_ctime(argv[0])).c_str(), cosmos_error_string(iretn).c_str());
        exit(iretn);
    }
    else
    {
        fprintf(agent->get_debug_fd(), "%16.10f %s Started Agent %s on Node %s Dated %s\n",currentmjd(), mjd2iso8601(currentmjd()).c_str(), agent->getAgent().c_str(), agent->getNode().c_str(), utc2iso8601(data_ctime(argv[0])).c_str());
    }

    if (argc > 6)
    {
        switch (radiotype)
        {
        case static_cast<uint16_t>(DeviceType::TXR):
            iretn = json_createpiece(agent->cinfo, radioname, DeviceType::TXR);
            deviceindex = agent->cinfo->pieces[static_cast <uint16_t>(iretn)].cidx;
            radioindex = agent->cinfo->device[deviceindex].txr.didx;
            break;
        case static_cast<uint16_t>(DeviceType::RXR):
            iretn = json_createpiece(agent->cinfo, radioname, DeviceType::RXR);
            deviceindex = agent->cinfo->pieces[static_cast <uint16_t>(iretn)].cidx;
            radioindex = agent->cinfo->device[deviceindex].rxr.didx;
            break;
        case static_cast<uint16_t>(DeviceType::TCV):
            iretn = json_createpiece(agent->cinfo, radioname, DeviceType::TCV);
            deviceindex = agent->cinfo->pieces[static_cast <uint16_t>(iretn)].cidx;
            radioindex = agent->cinfo->device[deviceindex].tcv.didx;
            break;
        }
        agent->cinfo->device[deviceindex].all.model = model;
        agent->cinfo->device[deviceindex].all.type = radiotype;
        agent->cinfo->device[deviceindex].tcv.freq = freq;
        agent->cinfo->device[deviceindex].tcv.band = band;
        agent->cinfo->device[deviceindex].tcv.opmode = opmode;
        if (model == static_cast<uint16_t>(DEVICE_MODEL_IC9100))
        {
            agent->cinfo->device[deviceindex].all.addr = radioaddr;
            iretn = json_createport(agent->cinfo, port, PORT_TYPE_RS232);
            if (iretn >= 0)
            {
                agent->cinfo->device[deviceindex].all.portidx = iretn;
            }
        }
        else if (model == static_cast<uint16_t>(DEVICE_MODEL_TS2000))
        {
            iretn = json_createport(agent->cinfo, port, PORT_TYPE_RS232);
            if (iretn >= 0)
            {
                agent->cinfo->device[deviceindex].all.portidx = iretn;
            }
        }
        else if (model == static_cast<uint16_t>(DEVICE_MODEL_USRP))
        {
            agent->cinfo->device[deviceindex].all.addr = radioaddr;
            iretn = json_createport(agent->cinfo, port, PORT_TYPE_UDP);
            if (iretn >= 0)
            {
                agent->cinfo->device[deviceindex].all.portidx = iretn;
            }
        }
        iretn = json_dump_node(agent->cinfo);
    }
    // Look for named radio so we can use the right one
    if (radiotype == 9999)
    {
        for (size_t i=0; i<agent->cinfo->devspec.rxr_cnt; ++i)
        {
            if (!strcmp(radioname.c_str(), agent->cinfo->pieces[agent->cinfo->device[agent->cinfo->devspec.rxr[i]].all.pidx].name))
            {
                deviceindex = agent->cinfo->devspec.rxr[i];
                radioindex = i;
                radiotype = static_cast<uint16_t>(DeviceType::RXR);
                break;
            }
        }
    }

    if (radiotype == 9999)
    {
        for (size_t i=0; i<agent->cinfo->devspec.txr_cnt; ++i)
        {
            if (!strcmp(radioname.c_str(), agent->cinfo->pieces[agent->cinfo->device[agent->cinfo->devspec.txr[i]].all.pidx].name))
            {
                deviceindex = agent->cinfo->devspec.txr[i];
                radioindex = i;
                radiotype = static_cast<uint16_t>(DeviceType::TXR);
                break;
            }
        }
    }

    if (radiotype == 9999)
    {
        for (size_t i=0; i<agent->cinfo->devspec.tcv_cnt; ++i)
        {
            if (!strcmp(radioname.c_str(), agent->cinfo->pieces[agent->cinfo->device[agent->cinfo->devspec.tcv[i]].all.pidx].name))
            {
                deviceindex = agent->cinfo->devspec.tcv[i];
                radioindex = i;
                radiotype = static_cast<uint16_t>(DeviceType::TCV);
                break;
            }
        }
    }

    if (radiotype == 9999)
    {
        std::cout<<"Exiting " << radioname << " for Node: " << nodename << " no radio found." << std::endl;
        agent->shutdown();
        exit (1);
    }

    iretn = ic9100_connect(radiodevice, radioaddr, ic9100);
    if (iretn < 0)
    {
        printf("Unable to connect to IC9100: %s", cosmos_error_string(iretn).c_str());
        exit(iretn);
    }

    iretn = ic9100_set_channel(ic9100, 0);
    if (iretn < 0)
    {
        printf("Unable to set IC9100 to Main: %s", cosmos_error_string(iretn).c_str());
        exit(iretn);
    }

    if (command == "freq")
    {
        if (argc == 3)
        {
            iretn = ic9100_get_frequency(ic9100);
            if (iretn >= 0)
            {
                printf("Unable to get IC9100 Frequency: %s", cosmos_error_string(iretn).c_str());
            }
            else {
                printf("Frequency: %f Hz\n", ic9100.frequency);
            }
        }
        else {
            iretn = ic9100_set_frequency(ic9100, value1);
            if (iretn >= 0)
            {
                printf("Unable to set IC9100 Frequency: %s", cosmos_error_string(iretn).c_str());
            }
            else {
                iretn = ic9100_get_frequency(ic9100);
                printf("Frequency: %f Hz\n", ic9100.frequency);
            }
        }
    }
    else if (command == "rfpower")
    {
        iretn = ic9100_get_rfpower(ic9100);
        if (iretn >= 0)
        {
            printf("Unable to get IC9100 RFPower: %s", cosmos_error_string(iretn).c_str());
        }
        else {
            printf("RFPower: %f\n", ic9100.rfpower);
        }
    }

}
