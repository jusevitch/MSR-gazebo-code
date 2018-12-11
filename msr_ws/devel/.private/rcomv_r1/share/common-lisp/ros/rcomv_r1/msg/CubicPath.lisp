; Auto-generated. Do not edit!


(cl:in-package rcomv_r1-msg)


;//! \htmlinclude CubicPath.msg.html

(cl:defclass <CubicPath> (roslisp-msg-protocol:ros-message)
  ((path_type
    :reader path_type
    :initarg :path_type
    :type cl:string
    :initform "")
   (qi_x
    :reader qi_x
    :initarg :qi_x
    :type cl:float
    :initform 0.0)
   (qi_y
    :reader qi_y
    :initarg :qi_y
    :type cl:float
    :initform 0.0)
   (qi_theta
    :reader qi_theta
    :initarg :qi_theta
    :type cl:float
    :initform 0.0)
   (qf_x
    :reader qf_x
    :initarg :qf_x
    :type cl:float
    :initform 0.0)
   (qf_y
    :reader qf_y
    :initarg :qf_y
    :type cl:float
    :initform 0.0)
   (qf_theta
    :reader qf_theta
    :initarg :qf_theta
    :type cl:float
    :initform 0.0)
   (T
    :reader T
    :initarg :T
    :type cl:float
    :initform 0.0)
   (poly_k
    :reader poly_k
    :initarg :poly_k
    :type cl:float
    :initform 0.0))
)

(cl:defclass CubicPath (<CubicPath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CubicPath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CubicPath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rcomv_r1-msg:<CubicPath> is deprecated: use rcomv_r1-msg:CubicPath instead.")))

(cl:ensure-generic-function 'path_type-val :lambda-list '(m))
(cl:defmethod path_type-val ((m <CubicPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcomv_r1-msg:path_type-val is deprecated.  Use rcomv_r1-msg:path_type instead.")
  (path_type m))

(cl:ensure-generic-function 'qi_x-val :lambda-list '(m))
(cl:defmethod qi_x-val ((m <CubicPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcomv_r1-msg:qi_x-val is deprecated.  Use rcomv_r1-msg:qi_x instead.")
  (qi_x m))

(cl:ensure-generic-function 'qi_y-val :lambda-list '(m))
(cl:defmethod qi_y-val ((m <CubicPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcomv_r1-msg:qi_y-val is deprecated.  Use rcomv_r1-msg:qi_y instead.")
  (qi_y m))

(cl:ensure-generic-function 'qi_theta-val :lambda-list '(m))
(cl:defmethod qi_theta-val ((m <CubicPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcomv_r1-msg:qi_theta-val is deprecated.  Use rcomv_r1-msg:qi_theta instead.")
  (qi_theta m))

(cl:ensure-generic-function 'qf_x-val :lambda-list '(m))
(cl:defmethod qf_x-val ((m <CubicPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcomv_r1-msg:qf_x-val is deprecated.  Use rcomv_r1-msg:qf_x instead.")
  (qf_x m))

(cl:ensure-generic-function 'qf_y-val :lambda-list '(m))
(cl:defmethod qf_y-val ((m <CubicPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcomv_r1-msg:qf_y-val is deprecated.  Use rcomv_r1-msg:qf_y instead.")
  (qf_y m))

(cl:ensure-generic-function 'qf_theta-val :lambda-list '(m))
(cl:defmethod qf_theta-val ((m <CubicPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcomv_r1-msg:qf_theta-val is deprecated.  Use rcomv_r1-msg:qf_theta instead.")
  (qf_theta m))

(cl:ensure-generic-function 'T-val :lambda-list '(m))
(cl:defmethod T-val ((m <CubicPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcomv_r1-msg:T-val is deprecated.  Use rcomv_r1-msg:T instead.")
  (T m))

(cl:ensure-generic-function 'poly_k-val :lambda-list '(m))
(cl:defmethod poly_k-val ((m <CubicPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcomv_r1-msg:poly_k-val is deprecated.  Use rcomv_r1-msg:poly_k instead.")
  (poly_k m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CubicPath>) ostream)
  "Serializes a message object of type '<CubicPath>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path_type))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'qi_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'qi_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'qi_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'qf_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'qf_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'qf_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'T))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'poly_k))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CubicPath>) istream)
  "Deserializes a message object of type '<CubicPath>"
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
    (cl:setf (cl:slot-value msg 'qi_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'qi_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'qi_theta) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'qf_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'qf_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'qf_theta) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'T) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'poly_k) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CubicPath>)))
  "Returns string type for a message object of type '<CubicPath>"
  "rcomv_r1/CubicPath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CubicPath)))
  "Returns string type for a message object of type 'CubicPath"
  "rcomv_r1/CubicPath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CubicPath>)))
  "Returns md5sum for a message object of type '<CubicPath>"
  "fd1af34fecb10a7d71d4740943397d74")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CubicPath)))
  "Returns md5sum for a message object of type 'CubicPath"
  "fd1af34fecb10a7d71d4740943397d74")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CubicPath>)))
  "Returns full string definition for message of type '<CubicPath>"
  (cl:format cl:nil "# The Cubic Polynomials Path/Trajectory Data Type.~%# This is used for defining a trajectory using cubic polynomials equations~%~%# path type~%string path_type~%~%# inital location~%float64 qi_x~%float64 qi_y~%float64 qi_theta~%~%# final location~%float64 qf_x~%float64 qf_y~%float64 qf_theta~%~%# total travel time~%float64 T~%~%# cubic polynomial parameter~%float64 poly_k~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CubicPath)))
  "Returns full string definition for message of type 'CubicPath"
  (cl:format cl:nil "# The Cubic Polynomials Path/Trajectory Data Type.~%# This is used for defining a trajectory using cubic polynomials equations~%~%# path type~%string path_type~%~%# inital location~%float64 qi_x~%float64 qi_y~%float64 qi_theta~%~%# final location~%float64 qf_x~%float64 qf_y~%float64 qf_theta~%~%# total travel time~%float64 T~%~%# cubic polynomial parameter~%float64 poly_k~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CubicPath>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'path_type))
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CubicPath>))
  "Converts a ROS message object to a list"
  (cl:list 'CubicPath
    (cl:cons ':path_type (path_type msg))
    (cl:cons ':qi_x (qi_x msg))
    (cl:cons ':qi_y (qi_y msg))
    (cl:cons ':qi_theta (qi_theta msg))
    (cl:cons ':qf_x (qf_x msg))
    (cl:cons ':qf_y (qf_y msg))
    (cl:cons ':qf_theta (qf_theta msg))
    (cl:cons ':T (T msg))
    (cl:cons ':poly_k (poly_k msg))
))
