;; Auto-generated. Do not edit!


(when (boundp 'cobot_pump_ros::hci_action_srv)
  (if (not (find-package "COBOT_PUMP_ROS"))
    (make-package "COBOT_PUMP_ROS"))
  (shadow 'hci_action_srv (find-package "COBOT_PUMP_ROS")))
(unless (find-package "COBOT_PUMP_ROS::HCI_ACTION_SRV")
  (make-package "COBOT_PUMP_ROS::HCI_ACTION_SRV"))
(unless (find-package "COBOT_PUMP_ROS::HCI_ACTION_SRVREQUEST")
  (make-package "COBOT_PUMP_ROS::HCI_ACTION_SRVREQUEST"))
(unless (find-package "COBOT_PUMP_ROS::HCI_ACTION_SRVRESPONSE")
  (make-package "COBOT_PUMP_ROS::HCI_ACTION_SRVRESPONSE"))

(in-package "ROS")





(defclass cobot_pump_ros::hci_action_srvRequest
  :super ros::object
  :slots (_check ))

(defmethod cobot_pump_ros::hci_action_srvRequest
  (:init
   (&key
    ((:check __check) nil)
    )
   (send-super :init)
   (setq _check __check)
   self)
  (:check
   (&optional (__check :null))
   (if (not (eq __check :null)) (setq _check __check)) _check)
  (:serialization-length
   ()
   (+
    ;; bool _check
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _check
       (if _check (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _check
     (setq _check (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cobot_pump_ros::hci_action_srvResponse
  :super ros::object
  :slots (_waypoints ))

(defmethod cobot_pump_ros::hci_action_srvResponse
  (:init
   (&key
    ((:waypoints __waypoints) ())
    )
   (send-super :init)
   (setq _waypoints __waypoints)
   self)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:serialization-length
   ()
   (+
    ;; cobot_pump_ros/waypoint[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cobot_pump_ros/waypoint[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cobot_pump_ros/waypoint[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance cobot_pump_ros::waypoint :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass cobot_pump_ros::hci_action_srv
  :super ros::object
  :slots ())

(setf (get cobot_pump_ros::hci_action_srv :md5sum-) "8459cc57e480624d25da434fe579e7c3")
(setf (get cobot_pump_ros::hci_action_srv :datatype-) "cobot_pump_ros/hci_action_srv")
(setf (get cobot_pump_ros::hci_action_srv :request) cobot_pump_ros::hci_action_srvRequest)
(setf (get cobot_pump_ros::hci_action_srv :response) cobot_pump_ros::hci_action_srvResponse)

(defmethod cobot_pump_ros::hci_action_srvRequest
  (:response () (instance cobot_pump_ros::hci_action_srvResponse :init)))

(setf (get cobot_pump_ros::hci_action_srvRequest :md5sum-) "8459cc57e480624d25da434fe579e7c3")
(setf (get cobot_pump_ros::hci_action_srvRequest :datatype-) "cobot_pump_ros/hci_action_srvRequest")
(setf (get cobot_pump_ros::hci_action_srvRequest :definition-)
      "bool check
---
cobot_pump_ros/waypoint[] waypoints

================================================================================
MSG: cobot_pump_ros/waypoint
geometry_msgs/Pose pose
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

(setf (get cobot_pump_ros::hci_action_srvResponse :md5sum-) "8459cc57e480624d25da434fe579e7c3")
(setf (get cobot_pump_ros::hci_action_srvResponse :datatype-) "cobot_pump_ros/hci_action_srvResponse")
(setf (get cobot_pump_ros::hci_action_srvResponse :definition-)
      "bool check
---
cobot_pump_ros/waypoint[] waypoints

================================================================================
MSG: cobot_pump_ros/waypoint
geometry_msgs/Pose pose
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



(provide :cobot_pump_ros/hci_action_srv "8459cc57e480624d25da434fe579e7c3")


