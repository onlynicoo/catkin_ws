;; Auto-generated. Do not edit!


(when (boundp 'exercise_2::robotStateSrv)
  (if (not (find-package "EXERCISE_2"))
    (make-package "EXERCISE_2"))
  (shadow 'robotStateSrv (find-package "EXERCISE_2")))
(unless (find-package "EXERCISE_2::ROBOTSTATESRV")
  (make-package "EXERCISE_2::ROBOTSTATESRV"))
(unless (find-package "EXERCISE_2::ROBOTSTATESRVREQUEST")
  (make-package "EXERCISE_2::ROBOTSTATESRVREQUEST"))
(unless (find-package "EXERCISE_2::ROBOTSTATESRVRESPONSE")
  (make-package "EXERCISE_2::ROBOTSTATESRVRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "EXERCISE_1"))
  (ros::roseus-add-msgs "exercise_1"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass exercise_2::robotStateSrvRequest
  :super ros::object
  :slots (_header _id ))

(defmethod exercise_2::robotStateSrvRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass exercise_2::robotStateSrvResponse
  :super ros::object
  :slots (_header _message ))

(defmethod exercise_2::robotStateSrvResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:message __message) (instance exercise_1::robotMsg :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _message __message)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:message
   (&rest __message)
   (if (keywordp (car __message))
       (send* _message __message)
     (progn
       (if __message (setq _message (car __message)))
       _message)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; exercise_1/robotMsg _message
    (send _message :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; exercise_1/robotMsg _message
       (send _message :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; exercise_1/robotMsg _message
     (send _message :deserialize buf ptr-) (incf ptr- (send _message :serialization-length))
   ;;
   self)
  )

(defclass exercise_2::robotStateSrv
  :super ros::object
  :slots ())

(setf (get exercise_2::robotStateSrv :md5sum-) "9b8cd509dd6ad6e147547b5df51004bc")
(setf (get exercise_2::robotStateSrv :datatype-) "exercise_2/robotStateSrv")
(setf (get exercise_2::robotStateSrv :request) exercise_2::robotStateSrvRequest)
(setf (get exercise_2::robotStateSrv :response) exercise_2::robotStateSrvResponse)

(defmethod exercise_2::robotStateSrvRequest
  (:response () (instance exercise_2::robotStateSrvResponse :init)))

(setf (get exercise_2::robotStateSrvRequest :md5sum-) "9b8cd509dd6ad6e147547b5df51004bc")
(setf (get exercise_2::robotStateSrvRequest :datatype-) "exercise_2/robotStateSrvRequest")
(setf (get exercise_2::robotStateSrvRequest :definition-)
      "std_msgs/Header header
int32 id

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
---
std_msgs/Header header
exercise_1/robotMsg message

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
MSG: exercise_1/robotMsg
int32 roomId
string roomName
")

(setf (get exercise_2::robotStateSrvResponse :md5sum-) "9b8cd509dd6ad6e147547b5df51004bc")
(setf (get exercise_2::robotStateSrvResponse :datatype-) "exercise_2/robotStateSrvResponse")
(setf (get exercise_2::robotStateSrvResponse :definition-)
      "std_msgs/Header header
int32 id

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
---
std_msgs/Header header
exercise_1/robotMsg message

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
MSG: exercise_1/robotMsg
int32 roomId
string roomName
")



(provide :exercise_2/robotStateSrv "9b8cd509dd6ad6e147547b5df51004bc")


