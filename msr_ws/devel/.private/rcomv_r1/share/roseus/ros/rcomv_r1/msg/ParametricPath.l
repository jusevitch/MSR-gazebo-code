;; Auto-generated. Do not edit!


(when (boundp 'rcomv_r1::ParametricPath)
  (if (not (find-package "RCOMV_R1"))
    (make-package "RCOMV_R1"))
  (shadow 'ParametricPath (find-package "RCOMV_R1")))
(unless (find-package "RCOMV_R1::PARAMETRICPATH")
  (make-package "RCOMV_R1::PARAMETRICPATH"))

(in-package "ROS")
;;//! \htmlinclude ParametricPath.msg.html


(defclass rcomv_r1::ParametricPath
  :super ros::object
  :slots (_path_type _xc _yc _wd _R _R1 _R2 ))

(defmethod rcomv_r1::ParametricPath
  (:init
   (&key
    ((:path_type __path_type) "")
    ((:xc __xc) 0.0)
    ((:yc __yc) 0.0)
    ((:wd __wd) 0.0)
    ((:R __R) 0.0)
    ((:R1 __R1) 0.0)
    ((:R2 __R2) 0.0)
    )
   (send-super :init)
   (setq _path_type (string __path_type))
   (setq _xc (float __xc))
   (setq _yc (float __yc))
   (setq _wd (float __wd))
   (setq _R (float __R))
   (setq _R1 (float __R1))
   (setq _R2 (float __R2))
   self)
  (:path_type
   (&optional __path_type)
   (if __path_type (setq _path_type __path_type)) _path_type)
  (:xc
   (&optional __xc)
   (if __xc (setq _xc __xc)) _xc)
  (:yc
   (&optional __yc)
   (if __yc (setq _yc __yc)) _yc)
  (:wd
   (&optional __wd)
   (if __wd (setq _wd __wd)) _wd)
  (:R
   (&optional __R)
   (if __R (setq _R __R)) _R)
  (:R1
   (&optional __R1)
   (if __R1 (setq _R1 __R1)) _R1)
  (:R2
   (&optional __R2)
   (if __R2 (setq _R2 __R2)) _R2)
  (:serialization-length
   ()
   (+
    ;; string _path_type
    4 (length _path_type)
    ;; float64 _xc
    8
    ;; float64 _yc
    8
    ;; float64 _wd
    8
    ;; float64 _R
    8
    ;; float64 _R1
    8
    ;; float64 _R2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _path_type
       (write-long (length _path_type) s) (princ _path_type s)
     ;; float64 _xc
       (sys::poke _xc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yc
       (sys::poke _yc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _wd
       (sys::poke _wd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _R
       (sys::poke _R (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _R1
       (sys::poke _R1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _R2
       (sys::poke _R2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _path_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _xc
     (setq _xc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yc
     (setq _yc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _wd
     (setq _wd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _R
     (setq _R (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _R1
     (setq _R1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _R2
     (setq _R2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rcomv_r1::ParametricPath :md5sum-) "c6ff66e71430612759900cc362de36d1")
(setf (get rcomv_r1::ParametricPath :datatype-) "rcomv_r1/ParametricPath")
(setf (get rcomv_r1::ParametricPath :definition-)
      "# The Parametric Path/Trajectory Data Type.
# This is used for defining a trajectory using parametric equations

# path type
string path_type

# center location
float64 xc
float64 yc

# angular frequency
float64 wd

# Radius for the circular path
float64 R

# Radius for the eight-shaped path
float64 R1
float64 R2

")



(provide :rcomv_r1/ParametricPath "c6ff66e71430612759900cc362de36d1")


