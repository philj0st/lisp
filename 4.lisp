; count items of a list
(defun getLength (list)
  (if list
    (1+ (getLength (cdr list)))
    0))

(print (getLength '(a b c d e f)))
