; Auto-generated. Do not edit!


(cl:in-package cobot_pump_ros-msg)


;//! \htmlinclude waypoint.msg.html

(cl:defclass <waypoint> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (franka_gripper
    :reader franka_gripper
    :initarg :franka_gripper
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass waypoint (<waypoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <waypoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'waypoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cobot_pump_ros-msg:<waypoint> is deprecated: use cobot_pump_ros-msg:waypoint instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <waypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cobot_pump_ros-msg:pose-val is deprecated.  Use cobot_pump_ros-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'franka_gripper-val :lambda-list '(m))
(cl:defmethod franka_gripper-val ((m <waypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cobot_pump_ros-msg:franka_gripper-val is deprecated.  Use cobot_pump_ros-msg:franka_gripper instead.")
  (franka_gripper m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <waypoint>) ostream)
  "Serializes a message object of type '<waypoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'franka_gripper) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <waypoint>) istream)
  "Deserializes a message object of type '<waypoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:setf (cl:slot-value msg 'franka_gripper) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<waypoint>)))
  "Returns string type for a message object of type '<waypoint>"
  "cobot_pump_ros/waypoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'waypoint)))
  "Returns string type for a message object of type 'waypoint"
  "cobot_pump_ros/waypoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<waypoint>)))
  "Returns md5sum for a message object of type '<waypoint>"
  "8ed623046bb10ab60a0468b2d307eedb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'waypoint)))
  "Returns md5sum for a message object of type 'waypoint"
  "8ed623046bb10ab60a0468b2d307eedb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<waypoint>)))
  "Returns full string definition for message of type '<waypoint>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%bool franka_gripper~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'waypoint)))
  "Returns full string definition for message of type 'waypoint"
  (cl:format cl:nil "geometry_msgs/Pose pose~%bool franka_gripper~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <waypoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <waypoint>))
  "Converts a ROS message object to a list"
  (cl:list 'waypoint
    (cl:cons ':pose (pose msg))
    (cl:cons ':franka_gripper (franka_gripper msg))
))
