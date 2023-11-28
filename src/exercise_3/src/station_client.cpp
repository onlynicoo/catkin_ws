#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include <exercise_3/my_actionAction.h>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "station");
    actionlib::SimpleActionClient<exercise_3::my_actionAction> ac("Rob", true);

    ROS_INFO("Waiting for action server to start.");
    ac.waitForServer(); // will wait for infinite time
    ROS_INFO("Action server started, sending goal.");
    exercise_3::my_actionGoal goal;
    goal.max_battery = 65;
    ac.sendGoal(goal);
    bool finished_before_timeout = ac.waitForResult(ros::Duration(100.0));
    if (finished_before_timeout)
    {
        actionlib::SimpleClientGoalState state = ac.getState();
        ROS_INFO("Action finished: %s", state.toString().c_str());
    }
    else
        ROS_INFO("Action did not finish before the time out.");
    return 0;
}