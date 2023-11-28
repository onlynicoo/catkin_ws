#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <exercise_3/my_actionAction.h>
class RobotServer
{
protected:
    ros::NodeHandle nh_;
    actionlib::SimpleActionServer<exercise_3::my_actionAction> as_;
    std::string action_name_;
    exercise_3::my_actionFeedback feedback_;
    exercise_3::my_actionResult result_;

    int current_battery = 5;
    int increment;

public:
    RobotServer(std::string name) : as_(nh_, name, boost::bind(&RobotServer::executeCB, this, _1),
                                            false),
                                        action_name_(name)
    {
        as_.start();
    }
    ~RobotServer(void) {}

    void executeCB(const exercise_3::my_actionGoalConstPtr &goal)
    {
        increment = (int)(float((goal->max_battery - current_battery)/60));
        
        ros::Rate r(1);
        bool success = false;

        // Set the loop rate to 1Hz
        ros::Rate rate(1.0);

        while (ros::ok()) {

            ROS_INFO("the increment is: %d\nThe curr battery is. %d\n", increment, current_battery);
            

            // Update battery state
            current_battery += increment;

            // Give feedback to station
            feedback_.curr_battery = current_battery;
            as_.publishFeedback(feedback_);

            // Check if the max_battery is achived
            success = current_battery >= goal->max_battery;
            

            if (success) {
                result_.reached = success;
                // compile the std_msgs of result header
                as_.setSucceeded(result_);
                break;
            }

            // Sleep to maintain the 1Hz rate
            rate.sleep();
        }
    }
};


int main(int argc, char **argv)
{
    ros::init(argc, argv, "Robot");
    RobotServer robot("Rob");
    ros::spin();
    return 0;
}