# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include".split(';') if "${prefix}/include;/usr/include" != "" else []
PROJECT_CATKIN_DEPENDS = "control_msgs;xmlrpcpp;rosbag;std_msgs;geometry_msgs;roscpp;rospy;tf2;cv_bridge;moveit_msgs;moveit_core;moveit_ros_planning;moveit_ros_planning_interface;moveit_ros_move_group;message_runtime;franka_msgs;franka_description;franka_gripper;actionlib;moveit_visual_tools;shape_msgs;sensor_msgs;message_filters;array".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lfranka_gripper;/usr/lib/libfranka.so.0.13.3".split(';') if "-lfranka_gripper;/usr/lib/libfranka.so.0.13.3" != "" else []
PROJECT_NAME = "cobot_pump_ros"
PROJECT_SPACE_DIR = "/home/rishabh/Robot/Pump_fr3_ws/install"
PROJECT_VERSION = "0.0.0"
