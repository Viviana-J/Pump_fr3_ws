#include <math.h>
#include <ros/ros.h>
#include <iostream>
#include <chrono>
#include <thread>
#include <cmath>
#include <ros/console.h>
// #include <cv_bridge/cv_bridge.h>
#include <tf/transform_datatypes.h>
#include <std_msgs/String.h>
#include <sensor_msgs/CameraInfo.h>
#include <sensor_msgs/Image.h>
#include <image_transport/image_transport.h>

#include <control_msgs/FollowJointTrajectoryAction.h>

// #include <opencv2/opencv.hpp>
// #include <opencv2/core/core.hpp>
// #include <opencv2/calib3d/calib3d.hpp>

#include <moveit/planning_interface/planning_interface.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>
#include <moveit/planning_scene_monitor/planning_scene_monitor.h>
#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit_visual_tools/moveit_visual_tools.h>

// #include "franka_hw/franka_hw.h"

#include <franka_msgs/FrankaState.h>
#include <franka_gripper/franka_gripper.h>
#include <franka/exception.h>
#include <franka_gripper/MoveAction.h>
#include <franka_gripper/GraspAction.h>
#include <actionlib/client/simple_action_client.h>

#include <moveit_msgs/CollisionObject.h>
#include <shape_msgs/SolidPrimitive.h>
#include <geometry_msgs/Pose.h>
#include <array>

#include "cobot_pump_ros/hci_action_srv.h"

#include <franka/robot.h>
#include <franka/gripper.h>
#include <franka/vacuum_gripper.h>
#include <franka/exception.h>

#include <franka/duration.h>
#include <franka/robot_state.h>
#include <franka/control_types.h>
#include <Eigen/Dense>

#ifdef WIN32
  #define COLOR_NORMAL ""
  #define COLOR_RED ""
  #define COLOR_GREEN ""
#else
  #define COLOR_NORMAL "\033[0m"
  #define COLOR_RED "\033[31m"
  #define COLOR_GREEN "\033[32m"
#endif

using namespace std;

static bool use_pause=true;
int vacuumStrength = 300;
int timeout_ms = 1000;

char WaitUserConfirm(const string str_message="[Enter]", const string str_done="[OK]")
{
    char ret;    
    if( use_pause )
    {
        std::cout << COLOR_RED << str_message << COLOR_NORMAL;
        //char ret = std::cin.get();
        std::cin >> ret;
        std::cin.ignore(INT_MAX,'\n');
        cout << COLOR_GREEN << str_done << COLOR_NORMAL << endl;
    }
    else
    {
        ros::Duration(1).sleep();
        ret = 0;
    }
    return ret;
}

void Quaterion2Euler(geometry_msgs::Quaternion &quat, double &angle_x, double &angle_y, double &angle_z)
{
    double x = quat.x;
    double y = quat.y;
    double z = quat.z;
    double w = quat.w;
    
    double t0, t1, t2, t3, t4;

    t0 = 2.0 * (w * x + y * z);
    t1 = 1.0 - 2.0 * (x * x + y * y);

    t2 =  2.0 * (w * y - z * x);
    if( t2 >  1.0 ) t2 =  1.0;
    if( t2 < -1.0 ) t2 = -1.0;   

    t3 = 2.0 * (w * z + x * y);
    t4 = 1.0 - 2.0 * (y * y + z * z);

    angle_x = atan2(t0, t1); // roll
    angle_y = asin(t2); // pitch
    angle_z = atan2(t3, t4);  // yaw
    // cout << "angle_z: ---- yaw : " << angle_z << endl; 
}

Eigen::Quaterniond ToQuaternion(double yaw, double pitch, double roll) // yaw (Z), pitch (Y), roll (X)
{
    // Abbreviations for the various angular functions
    double cy = cos(yaw * 0.5);
    double sy = sin(yaw * 0.5);
    double cp = cos(pitch * 0.5);
    double sp = sin(pitch * 0.5);
    double cr = cos(roll * 0.5);
    double sr = sin(roll * 0.5);
 
    Eigen::Quaterniond q;
    q.w() = cy * cp * cr + sy * sp * sr;
    q.x() = cy * cp * sr - sy * sp * cr;
    q.y() = sy * cp * sr + cy * sp * cr;
    q.z() = sy * cp * cr - cy * sp * sr;
 
    return q;
}

