;; Auto-generated. Do not edit!


(when (boundp 'roboclaw_node::Motors_currents)
  (if (not (find-package "ROBOCLAW_NODE"))
    (make-package "ROBOCLAW_NODE"))
  (shadow 'Motors_currents (find-package "ROBOCLAW_NODE")))
(unless (find-package "ROBOCLAW_NODE::MOTORS_CURRENTS")
  (make-package "ROBOCLAW_NODE::MOTORS_CURRENTS"))

(in-package "ROS")
;;//! \htmlinclude Motors_currents.msg.html


(defclass roboclaw_node::Motors_currents
  :super ros::object
  :slots (_motor1 _motor2 ))

(defmethod roboclaw_node::Motors_currents
  (:init
   (&key
    ((:motor1 __motor1) 0.0)
    ((:motor2 __motor2) 0.0)
    )
   (send-super :init)
   (setq _motor1 (float __motor1))
   (setq _motor2 (float __motor2))
   self)
  (:motor1
   (&optional __motor1)
   (if __motor1 (setq _motor1 __motor1)) _motor1)
  (:motor2
   (&optional __motor2)
   (if __motor2 (setq _motor2 __motor2)) _motor2)
  (:serialization-length
   ()
   (+
    ;; float32 _motor1
    4
    ;; float32 _motor2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _motor1
       (sys::poke _motor1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _motor2
       (sys::poke _motor2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _motor1
     (setq _motor1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _motor2
     (setq _motor2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboclaw_node::Motors_currents :md5sum-) "f6918c176d50f7c79727fec6589a04c7")
(setf (get roboclaw_node::Motors_currents :datatype-) "roboclaw_node/Motors_currents")
(setf (get roboclaw_node::Motors_currents :definition-)
      "float32 motor1
float32 motor2

")



(provide :roboclaw_node/Motors_currents "f6918c176d50f7c79727fec6589a04c7")


