
(cl:in-package :asdf)

(defsystem "roboclaw_node-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Motors_currents" :depends-on ("_package_Motors_currents"))
    (:file "_package_Motors_currents" :depends-on ("_package"))
    (:file "Wheels_speeds" :depends-on ("_package_Wheels_speeds"))
    (:file "_package_Wheels_speeds" :depends-on ("_package"))
  ))