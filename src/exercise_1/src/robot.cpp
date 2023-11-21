#include "ros/ros.h"
#include "exercise_1/robotMsg.h"
#include <sstream>
#include <cstdlib>

const char* ROOM_NAME[5] = { "Robot Vision Lab", "SSL Lab", "Neurorobotics Lab", "IAS-Lab", "Autonomous Robotics Lab"};
const int MAX_BATTERY_LEVEL = 100;

exercise_1::robotMsg generateRandomMsg() {
    exercise_1::robotMsg msg;
    msg.roomId = rand() % (sizeof(ROOM_NAME)/sizeof(ROOM_NAME[0])) + 1;
    msg.roomName = ROOM_NAME[msg.roomId - 1];
    msg.batteryLevel = rand() % MAX_BATTERY_LEVEL;
    return msg;
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "robot");
    ros::NodeHandle n;
    ros::Publisher pub = n.advertise<exercise_1::robotMsg>("message", 1000);
    ros::Rate loop_rate(5);
    while (ros::ok())
    {
        exercise_1::robotMsg msg = generateRandomMsg();
        pub.publish(msg);
        ros::spinOnce();
        loop_rate.sleep();
    }
    // test
    return 0;
}