bool quaternion_similarity(geometry_msgs::Pose p1, geometry_msgs::Pose p2)
{
	double SIM_THRESHOLD = 0.001;
	auto q1 = p1.orientation;
	auto q2 = p2.orientation;

	Eigen::Quaternionf eq1;
	eq1.x()=q1.x;
	eq1.y()=q1.y;
	eq1.z()=q1.z;
	eq1.w()=q1.w;
	Eigen::Quaternionf eq2;
	eq2.x()=q2.x;
	eq2.y()=q2.y;
	eq2.z()=q2.z;
	eq2.w()=q2.w;

	eq1.normalize();
	eq2.normalize();

	if( std::abs ( std::abs(eq1.dot(eq2)) -1 ) < SIM_THRESHOLD  )
	{
		// ROS_WARN_STREAM("Orientations same.");
		return true;
	}
	else
	{
		// ROS_ERROR_STREAM("Orientations differ.");
		return false;
	}
}

bool execute_trajectory(moveit::planning_interface::MoveGroupInterface::Plan& myplan){
	bool success = false;
    actionlib::SimpleActionClient<control_msgs::FollowJointTrajectoryAction> trajectory_ac_("/position_joint_trajectory_controller/follow_joint_trajectory", true);
	control_msgs::FollowJointTrajectoryActionGoal trajectory_goal;
	trajectory_ac_.waitForServer();

	trajectory_goal.goal.trajectory = myplan.trajectory_.joint_trajectory;
	trajectory_ac_.sendGoal(trajectory_goal.goal);
	success = trajectory_ac_.waitForResult();

    if(success){
		ROS_WARN_STREAM("actionlib: success");
	}else{
		ROS_WARN_STREAM("actionlib: failed");
	}
		auto result = trajectory_ac_.getResult();
		ROS_WARN_STREAM("execute_trajectory result:"<<result->error_code);
	
	return success;
}

