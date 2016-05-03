(defun element-at (list n)
  (if (> n 1)
    (element-at (cdr list) (- n 1))
    (car list))
  )

(defun element-at2 (lst n)
  (car (nthcdr n lst))
)
