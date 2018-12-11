;; Auto-generated. Do not edit!


(when (boundp 'rcomv_r1::CubicPath)
  (if (not (find-package "RCOMV_R1"))
    (make-package "RCOMV_R1"))
  (shadow 'CubicPath (find-package "RCOMV_R1")))
(unless (find-package "RCOMV_R1::CUBICPATH")
  (make-package "RCOMV_R1::CUBICPATH"))

(in-package "ROS")
;;//! \htmlinclude CubicPath.msg.html


(defclass rcomv_r1::CubicPath
  :super ros::object
  :slots (_path_type _qi_x _qi_y _qi_theta _qf_x _qf_y _qf_theta _T _poly_k ))

(defmethod rcomv_r1::CubicPath
  (:init
   (&key
    ((:path_type __path_type) "")
    ((:qi_x __qi_x) 0.0)
    ((:qi_y __qi_y) 0.0)
    ((:qi_theta __qi_theta) 0.0)
    ((:qf_x __qf_x) 0.0)
    ((:qf_y __qf_y) 0.0)
    ((:qf_theta __qf_theta) 0.0)
    ((:T __T) 0.0)
    ((:poly_k __poly_k) 0.0)
    )
   (send-super :init)
   (setq _path_type (string __path_type))
   (setq _qi_x (float __qi_x))
   (setq _qi_y (float __qi_y))
   (setq _qi_theta (float __qi_theta))
   (setq _qf_x (float __qf_x))
   (setq _qf_y (float __qf_y))
   (setq _qf_theta (float __qf_theta))
   (setq _T (float __T))
   (setq _poly_k (float __poly_k))
   self)
  (:path_type
   (&optional __path_type)
   (if __path_type (setq _path_type __path_type)) _path_type)
  (:qi_x
   (&optional __qi_x)
   (if __qi_x (setq _qi_x __qi_x)) _qi_x)
  (:qi_y
   (&optional __qi_y)
   (if __qi_y (setq _qi_y __qi_y)) _qi_y)
  (:qi_theta
   (&optional __qi_theta)
   (if __qi_theta (setq _qi_theta __qi_theta)) _qi_theta)
  (:qf_x
   (&optional __qf_x)
   (if __qf_x (setq _qf_x __qf_x)) _qf_x)
  (:qf_y
   (&optional __qf_y)
   (if __qf_y (setq _qf_y __qf_y)) _qf_y)
  (:qf_theta
   (&optional __qf_theta)
   (if __qf_theta (setq _qf_theta __qf_theta)) _qf_theta)
  (:T
   (&optional __T)
   (if __T (setq _T __T)) _T)
  (:poly_k
   (&optional __poly_k)
   (if __poly_k (setq _poly_k __poly_k)) _poly_k)
  (:serialization-length
   ()
   (+
    ;; string _path_type
    4 (length _path_type)
    ;; float64 _qi_x
    8
    ;; float64 _qi_y
    8
    ;; float64 _qi_theta
    8
    ;; float64 _qf_x
    8
    ;; float64 _qf_y
    8
    ;; float64 _qf_theta
    8
    ;; float64 _T
    8
    ;; float64 _poly_k
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _path_type
       (write-long (length _path_type) s) (princ _path_type s)
     ;; float64 _qi_x
       (sys::poke _qi_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qi_y
       (sys::poke _qi_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qi_theta
       (sys::poke _qi_theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qf_x
       (sys::poke _qf_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qf_y
       (sys::poke _qf_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qf_theta
       (sys::poke _qf_theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _T
       (sys::poke _T (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _poly_k
       (sys::poke _poly_k (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _path_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _qi_x
     (setq _qi_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qi_y
     (setq _qi_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qi_theta
     (setq _qi_theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qf_x
     (setq _qf_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qf_y
     (setq _qf_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qf_theta
     (setq _qf_theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _T
     (setq _T (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _poly_k
     (setq _poly_k (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rcomv_r1::CubicPath :md5sum-) "fd1af34fecb10a7d71d4740943397d74")
(setf (get rcomv_r1::CubicPath :datatype-) "rcomv_r1/CubicPath")
(setf (get rcomv_r1::CubicPath :definition-)
      "# The Cubic Polynomials Path/Trajectory Data Type.
# This is used for defining a trajectory using cubic polynomials equations

# path type
string path_type

# inital location
float64 qi_x
float64 qi_y
float64 qi_theta

# final location
float64 qf_x
float64 qf_y
float64 qf_theta

# total travel time
float64 T

# cubic polynomial parameter
float64 poly_k

")



(provide :rcomv_r1/CubicPath "fd1af34fecb10a7d71d4740943397d74")


