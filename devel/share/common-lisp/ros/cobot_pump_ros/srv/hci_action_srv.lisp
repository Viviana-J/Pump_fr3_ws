; Auto-generated. Do not edit!


(cl:in-package cobot_pump_ros-srv)


;//! \htmlinclude hci_action_srv-request.msg.html

(cl:defclass <hci_action_srv-request> (roslisp-msg-protocol:ros-message)
  ((check
    :reader check
    :initarg :check
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass hci_action_srv-request (<hci_action_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <hci_action_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'hci_action_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cobot_pump_ros-srv:<hci_action_srv-request> is deprecated: use cobot_pump_ros-srv:hci_action_srv-request instead.")))

(cl:ensure-generic-function 'check-val :lambda-list '(m))
(cl:defmethod check-val ((m <hci_action_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cobot_pump_ros-srv:check-val is deprecated.  Use cobot_pump_ros-srv:check instead.")
  (check m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <hci_action_srv-request>) ostream)
  "Serializes a message object of type '<hci_action_srv-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'check) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <hci_action_srv-request>) istream)
  "Deserializes a message object of type '<hci_action_srv-request>"
    (cl:setf (cl:slot-value msg 'check) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<hci_action_srv-request>)))
  "Returns string type for a service object of type '<hci_action_srv-request>"
  "cobot_pump_ros/hci_action_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hci_action_srv-request)))
  "Returns string type for a service object of type 'hci_action_srv-request"
  "cobot_pump_ros/hci_action_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<hci_action_srv-request>)))
  "Returns md5sum for a message object of type '<hci_action_srv-request>"
  "8459cc57e480624d25da434fe579e7c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'hci_action_srv-request)))
  "Returns md5sum for a message object of type 'hci_action_srv-request"
  "8459cc57e480624d25da434fe579e7c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<hci_action_srv-request>)))
  "Returns full string definition for message of type '<hci_action_srv-request>"
  (cl:format cl:nil "bool check~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'hci_action_srv-request)))
  "Returns full string definition for message of type 'hci_action_srv-request"
  (cl:format cl:nil "bool check~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <hci_action_srv-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <hci_action_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'hci_action_srv-request
    (cl:cons ':check (check msg))
))
;//! \htmlinclude hci_action_srv-response.msg.html

(cl:defclass <hci_action_srv-response> (roslisp-msg-protocol:ros-message)
  ((waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector cobot_pump_ros-msg:waypoint)
   :initform (cl:make-array 0 :element-type 'cobot_pump_ros-msg:waypoint :initial-element (cl:make-instance 'cobot_pump_ros-msg:waypoint))))
)

(cl:defclass hci_action_srv-response (<hci_action_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <hci_action_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'hci_action_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cobot_pump_ros-srv:<hci_action_srv-response> is deprecated: use cobot_pump_ros-srv:hci_action_srv-response instead.")))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <hci_action_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cobot_pump_ros-srv:waypoints-val is deprecated.  Use cobot_pump_ros-srv:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <hci_action_srv-response>) ostream)
  "Serializes a message object of type '<hci_action_srv-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <hci_action_srv-response>) istream)
  "Deserializes a message object of type '<hci_action_srv-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cobot_pump_ros-msg:waypoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<hci_action_srv-response>)))
  "Returns string type for a service object of type '<hci_action_srv-response>"
  "cobot_pump_ros/hci_action_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hci_action_srv-response)))
  "Returns string type for a service object of type 'hci_action_srv-response"
  "cobot_pump_ros/hci_action_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<hci_action_srv-response>)))
  "Returns md5sum for a message object of type '<hci_action_srv-response>"
  "8459cc57e480624d25da434fe579e7c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'hci_action_srv-response)))
  "Returns md5sum for a message object of type 'hci_action_srv-response"
  "8459cc57e480624d25da434fe579e7c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<hci_action_srv-response>)))
  "Returns full string definition for message of type '<hci_action_srv-response>"
  (cl:format cl:nil "cobot_pump_ros/waypoint[] waypoints~%~%================================================================================~%MSG: cobot_pump_ros/waypoint~%geometry_msgs/Pose pose~%bool franka_gripper~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'hci_action_srv-response)))
  "Returns full string definition for message of type 'hci_action_srv-response"
  (cl:format cl:nil "cobot_pump_ros/waypoint[] waypoints~%~%================================================================================~%MSG: cobot_pump_ros/waypoint~%geometry_msgs/Pose pose~%bool franka_gripper~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <hci_action_srv-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <hci_action_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'hci_action_srv-response
    (cl:cons ':waypoints (waypoints msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'hci_action_srv)))
  'hci_action_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'hci_action_srv)))
  'hci_action_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hci_action_srv)))
  "Returns string type for a service object of type '<hci_action_srv>"
  "cobot_pump_ros/hci_action_srv")