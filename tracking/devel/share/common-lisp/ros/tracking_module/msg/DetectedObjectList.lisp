; Auto-generated. Do not edit!


(cl:in-package tracking_module-msg)


;//! \htmlinclude DetectedObjectList.msg.html

(cl:defclass <DetectedObjectList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector tracking_module-msg:DetectedObject)
   :initform (cl:make-array 0 :element-type 'tracking_module-msg:DetectedObject :initial-element (cl:make-instance 'tracking_module-msg:DetectedObject))))
)

(cl:defclass DetectedObjectList (<DetectedObjectList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectedObjectList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectedObjectList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tracking_module-msg:<DetectedObjectList> is deprecated: use tracking_module-msg:DetectedObjectList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DetectedObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracking_module-msg:header-val is deprecated.  Use tracking_module-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <DetectedObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracking_module-msg:objects-val is deprecated.  Use tracking_module-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectedObjectList>) ostream)
  "Serializes a message object of type '<DetectedObjectList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectedObjectList>) istream)
  "Deserializes a message object of type '<DetectedObjectList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tracking_module-msg:DetectedObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectedObjectList>)))
  "Returns string type for a message object of type '<DetectedObjectList>"
  "tracking_module/DetectedObjectList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectedObjectList)))
  "Returns string type for a message object of type 'DetectedObjectList"
  "tracking_module/DetectedObjectList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectedObjectList>)))
  "Returns md5sum for a message object of type '<DetectedObjectList>"
  "6aa28ce16652a784162874bcf0ae26ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectedObjectList)))
  "Returns md5sum for a message object of type 'DetectedObjectList"
  "6aa28ce16652a784162874bcf0ae26ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectedObjectList>)))
  "Returns full string definition for message of type '<DetectedObjectList>"
  (cl:format cl:nil "Header header~%DetectedObject[] objects~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tracking_module/DetectedObject~%string sample_token~%float64[] translation~%float64[] size~%float64[] rotation~%float64[] velocity~%string detection_name~%float64 detection_score~%string attribute_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectedObjectList)))
  "Returns full string definition for message of type 'DetectedObjectList"
  (cl:format cl:nil "Header header~%DetectedObject[] objects~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tracking_module/DetectedObject~%string sample_token~%float64[] translation~%float64[] size~%float64[] rotation~%float64[] velocity~%string detection_name~%float64 detection_score~%string attribute_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectedObjectList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectedObjectList>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectedObjectList
    (cl:cons ':header (header msg))
    (cl:cons ':objects (objects msg))
))
