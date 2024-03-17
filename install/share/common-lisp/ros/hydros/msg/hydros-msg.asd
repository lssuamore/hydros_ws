
(cl:in-package :asdf)

(defsystem "hydros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "sensor" :depends-on ("_package_sensor"))
    (:file "_package_sensor" :depends-on ("_package"))
  ))