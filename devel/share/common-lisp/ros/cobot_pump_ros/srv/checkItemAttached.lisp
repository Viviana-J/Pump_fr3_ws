; Auto-generated. Do not edit!


(cl:in-package cobot_pump_ros-srv)


;//! \htmlinclude checkItemAttached-request.msg.html

(cl:defclass <checkItemAttached-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass checkItemAttached-request (<checkItemAttached-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <checkItemAttached-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'checkItemAttached-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cobot_pump_ros-srv:<checkItemAttached-request> is deprecated: use cobot_pump_ros-srv:checkItemAttached-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <checkItemAttached-request>) ostream)
  "Serializes a message object of type '<checkItemAttached-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <checkItemAttached-request>) istream)
  "Deserializes a message object of type '<checkItemAttached-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<checkItemAttached-request>)))
  "Returns string type for a service object of type '<checkItemAttached-request>"
  "cobot_pump_ros/checkItemAttachedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'checkItemAttached-request)))
  "Returns string type for a service object of type 'checkItemAttached-request"
  "cobot_pump_ros/checkItemAttachedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<checkItemAttached-request>)))
  "Returns md5sum for a message object of type '<checkItemAttached-request>"
  "247832619fa5dc1b609564c0b8dfd0c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'checkItemAttached-request)))
  "Returns md5sum for a message object of type 'checkItemAttached-request"
  "247832619fa5dc1b609564c0b8dfd0c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<checkItemAttached-request>)))
  "Returns full string definition for message of type '<checkItemAttached-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'checkItemAttached-request)))
  "Returns full string definition for message of type 'checkItemAttached-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <checkItemAttached-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <checkItemAttached-request>))
  "Converts a ROS message object to a list"
  (cl:list 'checkItemAttached-request
))
;//! \htmlinclude checkItemAttached-response.msg.html

(cl:defclass <checkItemAttached-response> (roslisp-msg-protocol:ros-message)
  ((itemAttached
    :reader itemAttached
    :initarg :itemAttached
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass checkItemAttached-response (<checkItemAttached-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <checkItemAttached-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'checkItemAttached-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cobot_pump_ros-srv:<checkItemAttached-response> is deprecated: use cobot_pump_ros-srv:checkItemAttached-response instead.")))

(cl:ensure-generic-function 'itemAttached-val :lambda-list '(m))
(cl:defmethod itemAttached-val ((m <checkItemAttached-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cobot_pump_ros-srv:itemAttached-val is deprecated.  Use cobot_pump_ros-srv:itemAttached instead.")
  (itemAttached m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <checkItemAttached-response>) ostream)
  "Serializes a message object of type '<checkItemAttached-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'itemAttached) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <checkItemAttached-response>) istream)
  "Deserializes a message object of type '<checkItemAttached-response>"
    (cl:setf (cl:slot-value msg 'itemAttached) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<checkItemAttached-response>)))
  "Returns string type for a service object of type '<checkItemAttached-response>"
  "cobot_pump_ros/checkItemAttachedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'checkItemAttached-response)))
  "Returns string type for a service object of type 'checkItemAttached-response"
  "cobot_pump_ros/checkItemAttachedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<checkItemAttached-response>)))
  "Returns md5sum for a message object of type '<checkItemAttached-response>"
  "247832619fa5dc1b609564c0b8dfd0c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'checkItemAttached-response)))
  "Returns md5sum for a message object of type 'checkItemAttached-response"
  "247832619fa5dc1b609564c0b8dfd0c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<checkItemAttached-response>)))
  "Returns full string definition for message of type '<checkItemAttached-response>"
  (cl:format cl:nil "bool itemAttached~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'checkItemAttached-response)))
  "Returns full string definition for message of type 'checkItemAttached-response"
  (cl:format cl:nil "bool itemAttached~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <checkItemAttached-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <checkItemAttached-response>))
  "Converts a ROS message object to a list"
  (cl:list 'checkItemAttached-response
    (cl:cons ':itemAttached (itemAttached msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'checkItemAttached)))
  'checkItemAttached-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'checkItemAttached)))
  'checkItemAttached-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'checkItemAttached)))
  "Returns string type for a service object of type '<checkItemAttached>"
  "cobot_pump_ros/checkItemAttached")