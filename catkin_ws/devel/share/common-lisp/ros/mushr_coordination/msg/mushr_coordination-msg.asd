
(cl:in-package :asdf)

(defsystem "mushr_coordination-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GoalPoseArray" :depends-on ("_package_GoalPoseArray"))
    (:file "_package_GoalPoseArray" :depends-on ("_package"))
  ))