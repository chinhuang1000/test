; Auto-generated. Do not edit!


(cl:in-package tircgo_uart-msg)


;//! \htmlinclude RobotStatus.msg.html

(cl:defclass <RobotStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (is_activated
    :reader is_activated
    :initarg :is_activated
    :type cl:boolean
    :initform cl:nil)
   (now_mode
    :reader now_mode
    :initarg :now_mode
    :type cl:fixnum
    :initform 0)
   (tracking_status_reply
    :reader tracking_status_reply
    :initarg :tracking_status_reply
    :type tircgo_uart-msg:Tracking_status_reply
    :initform (cl:make-instance 'tircgo_uart-msg:Tracking_status_reply))
   (lidar_level_reply
    :reader lidar_level_reply
    :initarg :lidar_level_reply
    :type tircgo_uart-msg:Lidar_level_reply
    :initform (cl:make-instance 'tircgo_uart-msg:Lidar_level_reply)))
)

(cl:defclass RobotStatus (<RobotStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tircgo_uart-msg:<RobotStatus> is deprecated: use tircgo_uart-msg:RobotStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tircgo_uart-msg:header-val is deprecated.  Use tircgo_uart-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'is_activated-val :lambda-list '(m))
(cl:defmethod is_activated-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tircgo_uart-msg:is_activated-val is deprecated.  Use tircgo_uart-msg:is_activated instead.")
  (is_activated m))

(cl:ensure-generic-function 'now_mode-val :lambda-list '(m))
(cl:defmethod now_mode-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tircgo_uart-msg:now_mode-val is deprecated.  Use tircgo_uart-msg:now_mode instead.")
  (now_mode m))

(cl:ensure-generic-function 'tracking_status_reply-val :lambda-list '(m))
(cl:defmethod tracking_status_reply-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tircgo_uart-msg:tracking_status_reply-val is deprecated.  Use tircgo_uart-msg:tracking_status_reply instead.")
  (tracking_status_reply m))

(cl:ensure-generic-function 'lidar_level_reply-val :lambda-list '(m))
(cl:defmethod lidar_level_reply-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tircgo_uart-msg:lidar_level_reply-val is deprecated.  Use tircgo_uart-msg:lidar_level_reply instead.")
  (lidar_level_reply m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotStatus>) ostream)
  "Serializes a message object of type '<RobotStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_activated) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'now_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tracking_status_reply) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lidar_level_reply) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotStatus>) istream)
  "Deserializes a message object of type '<RobotStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'is_activated) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'now_mode) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tracking_status_reply) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lidar_level_reply) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotStatus>)))
  "Returns string type for a message object of type '<RobotStatus>"
  "tircgo_uart/RobotStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStatus)))
  "Returns string type for a message object of type 'RobotStatus"
  "tircgo_uart/RobotStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotStatus>)))
  "Returns md5sum for a message object of type '<RobotStatus>"
  "724d9103467732d3b906abe0e2db04e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotStatus)))
  "Returns md5sum for a message object of type 'RobotStatus"
  "724d9103467732d3b906abe0e2db04e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotStatus>)))
  "Returns full string definition for message of type '<RobotStatus>"
  (cl:format cl:nil "std_msgs/Header header~%bool is_activated~%int16 now_mode~%tircgo_uart/Tracking_status_reply tracking_status_reply~%tircgo_uart/Lidar_level_reply lidar_level_reply~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tircgo_uart/Tracking_status_reply~%std_msgs/Header header~%bool is_legal_op~%bool is_activated~%int16 error_code~%int16 reply~%~%================================================================================~%MSG: tircgo_uart/Lidar_level_reply~%std_msgs/Header header~%bool is_legal_op~%bool is_activated~%int16 error_code~%int16[] level_reply~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotStatus)))
  "Returns full string definition for message of type 'RobotStatus"
  (cl:format cl:nil "std_msgs/Header header~%bool is_activated~%int16 now_mode~%tircgo_uart/Tracking_status_reply tracking_status_reply~%tircgo_uart/Lidar_level_reply lidar_level_reply~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tircgo_uart/Tracking_status_reply~%std_msgs/Header header~%bool is_legal_op~%bool is_activated~%int16 error_code~%int16 reply~%~%================================================================================~%MSG: tircgo_uart/Lidar_level_reply~%std_msgs/Header header~%bool is_legal_op~%bool is_activated~%int16 error_code~%int16[] level_reply~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tracking_status_reply))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lidar_level_reply))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotStatus
    (cl:cons ':header (header msg))
    (cl:cons ':is_activated (is_activated msg))
    (cl:cons ':now_mode (now_mode msg))
    (cl:cons ':tracking_status_reply (tracking_status_reply msg))
    (cl:cons ':lidar_level_reply (lidar_level_reply msg))
))
