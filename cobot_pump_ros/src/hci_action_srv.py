#!/usr/bin/python3

# For CONDA Env: /usr/bin/env python 
import glob
import pickle
import math
import os, sys
import time
import rospy
from cv_bridge import CvBridge
import socket
import struct
import cv2
import numpy as np
from cobot_pump_ros.srv import hci_action_srv, hci_action_srvResponse
from cobot_pump_ros.msg import waypoint
from geometry_msgs.msg import Pose
import random 
# import wandb
# import sys
# sys.path.insert(0,'/home/rishabh/Robot/')

global s
global time_step
# global task
global wandb_franmes
wandb_franmes = []

def handle_action(req):
    # global openvlaWrapper
    global s
    global time_step

# orin: gripper state0
# x, y, z: 0.507095, 0.181918, 0.655561
# x, y, z, w: 0.9505, -0.308911, -0.00778714, 0.0326119

# change: 1
# x, y, z: 0.477202, 0.302412, 0.649541
# x, y, z: 0.926301, -0.376725, 0.000470843, 0.0067146

    # action = list(data_rec['action'])
    # action = [action[0]*5, action[1]*5, action[2]*3, action[3]*0, action[4]*0, action[5]*0, action[6]] # TODO Remove this zero roll after fixing the data
    # print(f"Timestep: {time_step}")
    # print(f"Action {data_rec!r}")
    
    # if time_step == 0:      
    #     wandb.init(
    #         # set the wandb project where this run will be logged
    #         project="fr3_449demon_3hz_120k",
    #         name=f'task:{task}_06'
    #     )
    # TODO uncomment these two
    if req.check:
        response = hci_action_srvResponse()
        waypoints = []

        # Waypoint 1
        # wp1 = waypoint()
        # wp1.pose.position.x = 0.507095
        # wp1.pose.position.y = 0.181918
        # wp1.pose.position.z = 0.655561
        # wp1.pose.orientation.x = 0.9505
        # wp1.pose.orientation.y = -0.308911
        # wp1.pose.orientation.z = -0.00778714
        # wp1.pose.orientation.w = 0.0326119
        # wp1.franka_gripper = False
        # waypoints.append(wp1)

        # # Waypoint 2
        # wp2 = waypoint()
        # wp2.pose.position.x = 0.507095
        # wp2.pose.position.y =  0.181918
        # wp2.pose.position.z = 0.675561
        # wp2.pose.orientation.x = 0.9505
        # wp2.pose.orientation.y = -0.308911
        # wp2.pose.orientation.z = -0.00778714
        # wp2.pose.orientation.w = 0.0326119
        # wp2.franka_gripper = False
        # waypoints.append(wp2)

        # # Waypoint 3
        # wp3 = waypoint()
        # wp2.pose.position.x = 0.507095
        # wp2.pose.position.y =  0.211918
        # wp2.pose.position.z = 0.675561
        # wp2.pose.orientation.x = 0.9505
        # wp2.pose.orientation.y = -0.308911
        # wp2.pose.orientation.z = -0.00778714
        # wp2.pose.orientation.w = 0.0326119
        # wp3.franka_gripper = False
        # waypoints.append(wp3)

        # Waypoint 4
        # wp4 = waypoint()
        # wp4.pose.position.x = 0.477202
        # wp4.pose.position.y = 0.302412
        # wp4.pose.position.z = 0.649541
        # wp4.pose.orientation.x = 0.926301
        # wp4.pose.orientation.y = -0.376725
        # wp4.pose.orientation.z = 0.000470843
        # wp4.pose.orientation.w = 0.0067146
        # wp4.franka_gripper = 0
        # waypoints.append(wp4)

        # Waypoint 5
        wp5 = waypoint()
        wp5.pose.position.x = 0.477587
        wp5.pose.position.y = 0.296799
        wp5.pose.position.z = 0.667701
        wp5.pose.orientation.x = -0.980697
        wp5.pose.orientation.y = 0.1955
        wp5.pose.orientation.z = 0.000908331
        wp5.pose.orientation.w = 0.00362701
        wp5.franka_gripper = False
        waypoints.append(wp5)

        wp4 = waypoint()
        wp4.pose.position.x = 0.477202
        wp4.pose.position.y = 0.302412
        wp4.pose.position.z = 0.649541
        wp4.pose.orientation.x = 0.926301
        wp4.pose.orientation.y = -0.376725
        wp4.pose.orientation.z = 0.000470843
        wp4.pose.orientation.w = 0.0067146
        wp4.franka_gripper = False
        waypoints.append(wp4)
        print("finish waypoints")

        response.waypoints = waypoints
        # print(f"a({time_step}):", response.action)
        
        # This part is for wandb log
        # wandb.log({"dx": action[0], "dy": action[1], "dz" : action[2],
        # "dyaw" : action[3] , "dpitch" : action[4], "droll" : action[5], "gripper state" : action[6]})
        # vids.append(np.transpose(frame, (2,0,1)))
        # if time_step % 60 == 0 and time_step !=0:
        #     video = np.stack(wandb_franmes)
        #     wandb.log({"robot observation": wandb.Video(video, fps=4, format="mp4")})
        #     wandb_franmes.clear()
        
    time_step+=1

    return response

if __name__=='__main__':
    # global result
    global task
    global s
    global time_step 

    # HOST = socket.gethostbyname(socket.gethostname())  # The server's hostname or IP address
    # PORT = 9255 # The port used by the server
    time_step = 0
    # s = socket.socket()
    # s.connect((HOST, PORT))

    try:
        rospy.init_node('hci_action_srv')
        rospy.Service('/cobot_pump_ros/hci_action_srv', hci_action_srv,  handle_action)
        print("[Ready]")
        rospy.spin()
    finally: # save video after cancel the script by ctrl c
        # result.release()
        print("Saved")