cmake_minimum_required(VERSION 3.0.2)
project(cobot_pump_ros)

# set(CMAKE_CXX_STANDARD 14)
# set(CMAKE_CXX_STANDARD_REQUIRED ON)
add_compile_options(-std=c++14)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  control_msgs
  xmlrpcpp
  actionlib_msgs
  sensor_msgs
  image_transport
  cv_bridge 
  geometry_msgs
  message_generation
  tf2
  # moveit
  moveit_msgs
  moveit_core
  moveit_ros_planning
  moveit_ros_planning_interface
  # moveit_ros_move_group
  franka_msgs
  franka_description
  franka_gripper
  actionlib
  moveit_visual_tools
  # geometric_shapes
  shape_msgs
  message_filters
)

find_package(Franka 0.9.0 QUIET)
if(NOT Franka_FOUND)
  find_package(Franka 0.8.0 REQUIRED)
endif()

################################################
## Declare ROS messages, services and actions ##
################################################

## To declare and build messages, services or actions from within this
## package, follow these steps:
## * Let MSG_DEP_SET be the set of packages whose message types you use in
##   your messages/services/actions (e.g. std_msgs, actionlib_msgs, ...).
## * In the file package.xml:
##   * add a build_depend tag for "message_generation"
##   * add a build_depend and a exec_depend tag for each package in MSG_DEP_SET
##   * If MSG_DEP_SET isn't empty the following dependency has been pulled in
##     but can be declared for certainty nonetheless:
##     * add a exec_depend tag for "message_runtime"
## * In this file (CMakeLists.txt):
##   * add "message_generation" and every package in MSG_DEP_SET to
##     find_package(catkin REQUIRED COMPONENTS ...)
##   * add "message_runtime" and every package in MSG_DEP_SET to
##     catkin_package(CATKIN_DEPENDS ...)
##   * uncomment the add_*_files sections below as needed
##     and list every .msg/.srv/.action file to be processed
##   * uncomment the generate_messages entry below
##   * add every package in MSG_DEP_SET to generate_messages(DEPENDENCIES ...)

## Generate messages in the 'msg' folder
add_message_files(
   FILES
   waypoint.msg
#   vacuum.msg
#   Message1.msg
#   Message2.msg
)

## Generate services in the 'srv' folder
add_service_files(
  FILES
  startPump.srv
  stopPump.srv
  dropItem.srv
  readState.srv
  checkItemAttached.srv
  hci_action_srv.srv
)

## Generate actions in the 'action' folder
# add_action_files(
#   FILES
#   Action1.action
#   Action2.action
# )

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
)

################################################
## Declare ROS dynamic reconfigure parameters ##
################################################

## To declare and build dynamic reconfigure parameters within this
## package, follow these steps:
## * In the file package.xml:
##   * add a build_depend and a exec_depend tag for "dynamic_reconfigure"
## * In this file (CMakeLists.txt):
##   * add "dynamic_reconfigure" to
##     find_package(catkin REQUIRED COMPONENTS ...)
##   * uncomment the "generate_dynamic_reconfigure_options" section below
##     and list every .cfg file to be processed

## Generate dynamic reconfigure parameters in the 'cfg' folder
# generate_dynamic_reconfigure_options(
#   cfg/DynReconf1.cfg
#   cfg/DynReconf2.cfg
# )

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if your package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
  INCLUDE_DIRS include
  LIBRARIES franka_gripper
  CATKIN_DEPENDS 
    control_msgs
    xmlrpcpp
    rosbag
    std_msgs
    geometry_msgs
    roscpp 
    rospy 
    tf2 
    cv_bridge
    # moveit
    moveit_msgs 
    moveit_core 
    moveit_ros_planning 
    moveit_ros_planning_interface 
    moveit_ros_move_group 
    message_runtime
    franka_msgs
    franka_description
    franka_gripper
    actionlib
    moveit_visual_tools
    # geometric_shapes
    shape_msgs
    sensor_msgs
    message_filters
    array
  DEPENDS Franka
)

