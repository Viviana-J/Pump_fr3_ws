# Install script for directory: /home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/rishabh/Robot/Pump_fr3_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cobot_pump_ros/srv" TYPE FILE FILES
    "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/startPump.srv"
    "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/stopPump.srv"
    "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/dropItem.srv"
    "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/readState.srv"
    "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/checkItemAttached.srv"
    "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/srv/hci_action_srv.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cobot_pump_ros/cmake" TYPE FILE FILES "/home/rishabh/Robot/Pump_fr3_ws/build/cobot_pump_ros/catkin_generated/installspace/cobot_pump_ros-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/rishabh/Robot/Pump_fr3_ws/devel/include/cobot_pump_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/rishabh/Robot/Pump_fr3_ws/devel/share/roseus/ros/cobot_pump_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/rishabh/Robot/Pump_fr3_ws/devel/share/common-lisp/ros/cobot_pump_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/rishabh/Robot/Pump_fr3_ws/devel/share/gennodejs/ros/cobot_pump_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/rishabh/Robot/Pump_fr3_ws/devel/lib/python3/dist-packages/cobot_pump_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/rishabh/Robot/Pump_fr3_ws/devel/lib/python3/dist-packages/cobot_pump_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/rishabh/Robot/Pump_fr3_ws/build/cobot_pump_ros/catkin_generated/installspace/cobot_pump_ros.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cobot_pump_ros/cmake" TYPE FILE FILES "/home/rishabh/Robot/Pump_fr3_ws/build/cobot_pump_ros/catkin_generated/installspace/cobot_pump_ros-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cobot_pump_ros/cmake" TYPE FILE FILES
    "/home/rishabh/Robot/Pump_fr3_ws/build/cobot_pump_ros/catkin_generated/installspace/cobot_pump_rosConfig.cmake"
    "/home/rishabh/Robot/Pump_fr3_ws/build/cobot_pump_ros/catkin_generated/installspace/cobot_pump_rosConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cobot_pump_ros" TYPE FILE FILES "/home/rishabh/Robot/Pump_fr3_ws/src/cobot_pump_ros/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cobot_pump_ros" TYPE PROGRAM FILES "/home/rishabh/Robot/Pump_fr3_ws/build/cobot_pump_ros/catkin_generated/installspace/basic_demo.py")
endif()

