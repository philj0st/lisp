; flatten nested list structure
(defun flatten (list)
; as long as the list is not empty
  (if list
    ; check if the first item is an atom
    ((if (atom (car list))
    ; append to output
      (flatten cdr list)
      (flatten car list))))
)
