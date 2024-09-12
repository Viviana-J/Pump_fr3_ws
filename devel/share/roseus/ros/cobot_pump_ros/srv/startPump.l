;; Auto-generated. Do not edit!


(when (boundp 'cobot_pump_ros::startPump)
  (if (not (find-package "COBOT_PUMP_ROS"))
    (make-package "COBOT_PUMP_ROS"))
  (shadow 'startPump (find-package "COBOT_PUMP_ROS")))
(unless (find-package "COBOT_PUMP_ROS::STARTPUMP")
  (make-package "COBOT_PUMP_ROS::STARTPUMP"))
(unless (find-package "COBOT_PUMP_ROS::STARTPUMPREQUEST")
  (make-package "COBOT_PUMP_ROS::STARTPUMPREQUEST"))
(unless (find-package "COBOT_PUMP_ROS::STARTPUMPRESPONSE")
  (make-package "COBOT_PUMP_ROS::STARTPUMPRESPONSE"))

(in-package "ROS")





(defclass cobot_pump_ros::startPumpRequest
  :super ros::object
  :slots (_pressure _timeout_ms ))

(defmethod cobot_pump_ros::startPumpRequest
  (:init
   (&key
    ((:pressure __pressure) 0)
    ((:timeout_ms __timeout_ms) 0)
    )
   (send-super :init)
   (setq _pressure (round __pressure))
   (setq _timeout_ms (round __timeout_ms))
   self)
  (:pressure
   (&optional __pressure)
   (if __pressure (setq _pressure __pressure)) _pressure)
  (:timeout_ms
   (&optional __timeout_ms)
   (if __timeout_ms (setq _timeout_ms __timeout_ms)) _timeout_ms)
  (:serialization-length
   ()
   (+
    ;; int64 _pressure
    8
    ;; int64 _timeout_ms
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _pressure
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _pressure (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _pressure) (= (length (_pressure . bv)) 2)) ;; bignum
              (write-long (ash (elt (_pressure . bv) 0) 0) s)
              (write-long (ash (elt (_pressure . bv) 1) -1) s))
             ((and (class _pressure) (= (length (_pressure . bv)) 1)) ;; big1
              (write-long (elt (_pressure . bv) 0) s)
              (write-long (if (>= _pressure 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _pressure s)(write-long (if (>= _pressure 0) 0 #xffffffff) s)))
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
   ;; int64 _pressure
#+(or :alpha :irix6 :x86_64)
      (setf _pressure (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _pressure (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
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

(defclass cobot_pump_ros::startPumpResponse
  :super ros::object
  :slots (_vacuumSuccess ))

(defmethod cobot_pump_ros::startPumpResponse
  (:init
   (&key
    ((:vacuumSuccess __vacuumSuccess) nil)
    )
   (send-super :init)
   (setq _vacuumSuccess __vacuumSuccess)
   self)
  (:vacuumSuccess
   (&optional (__vacuumSuccess :null))
   (if (not (eq __vacuumSuccess :null)) (setq _vacuumSuccess __vacuumSuccess)) _vacuumSuccess)
  (:serialization-length
   ()
   (+
    ;; bool _vacuumSuccess
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _vacuumSuccess
       (if _vacuumSuccess (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _vacuumSuccess
     (setq _vacuumSuccess (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cobot_pump_ros::startPump
  :super ros::object
  :slots ())

(setf (get cobot_pump_ros::startPump :md5sum-) "b8c827af12d71a112960417ecae897bc")
(setf (get cobot_pump_ros::startPump :datatype-) "cobot_pump_ros/startPump")
(setf (get cobot_pump_ros::startPump :request) cobot_pump_ros::startPumpRequest)
(setf (get cobot_pump_ros::startPump :response) cobot_pump_ros::startPumpResponse)

(defmethod cobot_pump_ros::startPumpRequest
  (:response () (instance cobot_pump_ros::startPumpResponse :init)))

(setf (get cobot_pump_ros::startPumpRequest :md5sum-) "b8c827af12d71a112960417ecae897bc")
(setf (get cobot_pump_ros::startPumpRequest :datatype-) "cobot_pump_ros/startPumpRequest")
(setf (get cobot_pump_ros::startPumpRequest :definition-)
      "int64 pressure
int64 timeout_ms
---
bool vacuumSuccess
")

(setf (get cobot_pump_ros::startPumpResponse :md5sum-) "b8c827af12d71a112960417ecae897bc")
(setf (get cobot_pump_ros::startPumpResponse :datatype-) "cobot_pump_ros/startPumpResponse")
(setf (get cobot_pump_ros::startPumpResponse :definition-)
      "int64 pressure
int64 timeout_ms
---
bool vacuumSuccess
")



(provide :cobot_pump_ros/startPump "b8c827af12d71a112960417ecae897bc")


