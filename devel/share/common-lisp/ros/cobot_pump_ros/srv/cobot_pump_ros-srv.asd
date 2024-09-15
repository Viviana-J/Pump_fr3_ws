
(cl:in-package :asdf)

(defsystem "cobot_pump_ros-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "checkItemAttached" :depends-on ("_package_checkItemAttached"))
    (:file "_package_checkItemAttached" :depends-on ("_package"))
    (:file "dropItem" :depends-on ("_package_dropItem"))
    (:file "_package_dropItem" :depends-on ("_package"))
    (:file "hci_action_srv" :depends-on ("_package_hci_action_srv"))
    (:file "_package_hci_action_srv" :depends-on ("_package"))
    (:file "readState" :depends-on ("_package_readState"))
    (:file "_package_readState" :depends-on ("_package"))
    (:file "startPump" :depends-on ("_package_startPump"))
    (:file "_package_startPump" :depends-on ("_package"))
    (:file "stopPump" :depends-on ("_package_stopPump"))
    (:file "_package_stopPump" :depends-on ("_package"))
  ))