;; Auto-generated. Do not edit!


(when (boundp 'tracking_module::DetectedObjectList)
  (if (not (find-package "TRACKING_MODULE"))
    (make-package "TRACKING_MODULE"))
  (shadow 'DetectedObjectList (find-package "TRACKING_MODULE")))
(unless (find-package "TRACKING_MODULE::DETECTEDOBJECTLIST")
  (make-package "TRACKING_MODULE::DETECTEDOBJECTLIST"))

(in-package "ROS")
;;//! \htmlinclude DetectedObjectList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tracking_module::DetectedObjectList
  :super ros::object
  :slots (_header _objects ))

(defmethod tracking_module::DetectedObjectList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:objects __objects) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _objects __objects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; tracking_module/DetectedObject[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; tracking_module/DetectedObject[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; tracking_module/DetectedObject[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance tracking_module::DetectedObject :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tracking_module::DetectedObjectList :md5sum-) "6aa28ce16652a784162874bcf0ae26ca")
(setf (get tracking_module::DetectedObjectList :datatype-) "tracking_module/DetectedObjectList")
(setf (get tracking_module::DetectedObjectList :definition-)
      "Header header
DetectedObject[] objects
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
MSG: tracking_module/DetectedObject
string sample_token
float64[] translation
float64[] size
float64[] rotation
float64[] velocity
string detection_name
float64 detection_score
string attribute_name

")



(provide :tracking_module/DetectedObjectList "6aa28ce16652a784162874bcf0ae26ca")