add_executable(cobot_pump_control
   src/cobot_pump_control.cpp
)

add_executable(cobot_pump_node
  src/cobot_pump_node.cpp
)

add_executable(demo_fr3_control
  src/demo_fr3_control.cpp
)

add_dependencies(cobot_pump_control
  ${catkin_EXPORTED_TARGETS}
)

add_dependencies(cobot_pump_node
  ${catkin_EXPORTED_TARGETS}
)

add_dependencies(demo_fr3_control
  ${catkin_EXPORTED_TARGETS}
)

target_link_libraries(cobot_pump_control
  ${Franka_LIBRARIES}
  ${catkin_LIBRARIES}
)

target_link_libraries(demo_fr3_control
  ${Franka_LIBRARIES}
  ${catkin_LIBRARIES}
  ${PCL_LIBRARIES}
  ${Boost_LIBRARIES}
)

target_link_libraries(cobot_pump_node
  ${Franka_LIBRARIES}
  ${catkin_LIBRARIES}
)


target_include_directories(cobot_pump_node SYSTEM PUBLIC
  ${Franka_INCLUDE_DIRS}
  ${catkin_INCLUDE_DIRS}
)

target_include_directories(cobot_pump_node PUBLIC
  include
)



###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
# include
  ${catkin_INCLUDE_DIRS}
  ${PCL_INCLUDE_DIRS}
  ${OpenCV_INCLUDE_DIRS}
  ${CURSES_INCLUDE_DIRS}
  /usr/include/eigen3
  /home/rishabh/Robot/Pump_fr3_ws/src/moveit/moveit_core/planning_interface/include
  /home/rishabh/Robot/Pump_fr3_ws/src/moveit/moveit_ros/planning_interface/move_group_interface/include
  /home/rishabh/Robot/Pump_fr3_ws/devel/include
  /home/rishabh/Robot/Pump_fr3_ws/src/franka_ros/franka_hw/include
  /home/rishabh/Robot/Pump_fr3_ws/src/franka_ros/franka_description
  /home/rishabh/Robot/Pump_fr3_ws/src/franka_ros/franka_gripper/include
  /home/rishabh/Robot/Franka/libfranka
  /home/rishabh/Robot/Pump_fr3_ws/src/moveit_visual_tools/include
  /opt/ros/noetic/share/
)

#############
## Install ##
#############

# all install targets should use catkin DESTINATION variables
# See http://ros.org/doc/api/catkin/html/adv_user_guide/variables.html

## Mark executable scripts (Python etc.) for installation
## in contrast to setup.py, you can choose the destination
catkin_install_python(PROGRAMS
  scripts/basic_demo.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)


## Mark executables for installation
## See http://docs.ros.org/melodic/api/catkin/html/howto/format1/building_executables.html
# install(TARGETS ${PROJECT_NAME}_node
#   RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark libraries for installation
## See http://docs.ros.org/melodic/api/catkin/html/howto/format1/building_libraries.html
# install(TARGETS ${PROJECT_NAME}
#   ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   RUNTIME DESTINATION ${CATKIN_GLOBAL_BIN_DESTINATION}
# )

## Mark cpp header files for installation
# install(DIRECTORY include/${PROJECT_NAME}/
#   DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
#   FILES_MATCHING PATTERN "*.h"
#   PATTERN ".svn" EXCLUDE
# )

## Mark other files for installation (e.g. launch and bag files, etc.)
# install(FILES
#   # myfile1
#   # myfile2
#   DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
# )

#############
## Testing ##
#############

## Add gtest based cpp test target and link libraries
# catkin_add_gtest(${PROJECT_NAME}-test test/test_cobot_pump_ros.cpp)
# if(TARGET ${PROJECT_NAME}-test)
#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})
# endif()

## Add folders to be run by python nosetests
# catkin_add_nosetests(test)
