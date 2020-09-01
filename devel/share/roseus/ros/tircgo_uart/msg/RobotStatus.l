;; Auto-generated. Do not edit!


(when (boundp 'tircgo_uart::RobotStatus)
  (if (not (find-package "TIRCGO_UART"))
    (make-package "TIRCGO_UART"))
  (shadow 'RobotStatus (find-package "TIRCGO_UART")))
(unless (find-package "TIRCGO_UART::ROBOTSTATUS")
  (make-package "TIRCGO_UART::ROBOTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RobotStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tircgo_uart::RobotStatus
  :super ros::object
  :slots (_header _is_activated _now_mode _tracking_status_reply _lidar_level_reply ))

(defmethod tircgo_uart::RobotStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:is_activated __is_activated) nil)
    ((:now_mode __now_mode) 0)
    ((:tracking_status_reply __tracking_status_reply) (instance tircgo_uart::Tracking_status_reply :init))
    ((:lidar_level_reply __lidar_level_reply) (instance tircgo_uart::Lidar_level_reply :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _is_activated __is_activated)
   (setq _now_mode (round __now_mode))
   (setq _tracking_status_reply __tracking_status_reply)
   (setq _lidar_level_reply __lidar_level_reply)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:is_activated
   (&optional __is_activated)
   (if __is_activated (setq _is_activated __is_activated)) _is_activated)
  (:now_mode
   (&optional __now_mode)
   (if __now_mode (setq _now_mode __now_mode)) _now_mode)
  (:tracking_status_reply
   (&rest __tracking_status_reply)
   (if (keywordp (car __tracking_status_reply))
       (send* _tracking_status_reply __tracking_status_reply)
     (progn
       (if __tracking_status_reply (setq _tracking_status_reply (car __tracking_status_reply)))
       _tracking_status_reply)))
  (:lidar_level_reply
   (&rest __lidar_level_reply)
   (if (keywordp (car __lidar_level_reply))
       (send* _lidar_level_reply __lidar_level_reply)
     (progn
       (if __lidar_level_reply (setq _lidar_level_reply (car __lidar_level_reply)))
       _lidar_level_reply)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _is_activated
    1
    ;; int16 _now_mode
    2
    ;; tircgo_uart/Tracking_status_reply _tracking_status_reply
    (send _tracking_status_reply :serialization-length)
    ;; tircgo_uart/Lidar_level_reply _lidar_level_reply
    (send _lidar_level_reply :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _is_activated
       (if _is_activated (write-byte -1 s) (write-byte 0 s))
     ;; int16 _now_mode
       (write-word _now_mode s)
     ;; tircgo_uart/Tracking_status_reply _tracking_status_reply
       (send _tracking_status_reply :serialize s)
     ;; tircgo_uart/Lidar_level_reply _lidar_level_reply
       (send _lidar_level_reply :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _is_activated
     (setq _is_activated (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _now_mode
     (setq _now_mode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; tircgo_uart/Tracking_status_reply _tracking_status_reply
     (send _tracking_status_reply :deserialize buf ptr-) (incf ptr- (send _tracking_status_reply :serialization-length))
   ;; tircgo_uart/Lidar_level_reply _lidar_level_reply
     (send _lidar_level_reply :deserialize buf ptr-) (incf ptr- (send _lidar_level_reply :serialization-length))
   ;;
   self)
  )

(setf (get tircgo_uart::RobotStatus :md5sum-) "724d9103467732d3b906abe0e2db04e9")
(setf (get tircgo_uart::RobotStatus :datatype-) "tircgo_uart/RobotStatus")
(setf (get tircgo_uart::RobotStatus :definition-)
      "std_msgs/Header header
bool is_activated
int16 now_mode
tircgo_uart/Tracking_status_reply tracking_status_reply
tircgo_uart/Lidar_level_reply lidar_level_reply


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
MSG: tircgo_uart/Tracking_status_reply
std_msgs/Header header
bool is_legal_op
bool is_activated
int16 error_code
int16 reply

================================================================================
MSG: tircgo_uart/Lidar_level_reply
std_msgs/Header header
bool is_legal_op
bool is_activated
int16 error_code
int16[] level_reply

")



(provide :tircgo_uart/RobotStatus "724d9103467732d3b906abe0e2db04e9")


