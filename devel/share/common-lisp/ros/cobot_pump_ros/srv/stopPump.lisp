; Auto-generated. Do not edit!


(cl:in-package cobot_pump_ros-srv)


;//! \htmlinclude stopPump-request.msg.html

(cl:defclass <stopPump-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass stopPump-request (<stopPump-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <stopPump-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'stopPump-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cobot_pump_ros-srv:<stopPump-request> is deprecated: use cobot_pump_ros-srv:stopPump-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <stopPump-request>) ostream)
  "Serializes a message object of type '<stopPump-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <stopPump-request>) istream)
  "Deserializes a message object of type '<stopPump-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<stopPump-request>)))
  "Returns string type for a service object of type '<stopPump-request>"
  "cobot_pump_ros/stopPumpRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stopPump-request)))
  "Returns string type for a service object of type 'stopPump-request"
  "cobot_pump_ros/stopPumpRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<stopPump-request>)))
  "Returns md5sum for a message object of type '<stopPump-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'stopPump-request)))
  "Returns md5sum for a message object of type 'stopPump-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<stopPump-request>)))
  "Returns full string definition for message of type '<stopPump-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'stopPump-request)))
  "Returns full string definition for message of type 'stopPump-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <stopPump-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <stopPump-request>))
  "Converts a ROS message object to a list"
  (cl:list 'stopPump-request
))
;//! \htmlinclude stopPump-response.msg.html

(cl:defclass <stopPump-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass stopPump-response (<stopPump-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <stopPump-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'stopPump-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cobot_pump_ros-srv:<stopPump-response> is deprecated: use cobot_pump_ros-srv:stopPump-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <stopPump-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cobot_pump_ros-srv:success-val is deprecated.  Use cobot_pump_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <stopPump-response>) ostream)
  "Serializes a message object of type '<stopPump-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <stopPump-response>) istream)
  "Deserializes a message object of type '<stopPump-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<stopPump-response>)))
  "Returns string type for a service object of type '<stopPump-response>"
  "cobot_pump_ros/stopPumpResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stopPump-response)))
  "Returns string type for a service object of type 'stopPump-response"
  "cobot_pump_ros/stopPumpResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<stopPump-response>)))
  "Returns md5sum for a message object of type '<stopPump-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'stopPump-response)))
  "Returns md5sum for a message object of type 'stopPump-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<stopPump-response>)))
  "Returns full string definition for message of type '<stopPump-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'stopPump-response)))
  "Returns full string definition for message of type 'stopPump-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <stopPump-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <stopPump-response>))
  "Converts a ROS message object to a list"
  (cl:list 'stopPump-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'stopPump)))
  'stopPump-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'stopPump)))
  'stopPump-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'stopPump)))
  "Returns string type for a service object of type '<stopPump>"
  "cobot_pump_ros/stopPump")