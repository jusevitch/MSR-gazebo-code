; Auto-generated. Do not edit!


(cl:in-package roboclaw_node-msg)


;//! \htmlinclude Motors_currents.msg.html

(cl:defclass <Motors_currents> (roslisp-msg-protocol:ros-message)
  ((motor1
    :reader motor1
    :initarg :motor1
    :type cl:float
    :initform 0.0)
   (motor2
    :reader motor2
    :initarg :motor2
    :type cl:float
    :initform 0.0))
)

(cl:defclass Motors_currents (<Motors_currents>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Motors_currents>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Motors_currents)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboclaw_node-msg:<Motors_currents> is deprecated: use roboclaw_node-msg:Motors_currents instead.")))

(cl:ensure-generic-function 'motor1-val :lambda-list '(m))
(cl:defmethod motor1-val ((m <Motors_currents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboclaw_node-msg:motor1-val is deprecated.  Use roboclaw_node-msg:motor1 instead.")
  (motor1 m))

(cl:ensure-generic-function 'motor2-val :lambda-list '(m))
(cl:defmethod motor2-val ((m <Motors_currents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboclaw_node-msg:motor2-val is deprecated.  Use roboclaw_node-msg:motor2 instead.")
  (motor2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Motors_currents>) ostream)
  "Serializes a message object of type '<Motors_currents>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'motor1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'motor2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Motors_currents>) istream)
  "Deserializes a message object of type '<Motors_currents>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor2) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Motors_currents>)))
  "Returns string type for a message object of type '<Motors_currents>"
  "roboclaw_node/Motors_currents")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Motors_currents)))
  "Returns string type for a message object of type 'Motors_currents"
  "roboclaw_node/Motors_currents")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Motors_currents>)))
  "Returns md5sum for a message object of type '<Motors_currents>"
  "f6918c176d50f7c79727fec6589a04c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Motors_currents)))
  "Returns md5sum for a message object of type 'Motors_currents"
  "f6918c176d50f7c79727fec6589a04c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Motors_currents>)))
  "Returns full string definition for message of type '<Motors_currents>"
  (cl:format cl:nil "float32 motor1~%float32 motor2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Motors_currents)))
  "Returns full string definition for message of type 'Motors_currents"
  (cl:format cl:nil "float32 motor1~%float32 motor2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Motors_currents>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Motors_currents>))
  "Converts a ROS message object to a list"
  (cl:list 'Motors_currents
    (cl:cons ':motor1 (motor1 msg))
    (cl:cons ':motor2 (motor2 msg))
))
