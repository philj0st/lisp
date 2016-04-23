(defparameter *big* 100)
(defparameter *small* 1)

(defun guess ()
  (ash (+ *small* *big*) -1))

(defun smaller()
  (setf *big* (1- (guess)))
  (guess))
(defun bigger()
  (setf *small* (1+ (guess)))
  (guess))

(defun again()
  (defparameter *big* 100)
  (defparameter *small* 1)
  (guess))
