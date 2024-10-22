
(cl:in-package :asdf)

(defsystem "cobot_pump_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "vacuum" :depends-on ("_package_vacuum"))
    (:file "_package_vacuum" :depends-on ("_package"))
    (:file "waypoint" :depends-on ("_package_waypoint"))
    (:file "_package_waypoint" :depends-on ("_package"))
  ))