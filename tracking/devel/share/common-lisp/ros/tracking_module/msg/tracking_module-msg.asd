
(cl:in-package :asdf)

(defsystem "tracking_module-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DetectedObject" :depends-on ("_package_DetectedObject"))
    (:file "_package_DetectedObject" :depends-on ("_package"))
    (:file "DetectedObjectList" :depends-on ("_package_DetectedObjectList"))
    (:file "_package_DetectedObjectList" :depends-on ("_package"))
  ))