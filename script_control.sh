#!/bin/bash

cd /home/rishabh/Robot/Pump_fr3_ws
source devel/setup.bash

echo "Launching panda_moveit_config..."
roslaunch franka_control franka_control.launch arm_id:=fr3 robot_ip:=172.16.0.2 load_gripper:=false
PANDA_NODE=$!

sleep 5

echo "Launching replay"
gnome-terminal -- bash -c "roslaunch openvla_real_expr read_rosbag_replay.launch; exec bash" &
OPENVLA_REPLAY_EXPR_NODE=$!

wait $PANDA_NODE 

trap "echo 'Terminating...'; kill $PANDA_NODE ; exit 0" SIGINT SIGTERM

echo "All ROS nodes and launch files are running."
