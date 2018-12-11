
(cl:in-package :asdf)

(defsystem "rcomv_r1-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CubicPath" :depends-on ("_package_CubicPath"))
    (:file "_package_CubicPath" :depends-on ("_package"))
    (:file "ParametricPath" :depends-on ("_package_ParametricPath"))
    (:file "_package_ParametricPath" :depends-on ("_package"))
  ))