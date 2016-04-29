
(defun flatten (lst)
  (cond
    ((null lst) nil)
    ((atom (car lst)) (append (list (car lst)) (flatten (cdr lst))))
    (t (append (flatten (car lst))(flatten (cdr lst))))
    )
)

(defun condtest (lst)
  (cond
    ((null lst) nil)
    ((atom (car lst)) (print "got n atom"))
    (t (print "everything else"))
    )
)