bool plan_and_execute_waypoints_n(moveit::planning_interface::MoveGroupInterface& group, moveit::planning_interface::MoveGroupInterface::Plan& myplan, franka::VacuumGripper& vacuum_gripper, const std::vector<cobot_pump_ros::waypoint>& way_poses,double num_midpts=20)
{
    std::vector<geometry_msgs::Pose> waypoints_all;

    // geometry_msgs::Pose start_p = group.getCurrentPose().pose;

    // std::vector<geometry_msgs::Pose> waypoints_pre;
    // geometry_msgs::Pose pre_p    = start_p;
    // geometry_msgs::Pose target_p = start_p;    
    // pre_p.position.z += 0.02;
    // target_p.position.x += 0.005;
    // target_p.position.y += 0.1;
    // geometry_msgs::Pose post_p = target_p;    
    // post_p.position.z += -0.03;

    // geometry_msgs::Pose nxt_p[4] = {pre_p, start_p, target_p, post_p};

    size_t array_size = way_poses.size();
    std::vector<geometry_msgs::Pose> waypoints_local[array_size];
    std::cout << "pose size:" << array_size << std::endl;

    franka::VacuumGripperState state;
    bool success_vaccum = false;

    geometry_msgs::Pose target_pose;
    geometry_msgs::Pose cur_p = group.getCurrentPose().pose;

    for(size_t w=0; w<array_size; w++ ){
        cobot_pump_ros::waypoint waypoint = way_poses[w];
        std::cout << "Waypoint " << w << " Position: ("
          << waypoint.pose.position.x << ", "
          << waypoint.pose.position.y << ", "
          << waypoint.pose.position.z << ")" << std::endl;

        // Print the orientation of the waypoint
        std::cout << "Waypoint " << w << " Orientation: ("
                << waypoint.pose.orientation.x << ", "
                << waypoint.pose.orientation.y << ", "
                << waypoint.pose.orientation.z << ", "
                << waypoint.pose.orientation.w << ")" << std::endl;

        target_pose = waypoint.pose;
        // target_pose = nxt_p[w];

        bool gripper_action = waypoint.franka_gripper;
        cout << "gripper_action:" << gripper_action << ", " << success_vaccum << endl;

        state = vacuum_gripper.readOnce();
        success_vaccum = state.part_present;

        // std::this_thread::sleep_for(std::chrono::seconds(1));

        if(gripper_action && !success_vaccum){
            cout << "gripper success " << endl;
            vacuum_gripper.vacuum(vacuumStrength, std::chrono::milliseconds(timeout_ms));
        }
        else if(!gripper_action && success_vaccum){
            cout << "gripper drop " << endl;
            std::this_thread::sleep_for(std::chrono::seconds(2));
            vacuum_gripper.dropOff(std::chrono::milliseconds(timeout_ms));
        }

        if( quaternion_similarity(cur_p, target_pose)==false ){
            cur_p.orientation = target_pose.orientation;
            waypoints_local[w].push_back(cur_p);
            // waypoints_all.push_back(cur_p);
        }

        double vec_x = (target_pose.position.x-cur_p.position.x);
        double vec_y = (target_pose.position.y-cur_p.position.y);
        double vec_z = (target_pose.position.z-cur_p.position.z);
        if( std::abs(std::sqrt((vec_x*vec_x)+(vec_y*vec_y)+(vec_z*vec_z))) > 0.001 ){
            for (int i=0; i<num_midpts-1; i++){
                cur_p.position.x += vec_x/num_midpts;
                cur_p.position.y += vec_y/num_midpts;
                cur_p.position.z += vec_z/num_midpts;
                waypoints_local[w].push_back(cur_p);
                // waypoints_all.push_back(cur_p);
            }
        }
        cur_p = target_pose;
        waypoints_local[w].push_back(cur_p);

        // waypoints_all.insert(waypoints_all.end(), waypoints_local[w].begin(), waypoints_local[w].end());
        for (int i=0; i<waypoints_local[w].size(); i++){
            waypoints_all.push_back(waypoints_local[w][i]);
        }
        // waypoints_all.push_back(cur_p);
        
    }

    moveit_msgs::RobotTrajectory trajectory_all;
    group.setStartState(*group.getCurrentState());
    double fraction = group.computeCartesianPath(waypoints_all, 0.01, 0.00, trajectory_all);
    ROS_ERROR_STREAM("Waypoint fractional completion for all trajectory..."<<fraction);
    if (std::abs(fraction-1.0) <  0.01){
        for(size_t w=0; w<array_size; w++ ){
            moveit_msgs::RobotTrajectory trajectory;
            group.setStartState(*group.getCurrentState());
            double fraction = group.computeCartesianPath(waypoints_local[w], 0.01, 0.00, trajectory);
            if(fraction < 1){
                ROS_ERROR_STREAM("could not completion for the planning!");
                return false;
            }
            ROS_ERROR_STREAM("Waypoint fractional completion for [" << w+1 << "/" << array_size << "]..." <<fraction);
            if (std::abs(fraction-1.0) <  0.01){
                myplan.trajectory_ = trajectory;
                ROS_INFO("Trajectory length: %ld", myplan.trajectory_.joint_trajectory.points.size());
                if(myplan.trajectory_.joint_trajectory.points.empty()) {
                    ROS_ERROR("Trajectory is empty.");
                    return false;
                }

                execute_trajectory(myplan);
                ros::Duration(2.0).sleep();

                cout << trajectory.joint_trajectory.points.back().time_from_start.toSec() << endl;
                cur_p = group.getCurrentPose().pose;
                cout << "x, y, z: " << cur_p.position.x << ", " << cur_p.position.y << ", " << cur_p.position.z << endl;
                // cout << "x, y, z: " << pose_action.orientation.x << ", " << pose_action.orientation.y << ", "  << pose_action.orientation.z << ", "  << pose_action.orientation.w << endl;
                // return true;
                // if(trajectory.joint_trajectory.points.back().time_from_start.toSec()< 5){
                //     ROS_INFO("execute_trajectory");
                //     execute_trajectory(myplan);
                //     ros::Duration(2.0).sleep();
                // }
                // else return false;
            }
            else return false;
        }
        return true;
    }
    else return false;
    
}

void Robot_GotoHome(moveit::planning_interface::MoveGroupInterface& group, moveit::planning_interface::MoveGroupInterface::Plan& myplan) {
    ROS_INFO("Robot_GotoHome");
    std::vector<double> command_joint_position = {1* M_PI/180, 0 , 19* M_PI/180, -85* M_PI/180, -2* M_PI/180, 82* M_PI/180, 56* M_PI/180};
    group.setJointValueTarget(command_joint_position);
    moveit::core::MoveItErrorCode planning_result = group.plan(myplan);
    if (planning_result == moveit::planning_interface::MoveItErrorCode::SUCCESS) {
        group.move();
    }
}

