; Auto-generated. Do not edit!


(cl:in-package exercise_2-srv)


;//! \htmlinclude robotStateSrv-request.msg.html

(cl:defclass <robotStateSrv-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass robotStateSrv-request (<robotStateSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robotStateSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robotStateSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exercise_2-srv:<robotStateSrv-request> is deprecated: use exercise_2-srv:robotStateSrv-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <robotStateSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise_2-srv:header-val is deprecated.  Use exercise_2-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <robotStateSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise_2-srv:id-val is deprecated.  Use exercise_2-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robotStateSrv-request>) ostream)
  "Serializes a message object of type '<robotStateSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robotStateSrv-request>) istream)
  "Deserializes a message object of type '<robotStateSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robotStateSrv-request>)))
  "Returns string type for a service object of type '<robotStateSrv-request>"
  "exercise_2/robotStateSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robotStateSrv-request)))
  "Returns string type for a service object of type 'robotStateSrv-request"
  "exercise_2/robotStateSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robotStateSrv-request>)))
  "Returns md5sum for a message object of type '<robotStateSrv-request>"
  "9b8cd509dd6ad6e147547b5df51004bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robotStateSrv-request)))
  "Returns md5sum for a message object of type 'robotStateSrv-request"
  "9b8cd509dd6ad6e147547b5df51004bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robotStateSrv-request>)))
  "Returns full string definition for message of type '<robotStateSrv-request>"
  (cl:format cl:nil "std_msgs/Header header~%int32 id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robotStateSrv-request)))
  "Returns full string definition for message of type 'robotStateSrv-request"
  (cl:format cl:nil "std_msgs/Header header~%int32 id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robotStateSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robotStateSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'robotStateSrv-request
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
))
;//! \htmlinclude robotStateSrv-response.msg.html

(cl:defclass <robotStateSrv-response> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (message
    :reader message
    :initarg :message
    :type exercise_1-msg:robotMsg
    :initform (cl:make-instance 'exercise_1-msg:robotMsg)))
)

(cl:defclass robotStateSrv-response (<robotStateSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robotStateSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robotStateSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exercise_2-srv:<robotStateSrv-response> is deprecated: use exercise_2-srv:robotStateSrv-response instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <robotStateSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise_2-srv:header-val is deprecated.  Use exercise_2-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <robotStateSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise_2-srv:message-val is deprecated.  Use exercise_2-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robotStateSrv-response>) ostream)
  "Serializes a message object of type '<robotStateSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'message) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robotStateSrv-response>) istream)
  "Deserializes a message object of type '<robotStateSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'message) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robotStateSrv-response>)))
  "Returns string type for a service object of type '<robotStateSrv-response>"
  "exercise_2/robotStateSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robotStateSrv-response)))
  "Returns string type for a service object of type 'robotStateSrv-response"
  "exercise_2/robotStateSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robotStateSrv-response>)))
  "Returns md5sum for a message object of type '<robotStateSrv-response>"
  "9b8cd509dd6ad6e147547b5df51004bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robotStateSrv-response)))
  "Returns md5sum for a message object of type 'robotStateSrv-response"
  "9b8cd509dd6ad6e147547b5df51004bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robotStateSrv-response>)))
  "Returns full string definition for message of type '<robotStateSrv-response>"
  (cl:format cl:nil "std_msgs/Header header~%exercise_1/robotMsg message~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: exercise_1/robotMsg~%int32 roomId~%string roomName~%int32 batteryLevel~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robotStateSrv-response)))
  "Returns full string definition for message of type 'robotStateSrv-response"
  (cl:format cl:nil "std_msgs/Header header~%exercise_1/robotMsg message~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: exercise_1/robotMsg~%int32 roomId~%string roomName~%int32 batteryLevel~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robotStateSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robotStateSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'robotStateSrv-response
    (cl:cons ':header (header msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'robotStateSrv)))
  'robotStateSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'robotStateSrv)))
  'robotStateSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robotStateSrv)))
  "Returns string type for a service object of type '<robotStateSrv>"
  "exercise_2/robotStateSrv")