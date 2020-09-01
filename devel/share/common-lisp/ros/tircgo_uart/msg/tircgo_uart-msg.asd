
(cl:in-package :asdf)

(defsystem "tircgo_uart-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Lidar_level_reply" :depends-on ("_package_Lidar_level_reply"))
    (:file "_package_Lidar_level_reply" :depends-on ("_package"))
    (:file "RobotStatus" :depends-on ("_package_RobotStatus"))
    (:file "_package_RobotStatus" :depends-on ("_package"))
    (:file "Tracking_status_reply" :depends-on ("_package_Tracking_status_reply"))
    (:file "_package_Tracking_status_reply" :depends-on ("_package"))
  ))