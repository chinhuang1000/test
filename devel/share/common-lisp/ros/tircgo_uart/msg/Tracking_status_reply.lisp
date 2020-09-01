; Auto-generated. Do not edit!


(cl:in-package tircgo_uart-msg)


;//! \htmlinclude Tracking_status_reply.msg.html

(cl:defclass <Tracking_status_reply> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (is_legal_op
    :reader is_legal_op
    :initarg :is_legal_op
    :type cl:boolean
    :initform cl:nil)
   (is_activated
    :reader is_activated
    :initarg :is_activated
    :type cl:boolean
    :initform cl:nil)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0)
   (reply
    :reader reply
    :initarg :reply
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Tracking_status_reply (<Tracking_status_reply>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Tracking_status_reply>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Tracking_status_reply)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tircgo_uart-msg:<Tracking_status_reply> is deprecated: use tircgo_uart-msg:Tracking_status_reply instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Tracking_status_reply>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tircgo_uart-msg:header-val is deprecated.  Use tircgo_uart-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'is_legal_op-val :lambda-list '(m))
(cl:defmethod is_legal_op-val ((m <Tracking_status_reply>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tircgo_uart-msg:is_legal_op-val is deprecated.  Use tircgo_uart-msg:is_legal_op instead.")
  (is_legal_op m))

(cl:ensure-generic-function 'is_activated-val :lambda-list '(m))
(cl:defmethod is_activated-val ((m <Tracking_status_reply>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tircgo_uart-msg:is_activated-val is deprecated.  Use tircgo_uart-msg:is_activated instead.")
  (is_activated m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <Tracking_status_reply>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tircgo_uart-msg:error_code-val is deprecated.  Use tircgo_uart-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'reply-val :lambda-list '(m))
(cl:defmethod reply-val ((m <Tracking_status_reply>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tircgo_uart-msg:reply-val is deprecated.  Use tircgo_uart-msg:reply instead.")
  (reply m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Tracking_status_reply>) ostream)
  "Serializes a message object of type '<Tracking_status_reply>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_legal_op) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_activated) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reply)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Tracking_status_reply>) istream)
  "Deserializes a message object of type '<Tracking_status_reply>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'is_legal_op) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_activated) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reply) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Tracking_status_reply>)))
  "Returns string type for a message object of type '<Tracking_status_reply>"
  "tircgo_uart/Tracking_status_reply")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Tracking_status_reply)))
  "Returns string type for a message object of type 'Tracking_status_reply"
  "tircgo_uart/Tracking_status_reply")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Tracking_status_reply>)))
  "Returns md5sum for a message object of type '<Tracking_status_reply>"
  "9d3408e6b80e747b553974b7f98663c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Tracking_status_reply)))
  "Returns md5sum for a message object of type 'Tracking_status_reply"
  "9d3408e6b80e747b553974b7f98663c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Tracking_status_reply>)))
  "Returns full string definition for message of type '<Tracking_status_reply>"
  (cl:format cl:nil "std_msgs/Header header~%bool is_legal_op~%bool is_activated~%int16 error_code~%int16 reply~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Tracking_status_reply)))
  "Returns full string definition for message of type 'Tracking_status_reply"
  (cl:format cl:nil "std_msgs/Header header~%bool is_legal_op~%bool is_activated~%int16 error_code~%int16 reply~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Tracking_status_reply>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Tracking_status_reply>))
  "Converts a ROS message object to a list"
  (cl:list 'Tracking_status_reply
    (cl:cons ':header (header msg))
    (cl:cons ':is_legal_op (is_legal_op msg))
    (cl:cons ':is_activated (is_activated msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':reply (reply msg))
))
