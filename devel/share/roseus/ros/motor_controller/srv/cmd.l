;; Auto-generated. Do not edit!


(when (boundp 'motor_controller::cmd)
  (if (not (find-package "MOTOR_CONTROLLER"))
    (make-package "MOTOR_CONTROLLER"))
  (shadow 'cmd (find-package "MOTOR_CONTROLLER")))
(unless (find-package "MOTOR_CONTROLLER::CMD")
  (make-package "MOTOR_CONTROLLER::CMD"))
(unless (find-package "MOTOR_CONTROLLER::CMDREQUEST")
  (make-package "MOTOR_CONTROLLER::CMDREQUEST"))
(unless (find-package "MOTOR_CONTROLLER::CMDRESPONSE")
  (make-package "MOTOR_CONTROLLER::CMDRESPONSE"))

(in-package "ROS")





(defclass motor_controller::cmdRequest
  :super ros::object
  :slots (_angle _speed _distance ))

(defmethod motor_controller::cmdRequest
  (:init
   (&key
    ((:angle __angle) 0.0)
    ((:speed __speed) 0.0)
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _angle (float __angle))
   (setq _speed (float __speed))
   (setq _distance (float __distance))
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; float64 _angle
    8
    ;; float64 _speed
    8
    ;; float64 _distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass motor_controller::cmdResponse
  :super ros::object
  :slots ())

(defmethod motor_controller::cmdResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass motor_controller::cmd
  :super ros::object
  :slots ())

(setf (get motor_controller::cmd :md5sum-) "206e942db74d81f3a5da602b8336b721")
(setf (get motor_controller::cmd :datatype-) "motor_controller/cmd")
(setf (get motor_controller::cmd :request) motor_controller::cmdRequest)
(setf (get motor_controller::cmd :response) motor_controller::cmdResponse)

(defmethod motor_controller::cmdRequest
  (:response () (instance motor_controller::cmdResponse :init)))

(setf (get motor_controller::cmdRequest :md5sum-) "206e942db74d81f3a5da602b8336b721")
(setf (get motor_controller::cmdRequest :datatype-) "motor_controller/cmdRequest")
(setf (get motor_controller::cmdRequest :definition-)
      "float64 angle
float64 speed
float64 distance



---
")

(setf (get motor_controller::cmdResponse :md5sum-) "206e942db74d81f3a5da602b8336b721")
(setf (get motor_controller::cmdResponse :datatype-) "motor_controller/cmdResponse")
(setf (get motor_controller::cmdResponse :definition-)
      "float64 angle
float64 speed
float64 distance



---
")



(provide :motor_controller/cmd "206e942db74d81f3a5da602b8336b721")


