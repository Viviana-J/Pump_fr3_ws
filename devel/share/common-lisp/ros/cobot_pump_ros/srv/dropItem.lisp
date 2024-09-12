; Auto-generated. Do not edit!


(cl:in-package cobot_pump_ros-srv)


;//! \htmlinclude dropItem-request.msg.html

(cl:defclass <dropItem-request> (roslisp-msg-protocol:ros-message)
  ((timeout_ms
    :reader timeout_ms
    :initarg :timeout_ms
    :type cl:integer
    :initform 0))
)

(cl:defclass dropItem-request (<dropItem-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <dropItem-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'dropItem-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cobot_pump_ros-srv:<dropItem-request> is deprecated: use cobot_pump_ros-srv:dropItem-request instead.")))

(cl:ensure-generic-function 'timeout_ms-val :lambda-list '(m))
(cl:defmethod timeout_ms-val ((m <dropItem-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cobot_pump_ros-srv:timeout_ms-val is deprecated.  Use cobot_pump_ros-srv:timeout_ms instead.")
  (timeout_ms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <dropItem-request>) ostream)
  "Serializes a message object of type '<dropItem-request>"
  (cl:let* ((signed (cl:slot-value msg 'timeout_ms)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <dropItem-request>) istream)
  "Deserializes a message object of type '<dropItem-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeout_ms) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<dropItem-request>)))
  "Returns string type for a service object of type '<dropItem-request>"
  "cobot_pump_ros/dropItemRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'dropItem-request)))
  "Returns string type for a service object of type 'dropItem-request"
  "cobot_pump_ros/dropItemRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<dropItem-request>)))
  "Returns md5sum for a message object of type '<dropItem-request>"
  "96b70f2966d4e8cb10a582cc9fbbdb44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'dropItem-request)))
  "Returns md5sum for a message object of type 'dropItem-request"
  "96b70f2966d4e8cb10a582cc9fbbdb44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<dropItem-request>)))
  "Returns full string definition for message of type '<dropItem-request>"
  (cl:format cl:nil "int64 timeout_ms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'dropItem-request)))
  "Returns full string definition for message of type 'dropItem-request"
  (cl:format cl:nil "int64 timeout_ms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <dropItem-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <dropItem-request>))
  "Converts a ROS message object to a list"
  (cl:list 'dropItem-request
    (cl:cons ':timeout_ms (timeout_ms msg))
))
;//! \htmlinclude dropItem-response.msg.html

(cl:defclass <dropItem-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass dropItem-response (<dropItem-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <dropItem-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'dropItem-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cobot_pump_ros-srv:<dropItem-response> is deprecated: use cobot_pump_ros-srv:dropItem-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <dropItem-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cobot_pump_ros-srv:success-val is deprecated.  Use cobot_pump_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <dropItem-response>) ostream)
  "Serializes a message object of type '<dropItem-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <dropItem-response>) istream)
  "Deserializes a message object of type '<dropItem-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<dropItem-response>)))
  "Returns string type for a service object of type '<dropItem-response>"
  "cobot_pump_ros/dropItemResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'dropItem-response)))
  "Returns string type for a service object of type 'dropItem-response"
  "cobot_pump_ros/dropItemResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<dropItem-response>)))
  "Returns md5sum for a message object of type '<dropItem-response>"
  "96b70f2966d4e8cb10a582cc9fbbdb44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'dropItem-response)))
  "Returns md5sum for a message object of type 'dropItem-response"
  "96b70f2966d4e8cb10a582cc9fbbdb44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<dropItem-response>)))
  "Returns full string definition for message of type '<dropItem-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'dropItem-response)))
  "Returns full string definition for message of type 'dropItem-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <dropItem-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <dropItem-response>))
  "Converts a ROS message object to a list"
  (cl:list 'dropItem-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'dropItem)))
  'dropItem-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'dropItem)))
  'dropItem-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'dropItem)))
  "Returns string type for a service object of type '<dropItem>"
  "cobot_pump_ros/dropItem")