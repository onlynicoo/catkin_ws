#include "ros/ros.h"
#include "exercise_1/robotMsg.h"

void messageCallback(const exercise_1::robotMsg::ConstPtr &msg) {
    ROS_INFO("Current Room: %d (%s) - Battery Level: %d",
            msg->roomId, (msg->roomName).c_str(), msg->batteryLevel);
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "station");
    ros::NodeHandle n;
    ros::Subscriber sub = n.subscribe("message", 1000, messageCallback);
    ros::spin();
    return 0;
}