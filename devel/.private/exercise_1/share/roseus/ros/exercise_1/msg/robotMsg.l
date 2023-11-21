;; Auto-generated. Do not edit!


(when (boundp 'exercise_1::robotMsg)
  (if (not (find-package "EXERCISE_1"))
    (make-package "EXERCISE_1"))
  (shadow 'robotMsg (find-package "EXERCISE_1")))
(unless (find-package "EXERCISE_1::ROBOTMSG")
  (make-package "EXERCISE_1::ROBOTMSG"))

(in-package "ROS")
;;//! \htmlinclude robotMsg.msg.html


(defclass exercise_1::robotMsg
  :super ros::object
  :slots (_roomId _roomName _batteryLevel ))

(defmethod exercise_1::robotMsg
  (:init
   (&key
    ((:roomId __roomId) 0)
    ((:roomName __roomName) "")
    ((:batteryLevel __batteryLevel) 0)
    )
   (send-super :init)
   (setq _roomId (round __roomId))
   (setq _roomName (string __roomName))
   (setq _batteryLevel (round __batteryLevel))
   self)
  (:roomId
   (&optional __roomId)
   (if __roomId (setq _roomId __roomId)) _roomId)
  (:roomName
   (&optional __roomName)
   (if __roomName (setq _roomName __roomName)) _roomName)
  (:batteryLevel
   (&optional __batteryLevel)
   (if __batteryLevel (setq _batteryLevel __batteryLevel)) _batteryLevel)
  (:serialization-length
   ()
   (+
    ;; int32 _roomId
    4
    ;; string _roomName
    4 (length _roomName)
    ;; int32 _batteryLevel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roomId
       (write-long _roomId s)
     ;; string _roomName
       (write-long (length _roomName) s) (princ _roomName s)
     ;; int32 _batteryLevel
       (write-long _batteryLevel s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roomId
     (setq _roomId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _roomName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _roomName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _batteryLevel
     (setq _batteryLevel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get exercise_1::robotMsg :md5sum-) "63d762d84c6d2e28546b87e174f0d422")
(setf (get exercise_1::robotMsg :datatype-) "exercise_1/robotMsg")
(setf (get exercise_1::robotMsg :definition-)
      "int32 roomId
string roomName
int32 batteryLevel
")



(provide :exercise_1/robotMsg "63d762d84c6d2e28546b87e174f0d422")


