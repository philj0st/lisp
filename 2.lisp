(defun my-but-last (list)
  (first (rest (reverse list)))
)
(print (my-but-last '(a b c d)))

; improved recursive version
(defun but-last (lst)
  (if (caddr lst)
    (but-last (cdr lst))
    (car lst)
  )
)
(print (but-last '(a b c d e f)))
