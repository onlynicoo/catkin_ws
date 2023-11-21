#include "ros/ros.h"
#include "exercise_2/robotStateSrv.h"
#include <cstdlib>

int main(int argc, char **argv)
{

    if (argc != 3) {
        ROS_INFO("usage: station <id> <interval>");
        return 1;
    }

    exercise_2::robotStateSrv srv;
    int id = atoi(argv[1]);
    float interval = atof(argv[2]);
    srv.request.id = id;

    ros::init(argc, argv, "robot_state_client" + id);

    ros::NodeHandle n;
    ros::ServiceClient client = n.serviceClient<exercise_2::robotStateSrv>("robot_state");
    ros::Rate loop_rate(1 / interval);
    while (ros::ok()) {
        if (client.call(srv)) {
            ROS_INFO("Current Room: %d (%s) - Battery Level: %d",
                srv.response.message.roomId,
                (srv.response.message.roomName).c_str(),
                srv.response.message.batteryLevel
            );
        } else {
            ROS_ERROR("Failed to call service robot_state");
            return 1;
        }
        ros::spinOnce();
        loop_rate.sleep();
    }    
    return 0;
}