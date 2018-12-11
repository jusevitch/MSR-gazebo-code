; Auto-generated. Do not edit!


(cl:in-package rcomv_r1-msg)


;//! \htmlinclude ParametricPath.msg.html

(cl:defclass <ParametricPath> (roslisp-msg-protocol:ros-message)
  ((path_type
    :reader path_type
    :initarg :path_type
    :type cl:string
    :initform "")
   (xc
    :reader xc
    :initarg :xc
    :type cl:float
    :initform 0.0)
   (yc
    :reader yc
    :initarg :yc
    :type cl:float
    :initform 0.0)
   (wd
    :reader wd
    :initarg :wd
    :type cl:float
    :initform 0.0)
   (R
    :reader R
    :initarg :R
    :type cl:float
    :initform 0.0)
   (R1
    :reader R1
    :initarg :R1
    :type cl:float
    :initform 0.0)
   (R2
    :reader R2
    :initarg :R2
    :type cl:float
    :initform 0.0))
)

(cl:defclass ParametricPath (<ParametricPath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParametricPath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParametricPath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rcomv_r1-msg:<ParametricPath> is deprecated: use rcomv_r1-msg:ParametricPath instead.")))

(cl:ensure-generic-function 'path_type-val :lambda-list '(m))
(cl:defmethod path_type-val ((m <ParametricPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcomv_r1-msg:path_type-val is deprecated.  Use rcomv_r1-msg:path_type instead.")
  (path_type m))

(cl:ensure-generic-function 'xc-val :lambda-list '(m))
(cl:defmethod xc-val ((m <ParametricPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcomv_r1-msg:xc-val is deprecated.  Use rcomv_r1-msg:xc instead.")
  (xc m))

(cl:ensure-generic-function 'yc-val :lambda-list '(m))
(cl:defmethod yc-val ((m <ParametricPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcomv_r1-msg:yc-val is deprecated.  Use rcomv_r1-msg:yc instead.")
  (yc m))

(cl:ensure-generic-function 'wd-val :lambda-list '(m))
(cl:defmethod wd-val ((m <ParametricPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcomv_r1-msg:wd-val is deprecated.  Use rcomv_r1-msg:wd instead.")
  (wd m))

(cl:ensure-generic-function 'R-val :lambda-list '(m))
(cl:defmethod R-val ((m <ParametricPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcomv_r1-msg:R-val is deprecated.  Use rcomv_r1-msg:R instead.")
  (R m))

(cl:ensure-generic-function 'R1-val :lambda-list '(m))
(cl:defmethod R1-val ((m <ParametricPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcomv_r1-msg:R1-val is deprecated.  Use rcomv_r1-msg:R1 instead.")
  (R1 m))

(cl:ensure-generic-function 'R2-val :lambda-list '(m))
(cl:defmethod R2-val ((m <ParametricPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcomv_r1-msg:R2-val is deprecated.  Use rcomv_r1-msg:R2 instead.")
  (R2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParametricPath>) ostream)
  "Serializes a message object of type '<ParametricPath>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path_type))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'xc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'R))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'R1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'R2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParametricPath>) istream)
  "Deserializes a message object of type '<ParametricPath>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R2) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParametricPath>)))
  "Returns string type for a message object of type '<ParametricPath>"
  "rcomv_r1/ParametricPath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParametricPath)))
  "Returns string type for a message object of type 'ParametricPath"
  "rcomv_r1/ParametricPath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParametricPath>)))
  "Returns md5sum for a message object of type '<ParametricPath>"
  "c6ff66e71430612759900cc362de36d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParametricPath)))
  "Returns md5sum for a message object of type 'ParametricPath"
  "c6ff66e71430612759900cc362de36d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParametricPath>)))
  "Returns full string definition for message of type '<ParametricPath>"
  (cl:format cl:nil "# The Parametric Path/Trajectory Data Type.~%# This is used for defining a trajectory using parametric equations~%~%# path type~%string path_type~%~%# center location~%float64 xc~%float64 yc~%~%# angular frequency~%float64 wd~%~%# Radius for the circular path~%float64 R~%~%# Radius for the eight-shaped path~%float64 R1~%float64 R2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParametricPath)))
  "Returns full string definition for message of type 'ParametricPath"
  (cl:format cl:nil "# The Parametric Path/Trajectory Data Type.~%# This is used for defining a trajectory using parametric equations~%~%# path type~%string path_type~%~%# center location~%float64 xc~%float64 yc~%~%# angular frequency~%float64 wd~%~%# Radius for the circular path~%float64 R~%~%# Radius for the eight-shaped path~%float64 R1~%float64 R2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParametricPath>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'path_type))
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParametricPath>))
  "Converts a ROS message object to a list"
  (cl:list 'ParametricPath
    (cl:cons ':path_type (path_type msg))
    (cl:cons ':xc (xc msg))
    (cl:cons ':yc (yc msg))
    (cl:cons ':wd (wd msg))
    (cl:cons ':R (R msg))
    (cl:cons ':R1 (R1 msg))
    (cl:cons ':R2 (R2 msg))
))
