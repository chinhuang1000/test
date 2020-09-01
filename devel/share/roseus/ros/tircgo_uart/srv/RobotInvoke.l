;; Auto-generated. Do not edit!


(when (boundp 'tircgo_uart::RobotInvoke)
  (if (not (find-package "TIRCGO_UART"))
    (make-package "TIRCGO_UART"))
  (shadow 'RobotInvoke (find-package "TIRCGO_UART")))
(unless (find-package "TIRCGO_UART::ROBOTINVOKE")
  (make-package "TIRCGO_UART::ROBOTINVOKE"))
(unless (find-package "TIRCGO_UART::ROBOTINVOKEREQUEST")
  (make-package "TIRCGO_UART::ROBOTINVOKEREQUEST"))
(unless (find-package "TIRCGO_UART::ROBOTINVOKERESPONSE")
  (make-package "TIRCGO_UART::ROBOTINVOKERESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tircgo_uart::RobotInvokeRequest
  :super ros::object
  :slots (_header _operation _argument ))

(defmethod tircgo_uart::RobotInvokeRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:operation __operation) 0)
    ((:argument __argument) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _operation (round __operation))
   (setq _argument __argument)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:operation
   (&optional __operation)
   (if __operation (setq _operation __operation)) _operation)
  (:argument
   (&optional __argument)
   (if __argument (setq _argument __argument)) _argument)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; char _operation
    1
    ;; int16[] _argument
    (* 2    (length _argument)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; char _operation
       (write-byte _operation s)
     ;; int16[] _argument
     (write-long (length _argument) s)
     (dotimes (i (length _argument))
       (write-word (elt _argument i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; char _operation
     (setq _operation (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16[] _argument
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _argument (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _argument i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(defclass tircgo_uart::RobotInvokeResponse
  :super ros::object
  :slots (_header _is_legal_op _is_arg_valid _is_activated _feedback _error_code ))

(defmethod tircgo_uart::RobotInvokeResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:is_legal_op __is_legal_op) nil)
    ((:is_arg_valid __is_arg_valid) nil)
    ((:is_activated __is_activated) nil)
    ((:feedback __feedback) (make-array 0 :initial-element 0 :element-type :integer))
    ((:error_code __error_code) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _is_legal_op __is_legal_op)
   (setq _is_arg_valid __is_arg_valid)
   (setq _is_activated __is_activated)
   (setq _feedback __feedback)
   (setq _error_code (round __error_code))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:is_legal_op
   (&optional __is_legal_op)
   (if __is_legal_op (setq _is_legal_op __is_legal_op)) _is_legal_op)
  (:is_arg_valid
   (&optional __is_arg_valid)
   (if __is_arg_valid (setq _is_arg_valid __is_arg_valid)) _is_arg_valid)
  (:is_activated
   (&optional __is_activated)
   (if __is_activated (setq _is_activated __is_activated)) _is_activated)
  (:feedback
   (&optional __feedback)
   (if __feedback (setq _feedback __feedback)) _feedback)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _is_legal_op
    1
    ;; bool _is_arg_valid
    1
    ;; bool _is_activated
    1
    ;; int16[] _feedback
    (* 2    (length _feedback)) 4
    ;; int16 _error_code
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _is_legal_op
       (if _is_legal_op (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_arg_valid
       (if _is_arg_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_activated
       (if _is_activated (write-byte -1 s) (write-byte 0 s))
     ;; int16[] _feedback
     (write-long (length _feedback) s)
     (dotimes (i (length _feedback))
       (write-word (elt _feedback i) s)
       )
     ;; int16 _error_code
       (write-word _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _is_legal_op
     (setq _is_legal_op (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_arg_valid
     (setq _is_arg_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_activated
     (setq _is_activated (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16[] _feedback
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _feedback (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _feedback i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16 _error_code
     (setq _error_code (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass tircgo_uart::RobotInvoke
  :super ros::object
  :slots ())

(setf (get tircgo_uart::RobotInvoke :md5sum-) "3fb5b8bd341accb019477d3b6414a198")
(setf (get tircgo_uart::RobotInvoke :datatype-) "tircgo_uart/RobotInvoke")
(setf (get tircgo_uart::RobotInvoke :request) tircgo_uart::RobotInvokeRequest)
(setf (get tircgo_uart::RobotInvoke :response) tircgo_uart::RobotInvokeResponse)

(defmethod tircgo_uart::RobotInvokeRequest
  (:response () (instance tircgo_uart::RobotInvokeResponse :init)))

(setf (get tircgo_uart::RobotInvokeRequest :md5sum-) "3fb5b8bd341accb019477d3b6414a198")
(setf (get tircgo_uart::RobotInvokeRequest :datatype-) "tircgo_uart/RobotInvokeRequest")
(setf (get tircgo_uart::RobotInvokeRequest :definition-)
      "std_msgs/Header header
char operation
int16[] argument

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
bool is_legal_op
bool is_arg_valid
bool is_activated
int16[] feedback
int16 error_code
 


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
")

(setf (get tircgo_uart::RobotInvokeResponse :md5sum-) "3fb5b8bd341accb019477d3b6414a198")
(setf (get tircgo_uart::RobotInvokeResponse :datatype-) "tircgo_uart/RobotInvokeResponse")
(setf (get tircgo_uart::RobotInvokeResponse :definition-)
      "std_msgs/Header header
char operation
int16[] argument

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
bool is_legal_op
bool is_arg_valid
bool is_activated
int16[] feedback
int16 error_code
 


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
")



(provide :tircgo_uart/RobotInvoke "3fb5b8bd341accb019477d3b6414a198")


