(defun unique (lst)
  (when lst
    (cond
      ; if the 1st and 2nd list items are the same, skip car and call unique on the cdr
      ((equal (car lst) (cadr lst)) (unique (cdr lst)) )
      ; else, just append the car to the rest of the unique list
      (T (append (list (car lst)) (unique (cdr lst))) )
    )
  )
)
; *args* it's been given from the commandline
(print (unique *args*))
