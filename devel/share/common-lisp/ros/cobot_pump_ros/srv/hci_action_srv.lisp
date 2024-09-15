; Auto-generated. Do not edit!


(cl:in-package cobot_pump_ros-srv)


;//! \htmlinclude hci_action_srv-request.msg.html

(cl:defclass <hci_action_srv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass hci_action_srv-request (<hci_action_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <hci_action_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'hci_action_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cobot_pump_ros-srv:<hci_action_srv-request> is deprecated: use cobot_pump_ros-srv:hci_action_srv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <hci_action_srv-request>) ostream)
  "Serializes a message object of type '<hci_action_srv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <hci_action_srv-request>) istream)
  "Deserializes a message object of type '<hci_action_srv-request>"
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
  "c43a3220bfd54c72b40a7f1b9339aa4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'hci_action_srv-request)))
  "Returns md5sum for a message object of type 'hci_action_srv-request"
  "c43a3220bfd54c72b40a7f1b9339aa4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<hci_action_srv-request>)))
  "Returns full string definition for message of type '<hci_action_srv-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'hci_action_srv-request)))
  "Returns full string definition for message of type 'hci_action_srv-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <hci_action_srv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <hci_action_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'hci_action_srv-request
))
;//! \htmlinclude hci_action_srv-response.msg.html

(cl:defclass <hci_action_srv-response> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass hci_action_srv-response (<hci_action_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <hci_action_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'hci_action_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cobot_pump_ros-srv:<hci_action_srv-response> is deprecated: use cobot_pump_ros-srv:hci_action_srv-response instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <hci_action_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cobot_pump_ros-srv:action-val is deprecated.  Use cobot_pump_ros-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <hci_action_srv-response>) ostream)
  "Serializes a message object of type '<hci_action_srv-response>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'action))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <hci_action_srv-response>) istream)
  "Deserializes a message object of type '<hci_action_srv-response>"
  (cl:setf (cl:slot-value msg 'action) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'action)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
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
  "c43a3220bfd54c72b40a7f1b9339aa4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'hci_action_srv-response)))
  "Returns md5sum for a message object of type 'hci_action_srv-response"
  "c43a3220bfd54c72b40a7f1b9339aa4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<hci_action_srv-response>)))
  "Returns full string definition for message of type '<hci_action_srv-response>"
  (cl:format cl:nil "float32[7] action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'hci_action_srv-response)))
  "Returns full string definition for message of type 'hci_action_srv-response"
  (cl:format cl:nil "float32[7] action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <hci_action_srv-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'action) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <hci_action_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'hci_action_srv-response
    (cl:cons ':action (action msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'hci_action_srv)))
  'hci_action_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'hci_action_srv)))
  'hci_action_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hci_action_srv)))
  "Returns string type for a service object of type '<hci_action_srv>"
  "cobot_pump_ros/hci_action_srv")