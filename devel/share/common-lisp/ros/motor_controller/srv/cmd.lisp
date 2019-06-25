; Auto-generated. Do not edit!


(cl:in-package motor_controller-srv)


;//! \htmlinclude cmd-request.msg.html

(cl:defclass <cmd-request> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass cmd-request (<cmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motor_controller-srv:<cmd-request> is deprecated: use motor_controller-srv:cmd-request instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motor_controller-srv:angle-val is deprecated.  Use motor_controller-srv:angle instead.")
  (angle m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motor_controller-srv:speed-val is deprecated.  Use motor_controller-srv:speed instead.")
  (speed m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motor_controller-srv:distance-val is deprecated.  Use motor_controller-srv:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cmd-request>) ostream)
  "Serializes a message object of type '<cmd-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cmd-request>) istream)
  "Deserializes a message object of type '<cmd-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cmd-request>)))
  "Returns string type for a service object of type '<cmd-request>"
  "motor_controller/cmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cmd-request)))
  "Returns string type for a service object of type 'cmd-request"
  "motor_controller/cmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cmd-request>)))
  "Returns md5sum for a message object of type '<cmd-request>"
  "206e942db74d81f3a5da602b8336b721")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cmd-request)))
  "Returns md5sum for a message object of type 'cmd-request"
  "206e942db74d81f3a5da602b8336b721")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cmd-request>)))
  "Returns full string definition for message of type '<cmd-request>"
  (cl:format cl:nil "float64 angle~%float64 speed~%float64 distance~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cmd-request)))
  "Returns full string definition for message of type 'cmd-request"
  (cl:format cl:nil "float64 angle~%float64 speed~%float64 distance~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cmd-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'cmd-request
    (cl:cons ':angle (angle msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':distance (distance msg))
))
;//! \htmlinclude cmd-response.msg.html

(cl:defclass <cmd-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass cmd-response (<cmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motor_controller-srv:<cmd-response> is deprecated: use motor_controller-srv:cmd-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cmd-response>) ostream)
  "Serializes a message object of type '<cmd-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cmd-response>) istream)
  "Deserializes a message object of type '<cmd-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cmd-response>)))
  "Returns string type for a service object of type '<cmd-response>"
  "motor_controller/cmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cmd-response)))
  "Returns string type for a service object of type 'cmd-response"
  "motor_controller/cmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cmd-response>)))
  "Returns md5sum for a message object of type '<cmd-response>"
  "206e942db74d81f3a5da602b8336b721")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cmd-response)))
  "Returns md5sum for a message object of type 'cmd-response"
  "206e942db74d81f3a5da602b8336b721")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cmd-response>)))
  "Returns full string definition for message of type '<cmd-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cmd-response)))
  "Returns full string definition for message of type 'cmd-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cmd-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'cmd-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'cmd)))
  'cmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'cmd)))
  'cmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cmd)))
  "Returns string type for a service object of type '<cmd>"
  "motor_controller/cmd")