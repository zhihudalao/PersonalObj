
(cl:in-package :asdf)

(defsystem "motor_controller-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "cmd" :depends-on ("_package_cmd"))
    (:file "_package_cmd" :depends-on ("_package"))
  ))