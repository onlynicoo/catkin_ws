
(cl:in-package :asdf)

(defsystem "exercise_2-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :exercise_1-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "robotStateSrv" :depends-on ("_package_robotStateSrv"))
    (:file "_package_robotStateSrv" :depends-on ("_package"))
  ))