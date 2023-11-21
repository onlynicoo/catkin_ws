; Auto-generated. Do not edit!


(cl:in-package exercise_1-msg)


;//! \htmlinclude robotMsg.msg.html

(cl:defclass <robotMsg> (roslisp-msg-protocol:ros-message)
  ((roomId
    :reader roomId
    :initarg :roomId
    :type cl:integer
    :initform 0)
   (roomName
    :reader roomName
    :initarg :roomName
    :type cl:string
    :initform "")
   (batteryLevel
    :reader batteryLevel
    :initarg :batteryLevel
    :type cl:integer
    :initform 0))
)

(cl:defclass robotMsg (<robotMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robotMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robotMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exercise_1-msg:<robotMsg> is deprecated: use exercise_1-msg:robotMsg instead.")))

(cl:ensure-generic-function 'roomId-val :lambda-list '(m))
(cl:defmethod roomId-val ((m <robotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise_1-msg:roomId-val is deprecated.  Use exercise_1-msg:roomId instead.")
  (roomId m))

(cl:ensure-generic-function 'roomName-val :lambda-list '(m))
(cl:defmethod roomName-val ((m <robotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise_1-msg:roomName-val is deprecated.  Use exercise_1-msg:roomName instead.")
  (roomName m))

(cl:ensure-generic-function 'batteryLevel-val :lambda-list '(m))
(cl:defmethod batteryLevel-val ((m <robotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise_1-msg:batteryLevel-val is deprecated.  Use exercise_1-msg:batteryLevel instead.")
  (batteryLevel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robotMsg>) ostream)
  "Serializes a message object of type '<robotMsg>"
  (cl:let* ((signed (cl:slot-value msg 'roomId)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'roomName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'roomName))
  (cl:let* ((signed (cl:slot-value msg 'batteryLevel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robotMsg>) istream)
  "Deserializes a message object of type '<robotMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roomId) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roomName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'roomName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'batteryLevel) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robotMsg>)))
  "Returns string type for a message object of type '<robotMsg>"
  "exercise_1/robotMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robotMsg)))
  "Returns string type for a message object of type 'robotMsg"
  "exercise_1/robotMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robotMsg>)))
  "Returns md5sum for a message object of type '<robotMsg>"
  "63d762d84c6d2e28546b87e174f0d422")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robotMsg)))
  "Returns md5sum for a message object of type 'robotMsg"
  "63d762d84c6d2e28546b87e174f0d422")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robotMsg>)))
  "Returns full string definition for message of type '<robotMsg>"
  (cl:format cl:nil "int32 roomId~%string roomName~%int32 batteryLevel~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robotMsg)))
  "Returns full string definition for message of type 'robotMsg"
  (cl:format cl:nil "int32 roomId~%string roomName~%int32 batteryLevel~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robotMsg>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'roomName))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robotMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'robotMsg
    (cl:cons ':roomId (roomId msg))
    (cl:cons ':roomName (roomName msg))
    (cl:cons ':batteryLevel (batteryLevel msg))
))
