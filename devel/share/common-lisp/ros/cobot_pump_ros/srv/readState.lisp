; Auto-generated. Do not edit!


(cl:in-package cobot_pump_ros-srv)


;//! \htmlinclude readState-request.msg.html

(cl:defclass <readState-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass readState-request (<readState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <readState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'readState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cobot_pump_ros-srv:<readState-request> is deprecated: use cobot_pump_ros-srv:readState-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <readState-request>) ostream)
  "Serializes a message object of type '<readState-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <readState-request>) istream)
  "Deserializes a message object of type '<readState-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<readState-request>)))
  "Returns string type for a service object of type '<readState-request>"
  "cobot_pump_ros/readStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'readState-request)))
  "Returns string type for a service object of type 'readState-request"
  "cobot_pump_ros/readStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<readState-request>)))
  "Returns md5sum for a message object of type '<readState-request>"
  "247832619fa5dc1b609564c0b8dfd0c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'readState-request)))
  "Returns md5sum for a message object of type 'readState-request"
  "247832619fa5dc1b609564c0b8dfd0c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<readState-request>)))
  "Returns full string definition for message of type '<readState-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'readState-request)))
  "Returns full string definition for message of type 'readState-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <readState-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <readState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'readState-request
))
;//! \htmlinclude readState-response.msg.html

(cl:defclass <readState-response> (roslisp-msg-protocol:ros-message)
  ((itemAttached
    :reader itemAttached
    :initarg :itemAttached
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass readState-response (<readState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <readState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'readState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cobot_pump_ros-srv:<readState-response> is deprecated: use cobot_pump_ros-srv:readState-response instead.")))

(cl:ensure-generic-function 'itemAttached-val :lambda-list '(m))
(cl:defmethod itemAttached-val ((m <readState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cobot_pump_ros-srv:itemAttached-val is deprecated.  Use cobot_pump_ros-srv:itemAttached instead.")
  (itemAttached m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <readState-response>) ostream)
  "Serializes a message object of type '<readState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'itemAttached) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <readState-response>) istream)
  "Deserializes a message object of type '<readState-response>"
    (cl:setf (cl:slot-value msg 'itemAttached) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<readState-response>)))
  "Returns string type for a service object of type '<readState-response>"
  "cobot_pump_ros/readStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'readState-response)))
  "Returns string type for a service object of type 'readState-response"
  "cobot_pump_ros/readStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<readState-response>)))
  "Returns md5sum for a message object of type '<readState-response>"
  "247832619fa5dc1b609564c0b8dfd0c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'readState-response)))
  "Returns md5sum for a message object of type 'readState-response"
  "247832619fa5dc1b609564c0b8dfd0c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<readState-response>)))
  "Returns full string definition for message of type '<readState-response>"
  (cl:format cl:nil "bool itemAttached~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'readState-response)))
  "Returns full string definition for message of type 'readState-response"
  (cl:format cl:nil "bool itemAttached~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <readState-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <readState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'readState-response
    (cl:cons ':itemAttached (itemAttached msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'readState)))
  'readState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'readState)))
  'readState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'readState)))
  "Returns string type for a service object of type '<readState>"
  "cobot_pump_ros/readState")