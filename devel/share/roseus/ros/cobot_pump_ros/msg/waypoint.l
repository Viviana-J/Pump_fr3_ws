;; Auto-generated. Do not edit!


(when (boundp 'cobot_pump_ros::waypoint)
  (if (not (find-package "COBOT_PUMP_ROS"))
    (make-package "COBOT_PUMP_ROS"))
  (shadow 'waypoint (find-package "COBOT_PUMP_ROS")))
(unless (find-package "COBOT_PUMP_ROS::WAYPOINT")
  (make-package "COBOT_PUMP_ROS::WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude waypoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cobot_pump_ros::waypoint
  :super ros::object
  :slots (_pose _franka_gripper ))

(defmethod cobot_pump_ros::waypoint
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:franka_gripper __franka_gripper) nil)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _franka_gripper __franka_gripper)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:franka_gripper
   (&optional (__franka_gripper :null))
   (if (not (eq __franka_gripper :null)) (setq _franka_gripper __franka_gripper)) _franka_gripper)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; bool _franka_gripper
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; bool _franka_gripper
       (if _franka_gripper (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; bool _franka_gripper
     (setq _franka_gripper (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get cobot_pump_ros::waypoint :md5sum-) "8ed623046bb10ab60a0468b2d307eedb")
(setf (get cobot_pump_ros::waypoint :datatype-) "cobot_pump_ros/waypoint")
(setf (get cobot_pump_ros::waypoint :definition-)
      "geometry_msgs/Pose pose
bool franka_gripper
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :cobot_pump_ros/waypoint "8ed623046bb10ab60a0468b2d307eedb")


