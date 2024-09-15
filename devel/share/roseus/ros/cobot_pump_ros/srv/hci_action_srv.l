;; Auto-generated. Do not edit!


(when (boundp 'cobot_pump_ros::hci_action_srv)
  (if (not (find-package "COBOT_PUMP_ROS"))
    (make-package "COBOT_PUMP_ROS"))
  (shadow 'hci_action_srv (find-package "COBOT_PUMP_ROS")))
(unless (find-package "COBOT_PUMP_ROS::HCI_ACTION_SRV")
  (make-package "COBOT_PUMP_ROS::HCI_ACTION_SRV"))
(unless (find-package "COBOT_PUMP_ROS::HCI_ACTION_SRVREQUEST")
  (make-package "COBOT_PUMP_ROS::HCI_ACTION_SRVREQUEST"))
(unless (find-package "COBOT_PUMP_ROS::HCI_ACTION_SRVRESPONSE")
  (make-package "COBOT_PUMP_ROS::HCI_ACTION_SRVRESPONSE"))

(in-package "ROS")





(defclass cobot_pump_ros::hci_action_srvRequest
  :super ros::object
  :slots ())

(defmethod cobot_pump_ros::hci_action_srvRequest
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

(defclass cobot_pump_ros::hci_action_srvResponse
  :super ros::object
  :slots (_action ))

(defmethod cobot_pump_ros::hci_action_srvResponse
  (:init
   (&key
    ((:action __action) (make-array 7 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _action __action)
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; float32[7] _action
    (* 4    7)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[7] _action
     (dotimes (i 7)
       (sys::poke (elt _action i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[7] _action
   (dotimes (i (length _action))
     (setf (elt _action i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass cobot_pump_ros::hci_action_srv
  :super ros::object
  :slots ())

(setf (get cobot_pump_ros::hci_action_srv :md5sum-) "c43a3220bfd54c72b40a7f1b9339aa4f")
(setf (get cobot_pump_ros::hci_action_srv :datatype-) "cobot_pump_ros/hci_action_srv")
(setf (get cobot_pump_ros::hci_action_srv :request) cobot_pump_ros::hci_action_srvRequest)
(setf (get cobot_pump_ros::hci_action_srv :response) cobot_pump_ros::hci_action_srvResponse)

(defmethod cobot_pump_ros::hci_action_srvRequest
  (:response () (instance cobot_pump_ros::hci_action_srvResponse :init)))

(setf (get cobot_pump_ros::hci_action_srvRequest :md5sum-) "c43a3220bfd54c72b40a7f1b9339aa4f")
(setf (get cobot_pump_ros::hci_action_srvRequest :datatype-) "cobot_pump_ros/hci_action_srvRequest")
(setf (get cobot_pump_ros::hci_action_srvRequest :definition-)
      "---
float32[7] action
")

(setf (get cobot_pump_ros::hci_action_srvResponse :md5sum-) "c43a3220bfd54c72b40a7f1b9339aa4f")
(setf (get cobot_pump_ros::hci_action_srvResponse :datatype-) "cobot_pump_ros/hci_action_srvResponse")
(setf (get cobot_pump_ros::hci_action_srvResponse :definition-)
      "---
float32[7] action
")



(provide :cobot_pump_ros/hci_action_srv "c43a3220bfd54c72b40a7f1b9339aa4f")


