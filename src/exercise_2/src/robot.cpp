#include "ros/ros.h"
#include "exercise_2/robotStateSrv.h"
#include "exercise_1/robotMsg.h"
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

bool handle(exercise_2::robotStateSrv::Request &req, exercise_2::robotStateSrv::Response &res) {
    res.header = req.header;
    res.message = generateRandomMsg();
    ROS_INFO("Handling request: id=%d", (int)req.id);
    return true;
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "robot_state_server");
    ros::NodeHandle n;
    ros::ServiceServer service = n.advertiseService("robot_state", handle);
    ROS_INFO("Ready to answer for robot_state.");
    ros::spin();
    return 0;
}