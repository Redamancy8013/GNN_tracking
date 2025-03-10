;; Auto-generated. Do not edit!


(when (boundp 'tracking_module::DetectedObject)
  (if (not (find-package "TRACKING_MODULE"))
    (make-package "TRACKING_MODULE"))
  (shadow 'DetectedObject (find-package "TRACKING_MODULE")))
(unless (find-package "TRACKING_MODULE::DETECTEDOBJECT")
  (make-package "TRACKING_MODULE::DETECTEDOBJECT"))

(in-package "ROS")
;;//! \htmlinclude DetectedObject.msg.html


(defclass tracking_module::DetectedObject
  :super ros::object
  :slots (_sample_token _translation _size _rotation _velocity _detection_name _detection_score _attribute_name ))

(defmethod tracking_module::DetectedObject
  (:init
   (&key
    ((:sample_token __sample_token) "")
    ((:translation __translation) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:size __size) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rotation __rotation) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity __velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:detection_name __detection_name) "")
    ((:detection_score __detection_score) 0.0)
    ((:attribute_name __attribute_name) "")
    )
   (send-super :init)
   (setq _sample_token (string __sample_token))
   (setq _translation __translation)
   (setq _size __size)
   (setq _rotation __rotation)
   (setq _velocity __velocity)
   (setq _detection_name (string __detection_name))
   (setq _detection_score (float __detection_score))
   (setq _attribute_name (string __attribute_name))
   self)
  (:sample_token
   (&optional __sample_token)
   (if __sample_token (setq _sample_token __sample_token)) _sample_token)
  (:translation
   (&optional __translation)
   (if __translation (setq _translation __translation)) _translation)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:rotation
   (&optional __rotation)
   (if __rotation (setq _rotation __rotation)) _rotation)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:detection_name
   (&optional __detection_name)
   (if __detection_name (setq _detection_name __detection_name)) _detection_name)
  (:detection_score
   (&optional __detection_score)
   (if __detection_score (setq _detection_score __detection_score)) _detection_score)
  (:attribute_name
   (&optional __attribute_name)
   (if __attribute_name (setq _attribute_name __attribute_name)) _attribute_name)
  (:serialization-length
   ()
   (+
    ;; string _sample_token
    4 (length _sample_token)
    ;; float64[] _translation
    (* 8    (length _translation)) 4
    ;; float64[] _size
    (* 8    (length _size)) 4
    ;; float64[] _rotation
    (* 8    (length _rotation)) 4
    ;; float64[] _velocity
    (* 8    (length _velocity)) 4
    ;; string _detection_name
    4 (length _detection_name)
    ;; float64 _detection_score
    8
    ;; string _attribute_name
    4 (length _attribute_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sample_token
       (write-long (length _sample_token) s) (princ _sample_token s)
     ;; float64[] _translation
     (write-long (length _translation) s)
     (dotimes (i (length _translation))
       (sys::poke (elt _translation i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _size
     (write-long (length _size) s)
     (dotimes (i (length _size))
       (sys::poke (elt _size i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _rotation
     (write-long (length _rotation) s)
     (dotimes (i (length _rotation))
       (sys::poke (elt _rotation i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _velocity
     (write-long (length _velocity) s)
     (dotimes (i (length _velocity))
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string _detection_name
       (write-long (length _detection_name) s) (princ _detection_name s)
     ;; float64 _detection_score
       (sys::poke _detection_score (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _attribute_name
       (write-long (length _attribute_name) s) (princ _attribute_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sample_token
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sample_token (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _translation
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _translation (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _translation i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _size
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _size (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _size i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _rotation
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rotation (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rotation i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string _detection_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _detection_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _detection_score
     (setq _detection_score (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _attribute_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _attribute_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tracking_module::DetectedObject :md5sum-) "8ca01a6aa65060b095be04c7e327b426")
(setf (get tracking_module::DetectedObject :datatype-) "tracking_module/DetectedObject")
(setf (get tracking_module::DetectedObject :definition-)
      "string sample_token
float64[] translation
float64[] size
float64[] rotation
float64[] velocity
string detection_name
float64 detection_score
string attribute_name

")



(provide :tracking_module/DetectedObject "8ca01a6aa65060b095be04c7e327b426")


