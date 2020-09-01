
(cl:in-package :asdf)

(defsystem "tircgo_uart-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "RobotInvoke" :depends-on ("_package_RobotInvoke"))
    (:file "_package_RobotInvoke" :depends-on ("_package"))
  ))