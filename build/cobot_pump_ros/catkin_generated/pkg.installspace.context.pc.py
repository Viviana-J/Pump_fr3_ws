# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include".split(';') if "${prefix}/include;/usr/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;message_runtime;control_msgs;sensor_msgs;xmlrpcpp;std_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lfranka_gripper;/usr/lib/libfranka.so.0.13.3".split(';') if "-lfranka_gripper;/usr/lib/libfranka.so.0.13.3" != "" else []
PROJECT_NAME = "cobot_pump_ros"
PROJECT_SPACE_DIR = "/home/rishabh/Robot/Pump_fr3_ws/install"
PROJECT_VERSION = "0.0.0"
