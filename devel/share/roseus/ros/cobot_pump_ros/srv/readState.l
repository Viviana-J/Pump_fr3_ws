;; Auto-generated. Do not edit!


(when (boundp 'cobot_pump_ros::readState)
  (if (not (find-package "COBOT_PUMP_ROS"))
    (make-package "COBOT_PUMP_ROS"))
  (shadow 'readState (find-package "COBOT_PUMP_ROS")))
(unless (find-package "COBOT_PUMP_ROS::READSTATE")
  (make-package "COBOT_PUMP_ROS::READSTATE"))
(unless (find-package "COBOT_PUMP_ROS::READSTATEREQUEST")
  (make-package "COBOT_PUMP_ROS::READSTATEREQUEST"))
(unless (find-package "COBOT_PUMP_ROS::READSTATERESPONSE")
  (make-package "COBOT_PUMP_ROS::READSTATERESPONSE"))

(in-package "ROS")





(defclass cobot_pump_ros::readStateRequest
  :super ros::object
  :slots ())

(defmethod cobot_pump_ros::readStateRequest
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

(defclass cobot_pump_ros::readStateResponse
  :super ros::object
  :slots (_itemAttached ))

(defmethod cobot_pump_ros::readStateResponse
  (:init
   (&key
    ((:itemAttached __itemAttached) nil)
    )
   (send-super :init)
   (setq _itemAttached __itemAttached)
   self)
  (:itemAttached
   (&optional (__itemAttached :null))
   (if (not (eq __itemAttached :null)) (setq _itemAttached __itemAttached)) _itemAttached)
  (:serialization-length
   ()
   (+
    ;; bool _itemAttached
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _itemAttached
       (if _itemAttached (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _itemAttached
     (setq _itemAttached (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cobot_pump_ros::readState
  :super ros::object
  :slots ())

(setf (get cobot_pump_ros::readState :md5sum-) "247832619fa5dc1b609564c0b8dfd0c8")
(setf (get cobot_pump_ros::readState :datatype-) "cobot_pump_ros/readState")
(setf (get cobot_pump_ros::readState :request) cobot_pump_ros::readStateRequest)
(setf (get cobot_pump_ros::readState :response) cobot_pump_ros::readStateResponse)

(defmethod cobot_pump_ros::readStateRequest
  (:response () (instance cobot_pump_ros::readStateResponse :init)))

(setf (get cobot_pump_ros::readStateRequest :md5sum-) "247832619fa5dc1b609564c0b8dfd0c8")
(setf (get cobot_pump_ros::readStateRequest :datatype-) "cobot_pump_ros/readStateRequest")
(setf (get cobot_pump_ros::readStateRequest :definition-)
      "---
bool itemAttached
")

(setf (get cobot_pump_ros::readStateResponse :md5sum-) "247832619fa5dc1b609564c0b8dfd0c8")
(setf (get cobot_pump_ros::readStateResponse :datatype-) "cobot_pump_ros/readStateResponse")
(setf (get cobot_pump_ros::readStateResponse :definition-)
      "---
bool itemAttached
")



(provide :cobot_pump_ros/readState "247832619fa5dc1b609564c0b8dfd0c8")


