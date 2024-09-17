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
HOST = '10.206.59.155'
PORT = 9255

global s
global time_step
# global task
global wandb_franmes
wandb_franmes = []

def handle_action(req):
    # global openvlaWrapper
    global s
    global time_step

    data_send = pickle.dumps({"time_step": time_step, "check": req.check})
    s.sendall(struct.pack('L', len(data_send)))
    s.sendall(data_send)
    # start_infer_time  = time.time()
    data_rec = s.recv(4096)
    data_rec = pickle.loads(data_rec)

    waypoint_action = list(data_rec['action'])
    waypoints = []
    temp_way = []

    for i in range(len(waypoint_action)):
        temp_way = waypoint_action[i]
        print(f"feedback action", i , " :" , temp_way)
        wp = waypoint()
        wp.pose.position.x = temp_way[0]
        wp.pose.position.y = temp_way[1]
        wp.pose.position.z = temp_way[2]
        wp.pose.orientation.x = temp_way[4]
        wp.pose.orientation.y = temp_way[5]
        wp.pose.orientation.z = temp_way[6]
        wp.pose.orientation.w = temp_way[3]
        wp.franka_gripper = waypoint_action[i][-1]
        waypoints.append(wp)
    
    response = hci_action_srvResponse()
    response.waypoints = waypoints
    print("finish waypoints")
    # print(f"a({time_step}):", response.action)
    
    # This part is for wandb log
    # wandb.log({"dx": action[0], "dy": action[1], "dz" : action[2],
    # "dyaw" : action[3] , "dpitch" : action[4], "droll" : action[5], "gripper state" : action[6]})
    # vids.append(np.transpose(frame, (2,0,1)))
    # if time_step % 60 == 0 and time_step !=0:
    #     video = np.stack(wandb_franmes)
    #     wandb.log({"robot observation": wandb.Video(video, fps=4, format="mp4")})
    #       wandb_franmes.clear()
        
    time_step+=1

    return response

if __name__=='__main__':
    # global result
    global task
    global s
    global time_step 

    
    # server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    # HOST = socket.gethostbyname(socket.gethostname())  # The server's hostname or IP address
     # The port used by the server
    time_step = 0
    s = socket.socket()
    
    try:
        s.connect((HOST, PORT))
        rospy.init_node('hci_action_srv')
        rospy.Service('/cobot_pump_ros/hci_action_srv', hci_action_srv,  handle_action)
        print("[Ready]")
        rospy.spin()
    finally: # save video after cancel the script by ctrl c
        # result.release()
        print("Saved")