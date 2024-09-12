; Auto-generated. Do not edit!


(cl:in-package cobot_pump_ros-srv)


;//! \htmlinclude startPump-request.msg.html

(cl:defclass <startPump-request> (roslisp-msg-protocol:ros-message)
  ((pressure
    :reader pressure
    :initarg :pressure
    :type cl:integer
    :initform 0)
   (timeout_ms
    :reader timeout_ms
    :initarg :timeout_ms
    :type cl:integer
    :initform 0))
)

(cl:defclass startPump-request (<startPump-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <startPump-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'startPump-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cobot_pump_ros-srv:<startPump-request> is deprecated: use cobot_pump_ros-srv:startPump-request instead.")))

(cl:ensure-generic-function 'pressure-val :lambda-list '(m))
(cl:defmethod pressure-val ((m <startPump-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cobot_pump_ros-srv:pressure-val is deprecated.  Use cobot_pump_ros-srv:pressure instead.")
  (pressure m))

(cl:ensure-generic-function 'timeout_ms-val :lambda-list '(m))
(cl:defmethod timeout_ms-val ((m <startPump-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cobot_pump_ros-srv:timeout_ms-val is deprecated.  Use cobot_pump_ros-srv:timeout_ms instead.")
  (timeout_ms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <startPump-request>) ostream)
  "Serializes a message object of type '<startPump-request>"
  (cl:let* ((signed (cl:slot-value msg 'pressure)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <startPump-request>) istream)
  "Deserializes a message object of type '<startPump-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pressure) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<startPump-request>)))
  "Returns string type for a service object of type '<startPump-request>"
  "cobot_pump_ros/startPumpRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'startPump-request)))
  "Returns string type for a service object of type 'startPump-request"
  "cobot_pump_ros/startPumpRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<startPump-request>)))
  "Returns md5sum for a message object of type '<startPump-request>"
  "b8c827af12d71a112960417ecae897bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'startPump-request)))
  "Returns md5sum for a message object of type 'startPump-request"
  "b8c827af12d71a112960417ecae897bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<startPump-request>)))
  "Returns full string definition for message of type '<startPump-request>"
  (cl:format cl:nil "int64 pressure~%int64 timeout_ms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'startPump-request)))
  "Returns full string definition for message of type 'startPump-request"
  (cl:format cl:nil "int64 pressure~%int64 timeout_ms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <startPump-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <startPump-request>))
  "Converts a ROS message object to a list"
  (cl:list 'startPump-request
    (cl:cons ':pressure (pressure msg))
    (cl:cons ':timeout_ms (timeout_ms msg))
))
;//! \htmlinclude startPump-response.msg.html

(cl:defclass <startPump-response> (roslisp-msg-protocol:ros-message)
  ((vacuumSuccess
    :reader vacuumSuccess
    :initarg :vacuumSuccess
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass startPump-response (<startPump-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <startPump-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'startPump-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cobot_pump_ros-srv:<startPump-response> is deprecated: use cobot_pump_ros-srv:startPump-response instead.")))

(cl:ensure-generic-function 'vacuumSuccess-val :lambda-list '(m))
(cl:defmethod vacuumSuccess-val ((m <startPump-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cobot_pump_ros-srv:vacuumSuccess-val is deprecated.  Use cobot_pump_ros-srv:vacuumSuccess instead.")
  (vacuumSuccess m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <startPump-response>) ostream)
  "Serializes a message object of type '<startPump-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vacuumSuccess) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <startPump-response>) istream)
  "Deserializes a message object of type '<startPump-response>"
    (cl:setf (cl:slot-value msg 'vacuumSuccess) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<startPump-response>)))
  "Returns string type for a service object of type '<startPump-response>"
  "cobot_pump_ros/startPumpResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'startPump-response)))
  "Returns string type for a service object of type 'startPump-response"
  "cobot_pump_ros/startPumpResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<startPump-response>)))
  "Returns md5sum for a message object of type '<startPump-response>"
  "b8c827af12d71a112960417ecae897bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'startPump-response)))
  "Returns md5sum for a message object of type 'startPump-response"
  "b8c827af12d71a112960417ecae897bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<startPump-response>)))
  "Returns full string definition for message of type '<startPump-response>"
  (cl:format cl:nil "bool vacuumSuccess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'startPump-response)))
  "Returns full string definition for message of type 'startPump-response"
  (cl:format cl:nil "bool vacuumSuccess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <startPump-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <startPump-response>))
  "Converts a ROS message object to a list"
  (cl:list 'startPump-response
    (cl:cons ':vacuumSuccess (vacuumSuccess msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'startPump)))
  'startPump-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'startPump)))
  'startPump-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'startPump)))
  "Returns string type for a service object of type '<startPump>"
  "cobot_pump_ros/startPump")