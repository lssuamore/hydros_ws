;; Auto-generated. Do not edit!


(when (boundp 'hydros::sensor)
  (if (not (find-package "HYDROS"))
    (make-package "HYDROS"))
  (shadow 'sensor (find-package "HYDROS")))
(unless (find-package "HYDROS::SENSOR")
  (make-package "HYDROS::SENSOR"))

(in-package "ROS")
;;//! \htmlinclude sensor.msg.html


(defclass hydros::sensor
  :super ros::object
  :slots (_conductivity _temperature _depth ))

(defmethod hydros::sensor
  (:init
   (&key
    ((:conductivity __conductivity) 0.0)
    ((:temperature __temperature) 0.0)
    ((:depth __depth) 0.0)
    )
   (send-super :init)
   (setq _conductivity (float __conductivity))
   (setq _temperature (float __temperature))
   (setq _depth (float __depth))
   self)
  (:conductivity
   (&optional __conductivity)
   (if __conductivity (setq _conductivity __conductivity)) _conductivity)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:depth
   (&optional __depth)
   (if __depth (setq _depth __depth)) _depth)
  (:serialization-length
   ()
   (+
    ;; float32 _conductivity
    4
    ;; float32 _temperature
    4
    ;; float32 _depth
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _conductivity
       (sys::poke _conductivity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _depth
       (sys::poke _depth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _conductivity
     (setq _conductivity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _depth
     (setq _depth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hydros::sensor :md5sum-) "f653f05c2a687f77b0e5d31ef180fc88")
(setf (get hydros::sensor :datatype-) "hydros/sensor")
(setf (get hydros::sensor :definition-)
      "float32 conductivity
float32 temperature
float32 depth

")



(provide :hydros/sensor "f653f05c2a687f77b0e5d31ef180fc88")


