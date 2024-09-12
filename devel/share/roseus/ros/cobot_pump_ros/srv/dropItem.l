;; Auto-generated. Do not edit!


(when (boundp 'cobot_pump_ros::dropItem)
  (if (not (find-package "COBOT_PUMP_ROS"))
    (make-package "COBOT_PUMP_ROS"))
  (shadow 'dropItem (find-package "COBOT_PUMP_ROS")))
(unless (find-package "COBOT_PUMP_ROS::DROPITEM")
  (make-package "COBOT_PUMP_ROS::DROPITEM"))
(unless (find-package "COBOT_PUMP_ROS::DROPITEMREQUEST")
  (make-package "COBOT_PUMP_ROS::DROPITEMREQUEST"))
(unless (find-package "COBOT_PUMP_ROS::DROPITEMRESPONSE")
  (make-package "COBOT_PUMP_ROS::DROPITEMRESPONSE"))

(in-package "ROS")





(defclass cobot_pump_ros::dropItemRequest
  :super ros::object
  :slots (_timeout_ms ))

(defmethod cobot_pump_ros::dropItemRequest
  (:init
   (&key
    ((:timeout_ms __timeout_ms) 0)
    )
   (send-super :init)
   (setq _timeout_ms (round __timeout_ms))
   self)
  (:timeout_ms
   (&optional __timeout_ms)
   (if __timeout_ms (setq _timeout_ms __timeout_ms)) _timeout_ms)
  (:serialization-length
   ()
   (+
    ;; int64 _timeout_ms
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _timeout_ms
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _timeout_ms (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _timeout_ms) (= (length (_timeout_ms . bv)) 2)) ;; bignum
              (write-long (ash (elt (_timeout_ms . bv) 0) 0) s)
              (write-long (ash (elt (_timeout_ms . bv) 1) -1) s))
             ((and (class _timeout_ms) (= (length (_timeout_ms . bv)) 1)) ;; big1
              (write-long (elt (_timeout_ms . bv) 0) s)
              (write-long (if (>= _timeout_ms 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _timeout_ms s)(write-long (if (>= _timeout_ms 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _timeout_ms
#+(or :alpha :irix6 :x86_64)
      (setf _timeout_ms (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _timeout_ms (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass cobot_pump_ros::dropItemResponse
  :super ros::object
  :slots (_success ))

(defmethod cobot_pump_ros::dropItemResponse
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

(defclass cobot_pump_ros::dropItem
  :super ros::object
  :slots ())

(setf (get cobot_pump_ros::dropItem :md5sum-) "96b70f2966d4e8cb10a582cc9fbbdb44")
(setf (get cobot_pump_ros::dropItem :datatype-) "cobot_pump_ros/dropItem")
(setf (get cobot_pump_ros::dropItem :request) cobot_pump_ros::dropItemRequest)
(setf (get cobot_pump_ros::dropItem :response) cobot_pump_ros::dropItemResponse)

(defmethod cobot_pump_ros::dropItemRequest
  (:response () (instance cobot_pump_ros::dropItemResponse :init)))

(setf (get cobot_pump_ros::dropItemRequest :md5sum-) "96b70f2966d4e8cb10a582cc9fbbdb44")
(setf (get cobot_pump_ros::dropItemRequest :datatype-) "cobot_pump_ros/dropItemRequest")
(setf (get cobot_pump_ros::dropItemRequest :definition-)
      "int64 timeout_ms
---
bool success
")

(setf (get cobot_pump_ros::dropItemResponse :md5sum-) "96b70f2966d4e8cb10a582cc9fbbdb44")
(setf (get cobot_pump_ros::dropItemResponse :datatype-) "cobot_pump_ros/dropItemResponse")
(setf (get cobot_pump_ros::dropItemResponse :definition-)
      "int64 timeout_ms
---
bool success
")



(provide :cobot_pump_ros/dropItem "96b70f2966d4e8cb10a582cc9fbbdb44")


