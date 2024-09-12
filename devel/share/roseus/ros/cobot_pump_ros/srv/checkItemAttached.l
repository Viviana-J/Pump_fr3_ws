;; Auto-generated. Do not edit!


(when (boundp 'cobot_pump_ros::checkItemAttached)
  (if (not (find-package "COBOT_PUMP_ROS"))
    (make-package "COBOT_PUMP_ROS"))
  (shadow 'checkItemAttached (find-package "COBOT_PUMP_ROS")))
(unless (find-package "COBOT_PUMP_ROS::CHECKITEMATTACHED")
  (make-package "COBOT_PUMP_ROS::CHECKITEMATTACHED"))
(unless (find-package "COBOT_PUMP_ROS::CHECKITEMATTACHEDREQUEST")
  (make-package "COBOT_PUMP_ROS::CHECKITEMATTACHEDREQUEST"))
(unless (find-package "COBOT_PUMP_ROS::CHECKITEMATTACHEDRESPONSE")
  (make-package "COBOT_PUMP_ROS::CHECKITEMATTACHEDRESPONSE"))

(in-package "ROS")





(defclass cobot_pump_ros::checkItemAttachedRequest
  :super ros::object
  :slots ())

(defmethod cobot_pump_ros::checkItemAttachedRequest
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

(defclass cobot_pump_ros::checkItemAttachedResponse
  :super ros::object
  :slots (_itemAttached ))

(defmethod cobot_pump_ros::checkItemAttachedResponse
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

(defclass cobot_pump_ros::checkItemAttached
  :super ros::object
  :slots ())

(setf (get cobot_pump_ros::checkItemAttached :md5sum-) "247832619fa5dc1b609564c0b8dfd0c8")
(setf (get cobot_pump_ros::checkItemAttached :datatype-) "cobot_pump_ros/checkItemAttached")
(setf (get cobot_pump_ros::checkItemAttached :request) cobot_pump_ros::checkItemAttachedRequest)
(setf (get cobot_pump_ros::checkItemAttached :response) cobot_pump_ros::checkItemAttachedResponse)

(defmethod cobot_pump_ros::checkItemAttachedRequest
  (:response () (instance cobot_pump_ros::checkItemAttachedResponse :init)))

(setf (get cobot_pump_ros::checkItemAttachedRequest :md5sum-) "247832619fa5dc1b609564c0b8dfd0c8")
(setf (get cobot_pump_ros::checkItemAttachedRequest :datatype-) "cobot_pump_ros/checkItemAttachedRequest")
(setf (get cobot_pump_ros::checkItemAttachedRequest :definition-)
      "---
bool itemAttached
")

(setf (get cobot_pump_ros::checkItemAttachedResponse :md5sum-) "247832619fa5dc1b609564c0b8dfd0c8")
(setf (get cobot_pump_ros::checkItemAttachedResponse :datatype-) "cobot_pump_ros/checkItemAttachedResponse")
(setf (get cobot_pump_ros::checkItemAttachedResponse :definition-)
      "---
bool itemAttached
")



(provide :cobot_pump_ros/checkItemAttached "247832619fa5dc1b609564c0b8dfd0c8")


