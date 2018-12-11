; Auto-generated. Do not edit!


(cl:in-package roboclaw_node-msg)


;//! \htmlinclude Wheels_speeds.msg.html

(cl:defclass <Wheels_speeds> (roslisp-msg-protocol:ros-message)
  ((wheel1
    :reader wheel1
    :initarg :wheel1
    :type cl:float
    :initform 0.0)
   (wheel2
    :reader wheel2
    :initarg :wheel2
    :type cl:float
    :initform 0.0))
)

(cl:defclass Wheels_speeds (<Wheels_speeds>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wheels_speeds>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wheels_speeds)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboclaw_node-msg:<Wheels_speeds> is deprecated: use roboclaw_node-msg:Wheels_speeds instead.")))

(cl:ensure-generic-function 'wheel1-val :lambda-list '(m))
(cl:defmethod wheel1-val ((m <Wheels_speeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboclaw_node-msg:wheel1-val is deprecated.  Use roboclaw_node-msg:wheel1 instead.")
  (wheel1 m))

(cl:ensure-generic-function 'wheel2-val :lambda-list '(m))
(cl:defmethod wheel2-val ((m <Wheels_speeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboclaw_node-msg:wheel2-val is deprecated.  Use roboclaw_node-msg:wheel2 instead.")
  (wheel2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wheels_speeds>) ostream)
  "Serializes a message object of type '<Wheels_speeds>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wheels_speeds>) istream)
  "Deserializes a message object of type '<Wheels_speeds>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel2) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wheels_speeds>)))
  "Returns string type for a message object of type '<Wheels_speeds>"
  "roboclaw_node/Wheels_speeds")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wheels_speeds)))
  "Returns string type for a message object of type 'Wheels_speeds"
  "roboclaw_node/Wheels_speeds")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wheels_speeds>)))
  "Returns md5sum for a message object of type '<Wheels_speeds>"
  "2108b8f789e1bd68070c8a00d7676194")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wheels_speeds)))
  "Returns md5sum for a message object of type 'Wheels_speeds"
  "2108b8f789e1bd68070c8a00d7676194")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wheels_speeds>)))
  "Returns full string definition for message of type '<Wheels_speeds>"
  (cl:format cl:nil "float32 wheel1~%float32 wheel2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wheels_speeds)))
  "Returns full string definition for message of type 'Wheels_speeds"
  (cl:format cl:nil "float32 wheel1~%float32 wheel2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wheels_speeds>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wheels_speeds>))
  "Converts a ROS message object to a list"
  (cl:list 'Wheels_speeds
    (cl:cons ':wheel1 (wheel1 msg))
    (cl:cons ':wheel2 (wheel2 msg))
))
