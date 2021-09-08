;; Auto-generated. Do not edit!


(when (boundp 'mushr_coordination::GoalPoseArray)
  (if (not (find-package "MUSHR_COORDINATION"))
    (make-package "MUSHR_COORDINATION"))
  (shadow 'GoalPoseArray (find-package "MUSHR_COORDINATION")))
(unless (find-package "MUSHR_COORDINATION::GOALPOSEARRAY")
  (make-package "MUSHR_COORDINATION::GOALPOSEARRAY"))

(in-package "ROS")
;;//! \htmlinclude GoalPoseArray.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mushr_coordination::GoalPoseArray
  :super ros::object
  :slots (_header _scale _minx _miny _maxx _maxy _goals ))

(defmethod mushr_coordination::GoalPoseArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:scale __scale) 0.0)
    ((:minx __minx) 0.0)
    ((:miny __miny) 0.0)
    ((:maxx __maxx) 0.0)
    ((:maxy __maxy) 0.0)
    ((:goals __goals) (let (r) (dotimes (i 0) (push (instance geometry_msgs::PoseArray :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _scale (float __scale))
   (setq _minx (float __minx))
   (setq _miny (float __miny))
   (setq _maxx (float __maxx))
   (setq _maxy (float __maxy))
   (setq _goals __goals)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:scale
   (&optional __scale)
   (if __scale (setq _scale __scale)) _scale)
  (:minx
   (&optional __minx)
   (if __minx (setq _minx __minx)) _minx)
  (:miny
   (&optional __miny)
   (if __miny (setq _miny __miny)) _miny)
  (:maxx
   (&optional __maxx)
   (if __maxx (setq _maxx __maxx)) _maxx)
  (:maxy
   (&optional __maxy)
   (if __maxy (setq _maxy __maxy)) _maxy)
  (:goals
   (&rest __goals)
   (if (keywordp (car __goals))
       (send* _goals __goals)
     (progn
       (if __goals (setq _goals (car __goals)))
       _goals)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _scale
    8
    ;; float64 _minx
    8
    ;; float64 _miny
    8
    ;; float64 _maxx
    8
    ;; float64 _maxy
    8
    ;; geometry_msgs/PoseArray[] _goals
    (apply #'+ (send-all _goals :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _scale
       (sys::poke _scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _minx
       (sys::poke _minx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _miny
       (sys::poke _miny (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _maxx
       (sys::poke _maxx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _maxy
       (sys::poke _maxy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/PoseArray[] _goals
     (write-long (length _goals) s)
     (dolist (elem _goals)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _scale
     (setq _scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _minx
     (setq _minx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _miny
     (setq _miny (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _maxx
     (setq _maxx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _maxy
     (setq _maxy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/PoseArray[] _goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goals (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseArray :init) r)) r))
     (dolist (elem- _goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mushr_coordination::GoalPoseArray :md5sum-) "78e0bbacea7802e400e4e187b7b7763b")
(setf (get mushr_coordination::GoalPoseArray :datatype-) "mushr_coordination/GoalPoseArray")
(setf (get mushr_coordination::GoalPoseArray :definition-)
      "std_msgs/Header header
float64 scale
float64 minx
float64 miny
float64 maxx
float64 maxy
geometry_msgs/PoseArray[] goals
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :mushr_coordination/GoalPoseArray "78e0bbacea7802e400e4e187b7b7763b")