int main(int argc, char* argv[])
{
    ros::init(argc,argv,"demo_fr3_control");
    
    ros::NodeHandle nh;
    ros::AsyncSpinner spinner(1);
    spinner.start();
    moveit::planning_interface::MoveGroupInterface move_group_interface("fr3_arm");
    franka::VacuumGripper vacuum_gripper("172.16.0.2");
    moveit::planning_interface::MoveGroupInterface::Plan myplan;

    move_group_interface.setPlanningTime(10);
    move_group_interface.allowReplanning(true);
    // move_group_interface.setEndEffectorLink("fr3_hand");
    move_group_interface.setPlannerId("RRTstar");
    // move_group_interface.setPlannerId("");
	move_group_interface.setMaxVelocityScalingFactor(0.3);
    move_group_interface.setMaxAccelerationScalingFactor(0.3);  
   
    move_group_interface.setGoalPositionTolerance(0.001);
    move_group_interface.setGoalOrientationTolerance(0.001);

    // For the setting of environment
    // moveit_msgs::CollisionObject collision_object;
    // collision_object.header.frame_id = "fr3_link0";
    // collision_object.id = "table_design";

    // shape_msgs::SolidPrimitive primitive;
    // primitive.type = primitive.BOX;
    // primitive.dimensions.resize(3);
    // primitive.dimensions[0] = 1.8;
    // primitive.dimensions[1] = 0.8;
    // primitive.dimensions[2] = 0.6;

    // geometry_msgs::Pose table_pose;
    // table_pose.orientation.w = 1.0;
    // table_pose.position.x = 0.69;
    // table_pose.position.y = 0.26;
    // table_pose.position.z = -0.31;

    // collision_object.primitives.push_back(primitive);
    // collision_object.primitive_poses.push_back(table_pose);
    // collision_object.operation = collision_object.ADD;

    ros::ServiceClient pub_action = nh.serviceClient<cobot_pump_ros::hci_action_srv>("/cobot_pump_ros/hci_action_srv",true);
    // ros::Publisher pub_collision_object = nh.advertise<moveit_msgs::CollisionObject>("collision_object", 1);
    ros::Duration(2.0).sleep();  // waiting for publisher
    // pub_collision_object.publish(collision_object);

    // geometry_msgs::Pose pose_action = move_group_interface.getCurrentPose().pose;
    // cout << "x, y, z: " << pose_action.position.x << ", " << pose_action.position.y << ", " << pose_action.position.z << endl;
    // cout << "x, y, z: " << pose_action.orientation.x << ", " << pose_action.orientation.y << ", "  << pose_action.orientation.z << ", "  << pose_action.orientation.w << endl;
    // vacuum_gripper.stop();
    Robot_GotoHome(move_group_interface, myplan);
    vacuum_gripper.dropOff(std::chrono::milliseconds(timeout_ms));

    WaitUserConfirm("[!] continue [!]"); 

    std::vector<cobot_pump_ros::waypoint> waypoints;

    int action_step;

    // string instruction;
    // std::cout << "User:  " ;
    // std::getline(std::cin,instruction);

    cobot_pump_ros::hci_action_srv hci_action;
    hci_action.request.check = true;
    cout << "true" << endl;
    geometry_msgs::Pose pose_action = move_group_interface.getCurrentPose().pose;

    if(pub_action.call(hci_action)){
        cout << "finish call" << endl;
        // action.assign(hci_action.response.action.begin(), hci_action.response.action.end());
        std::vector<cobot_pump_ros::waypoint> way_poses;
        way_poses = hci_action.response.waypoints;

        cout << "waypose: " << endl;
        for(int i=0; i<way_poses.size()-1; i++){
            cout << "wayposes.pose.x:" << way_poses[i].pose.position.x << endl;
        }
        
        plan_and_execute_waypoints_n(move_group_interface, myplan, vacuum_gripper, way_poses);

        hci_action.request.check = false;
        
        // pose_action = move_group_interface.getCurrentPose().pose;
        // move_franka(move_group_interface, myplan, action[3], action[4], action[5], action[0], action[1], action[2], mode);
    }

    // while(use_pause){
    //     {
    //         if(pub_action.call(hci_action)){
    //             cout << "finish call" << endl;
    //             // action.assign(hci_action.response.action.begin(), hci_action.response.action.end());
    //             std::vector<cobot_pump_ros::waypoint> way_poses;
    //             way_poses = hci_action.response.waypoints;
                
    //             plan_and_execute_waypoints_n(move_group_interface, myplan, vacuum_gripper, way_poses);
                
    //             // pose_action = move_group_interface.getCurrentPose().pose;
    //             // move_franka(move_group_interface, myplan, action[3], action[4], action[5], action[0], action[1], action[2], mode);
    //         }
    //     }
        
    // }

    vacuum_gripper.stop();
    
    return 0;
}
