;; Auto-generated. Do not edit!


(when (boundp 'cobot_pump_ros::stopPump)
  (if (not (find-package "COBOT_PUMP_ROS"))
    (make-package "COBOT_PUMP_ROS"))
  (shadow 'stopPump (find-package "COBOT_PUMP_ROS")))
(unless (find-package "COBOT_PUMP_ROS::STOPPUMP")
  (make-package "COBOT_PUMP_ROS::STOPPUMP"))
(unless (find-package "COBOT_PUMP_ROS::STOPPUMPREQUEST")
  (make-package "COBOT_PUMP_ROS::STOPPUMPREQUEST"))
(unless (find-package "COBOT_PUMP_ROS::STOPPUMPRESPONSE")
  (make-package "COBOT_PUMP_ROS::STOPPUMPRESPONSE"))

(in-package "ROS")





(defclass cobot_pump_ros::stopPumpRequest
  :super ros::object
  :slots ())

(defmethod cobot_pump_ros::stopPumpRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass cobot_pump_ros::stopPumpResponse
  :super ros::object
  :slots (_success ))

(defmethod cobot_pump_ros::stopPumpResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cobot_pump_ros::stopPump
  :super ros::object
  :slots ())

(setf (get cobot_pump_ros::stopPump :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get cobot_pump_ros::stopPump :datatype-) "cobot_pump_ros/stopPump")
(setf (get cobot_pump_ros::stopPump :request) cobot_pump_ros::stopPumpRequest)
(setf (get cobot_pump_ros::stopPump :response) cobot_pump_ros::stopPumpResponse)

(defmethod cobot_pump_ros::stopPumpRequest
  (:response () (instance cobot_pump_ros::stopPumpResponse :init)))

(setf (get cobot_pump_ros::stopPumpRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get cobot_pump_ros::stopPumpRequest :datatype-) "cobot_pump_ros/stopPumpRequest")
(setf (get cobot_pump_ros::stopPumpRequest :definition-)
      "---
bool success
")

(setf (get cobot_pump_ros::stopPumpResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get cobot_pump_ros::stopPumpResponse :datatype-) "cobot_pump_ros/stopPumpResponse")
(setf (get cobot_pump_ros::stopPumpResponse :definition-)
      "---
bool success
")



(provide :cobot_pump_ros/stopPump "358e233cde0c8a8bcfea4ce193f8fc15")


