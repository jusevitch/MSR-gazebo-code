;; Auto-generated. Do not edit!


(when (boundp 'roboclaw_node::Wheels_speeds)
  (if (not (find-package "ROBOCLAW_NODE"))
    (make-package "ROBOCLAW_NODE"))
  (shadow 'Wheels_speeds (find-package "ROBOCLAW_NODE")))
(unless (find-package "ROBOCLAW_NODE::WHEELS_SPEEDS")
  (make-package "ROBOCLAW_NODE::WHEELS_SPEEDS"))

(in-package "ROS")
;;//! \htmlinclude Wheels_speeds.msg.html


(defclass roboclaw_node::Wheels_speeds
  :super ros::object
  :slots (_wheel1 _wheel2 ))

(defmethod roboclaw_node::Wheels_speeds
  (:init
   (&key
    ((:wheel1 __wheel1) 0.0)
    ((:wheel2 __wheel2) 0.0)
    )
   (send-super :init)
   (setq _wheel1 (float __wheel1))
   (setq _wheel2 (float __wheel2))
   self)
  (:wheel1
   (&optional __wheel1)
   (if __wheel1 (setq _wheel1 __wheel1)) _wheel1)
  (:wheel2
   (&optional __wheel2)
   (if __wheel2 (setq _wheel2 __wheel2)) _wheel2)
  (:serialization-length
   ()
   (+
    ;; float32 _wheel1
    4
    ;; float32 _wheel2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _wheel1
       (sys::poke _wheel1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wheel2
       (sys::poke _wheel2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _wheel1
     (setq _wheel1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wheel2
     (setq _wheel2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboclaw_node::Wheels_speeds :md5sum-) "2108b8f789e1bd68070c8a00d7676194")
(setf (get roboclaw_node::Wheels_speeds :datatype-) "roboclaw_node/Wheels_speeds")
(setf (get roboclaw_node::Wheels_speeds :definition-)
      "float32 wheel1
float32 wheel2

")



(provide :roboclaw_node/Wheels_speeds "2108b8f789e1bd68070c8a00d7676194")


