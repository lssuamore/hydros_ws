; Auto-generated. Do not edit!


(cl:in-package hydros-msg)


;//! \htmlinclude sensor.msg.html

(cl:defclass <sensor> (roslisp-msg-protocol:ros-message)
  ((conductivity
    :reader conductivity
    :initarg :conductivity
    :type cl:float
    :initform 0.0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0)
   (depth
    :reader depth
    :initarg :depth
    :type cl:float
    :initform 0.0))
)

(cl:defclass sensor (<sensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hydros-msg:<sensor> is deprecated: use hydros-msg:sensor instead.")))

(cl:ensure-generic-function 'conductivity-val :lambda-list '(m))
(cl:defmethod conductivity-val ((m <sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hydros-msg:conductivity-val is deprecated.  Use hydros-msg:conductivity instead.")
  (conductivity m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hydros-msg:temperature-val is deprecated.  Use hydros-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hydros-msg:depth-val is deprecated.  Use hydros-msg:depth instead.")
  (depth m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sensor>) ostream)
  "Serializes a message object of type '<sensor>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'conductivity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sensor>) istream)
  "Deserializes a message object of type '<sensor>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'conductivity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'depth) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sensor>)))
  "Returns string type for a message object of type '<sensor>"
  "hydros/sensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sensor)))
  "Returns string type for a message object of type 'sensor"
  "hydros/sensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sensor>)))
  "Returns md5sum for a message object of type '<sensor>"
  "f653f05c2a687f77b0e5d31ef180fc88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sensor)))
  "Returns md5sum for a message object of type 'sensor"
  "f653f05c2a687f77b0e5d31ef180fc88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sensor>)))
  "Returns full string definition for message of type '<sensor>"
  (cl:format cl:nil "float32 conductivity~%float32 temperature~%float32 depth~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sensor)))
  "Returns full string definition for message of type 'sensor"
  (cl:format cl:nil "float32 conductivity~%float32 temperature~%float32 depth~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sensor>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sensor>))
  "Converts a ROS message object to a list"
  (cl:list 'sensor
    (cl:cons ':conductivity (conductivity msg))
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':depth (depth msg))
))
