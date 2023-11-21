
(cl:in-package :asdf)

(defsystem "exercise_1-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "robotMsg" :depends-on ("_package_robotMsg"))
    (:file "_package_robotMsg" :depends-on ("_package"))
  ))