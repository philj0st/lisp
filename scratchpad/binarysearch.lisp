(defparameter data '(1 3 6 8 12 23 34 56 78 89 101 212))

(defun take (n lst)
  "Documentation for take."
  (if (= n 0)
    '()
    (cons (car lst)(take (- n 1)(cdr lst)))))

(defun slice (from to lst)
  "Documentation for slice."
  (take to
    (nthcdr from lst)))


(defun element-at (n lst)
  (car (nthcdr n lst)))

(defun midpoint (lst)
  "Documentation for mid."
  (floor (length lst) 2))

(defun mid-element (lst)
  "Documentation for mid-element."
  (element-at(midpoint lst) lst))

(defun endpoint (lst)
  "Documentation for endpoint."
  (1- (length lst)))

(defun bSearch (target lst)
  "Documentation for bSearch."
  (let* ((mid-ele (mid-element lst))
        (start-ind 0)
        (mid-ind (midpoint lst))
        (end-ind (endpoint lst))
        (left-half (slice start-ind mid-ind lst))
        (right-half (slice mid-ind (- (length lst) mid-ind) lst))
        (search-for-target (lambda (s) (bSearch target s))))
    (cond
      ((null lst) NIL)
      ((= target mid-ele) T)
      ((< target mid-ele) (search-for-target left-half))
      ((> target mid-ele) (search-for-target right-half))
      (T NIL))))
