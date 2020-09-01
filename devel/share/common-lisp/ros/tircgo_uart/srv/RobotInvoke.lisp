; Auto-generated. Do not edit!


(cl:in-package tircgo_uart-srv)


;//! \htmlinclude RobotInvoke-request.msg.html

(cl:defclass <RobotInvoke-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (operation
    :reader operation
    :initarg :operation
    :type cl:integer
    :initform 0)
   (argument
    :reader argument
    :initarg :argument
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass RobotInvoke-request (<RobotInvoke-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotInvoke-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotInvoke-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tircgo_uart-srv:<RobotInvoke-request> is deprecated: use tircgo_uart-srv:RobotInvoke-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RobotInvoke-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tircgo_uart-srv:header-val is deprecated.  Use tircgo_uart-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'operation-val :lambda-list '(m))
(cl:defmethod operation-val ((m <RobotInvoke-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tircgo_uart-srv:operation-val is deprecated.  Use tircgo_uart-srv:operation instead.")
  (operation m))

(cl:ensure-generic-function 'argument-val :lambda-list '(m))
(cl:defmethod argument-val ((m <RobotInvoke-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tircgo_uart-srv:argument-val is deprecated.  Use tircgo_uart-srv:argument instead.")
  (argument m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotInvoke-request>) ostream)
  "Serializes a message object of type '<RobotInvoke-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'operation)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'argument))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'argument))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotInvoke-request>) istream)
  "Deserializes a message object of type '<RobotInvoke-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'operation)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'argument) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'argument)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotInvoke-request>)))
  "Returns string type for a service object of type '<RobotInvoke-request>"
  "tircgo_uart/RobotInvokeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotInvoke-request)))
  "Returns string type for a service object of type 'RobotInvoke-request"
  "tircgo_uart/RobotInvokeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotInvoke-request>)))
  "Returns md5sum for a message object of type '<RobotInvoke-request>"
  "3fb5b8bd341accb019477d3b6414a198")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotInvoke-request)))
  "Returns md5sum for a message object of type 'RobotInvoke-request"
  "3fb5b8bd341accb019477d3b6414a198")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotInvoke-request>)))
  "Returns full string definition for message of type '<RobotInvoke-request>"
  (cl:format cl:nil "std_msgs/Header header~%char operation~%int16[] argument~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotInvoke-request)))
  "Returns full string definition for message of type 'RobotInvoke-request"
  (cl:format cl:nil "std_msgs/Header header~%char operation~%int16[] argument~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotInvoke-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'argument) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotInvoke-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotInvoke-request
    (cl:cons ':header (header msg))
    (cl:cons ':operation (operation msg))
    (cl:cons ':argument (argument msg))
))
;//! \htmlinclude RobotInvoke-response.msg.html

(cl:defclass <RobotInvoke-response> (roslisp-msg-protocol:ros-message)
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
   (is_arg_valid
    :reader is_arg_valid
    :initarg :is_arg_valid
    :type cl:boolean
    :initform cl:nil)
   (is_activated
    :reader is_activated
    :initarg :is_activated
    :type cl:boolean
    :initform cl:nil)
   (feedback
    :reader feedback
    :initarg :feedback
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RobotInvoke-response (<RobotInvoke-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotInvoke-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotInvoke-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tircgo_uart-srv:<RobotInvoke-response> is deprecated: use tircgo_uart-srv:RobotInvoke-response instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RobotInvoke-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tircgo_uart-srv:header-val is deprecated.  Use tircgo_uart-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'is_legal_op-val :lambda-list '(m))
(cl:defmethod is_legal_op-val ((m <RobotInvoke-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tircgo_uart-srv:is_legal_op-val is deprecated.  Use tircgo_uart-srv:is_legal_op instead.")
  (is_legal_op m))

(cl:ensure-generic-function 'is_arg_valid-val :lambda-list '(m))
(cl:defmethod is_arg_valid-val ((m <RobotInvoke-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tircgo_uart-srv:is_arg_valid-val is deprecated.  Use tircgo_uart-srv:is_arg_valid instead.")
  (is_arg_valid m))

(cl:ensure-generic-function 'is_activated-val :lambda-list '(m))
(cl:defmethod is_activated-val ((m <RobotInvoke-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tircgo_uart-srv:is_activated-val is deprecated.  Use tircgo_uart-srv:is_activated instead.")
  (is_activated m))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <RobotInvoke-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tircgo_uart-srv:feedback-val is deprecated.  Use tircgo_uart-srv:feedback instead.")
  (feedback m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <RobotInvoke-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tircgo_uart-srv:error_code-val is deprecated.  Use tircgo_uart-srv:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotInvoke-response>) ostream)
  "Serializes a message object of type '<RobotInvoke-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_legal_op) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_arg_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_activated) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'feedback))
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotInvoke-response>) istream)
  "Deserializes a message object of type '<RobotInvoke-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'is_legal_op) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_arg_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_activated) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'feedback) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'feedback)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotInvoke-response>)))
  "Returns string type for a service object of type '<RobotInvoke-response>"
  "tircgo_uart/RobotInvokeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotInvoke-response)))
  "Returns string type for a service object of type 'RobotInvoke-response"
  "tircgo_uart/RobotInvokeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotInvoke-response>)))
  "Returns md5sum for a message object of type '<RobotInvoke-response>"
  "3fb5b8bd341accb019477d3b6414a198")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotInvoke-response)))
  "Returns md5sum for a message object of type 'RobotInvoke-response"
  "3fb5b8bd341accb019477d3b6414a198")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotInvoke-response>)))
  "Returns full string definition for message of type '<RobotInvoke-response>"
  (cl:format cl:nil "std_msgs/Header header~%bool is_legal_op~%bool is_arg_valid~%bool is_activated~%int16[] feedback~%int16 error_code~% ~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotInvoke-response)))
  "Returns full string definition for message of type 'RobotInvoke-response"
  (cl:format cl:nil "std_msgs/Header header~%bool is_legal_op~%bool is_arg_valid~%bool is_activated~%int16[] feedback~%int16 error_code~% ~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotInvoke-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'feedback) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotInvoke-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotInvoke-response
    (cl:cons ':header (header msg))
    (cl:cons ':is_legal_op (is_legal_op msg))
    (cl:cons ':is_arg_valid (is_arg_valid msg))
    (cl:cons ':is_activated (is_activated msg))
    (cl:cons ':feedback (feedback msg))
    (cl:cons ':error_code (error_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotInvoke)))
  'RobotInvoke-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotInvoke)))
  'RobotInvoke-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotInvoke)))
  "Returns string type for a service object of type '<RobotInvoke>"
  "tircgo_uart/RobotInvoke")