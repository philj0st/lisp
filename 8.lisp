; ; works for '(a b b c c d d e f) but no tripplets
; (defun unique (lst)
;   (when lst
;     (cond
;       ; if the 1st and 2nd list items are the same, append (unique 3rd...) to the 2nd
;       ((eq (car lst) (cadr lst)) (append (list (cadr lst)) (unique (cddr lst)) ))
;       (T (append (list (car lst)) (unique (cdr lst)) ))
;     )
;   )
; )

(defun unique (lst)
  (when lst
    (cond
      ; if the 1st and 2nd list items are the same, skip car and call unique on the rest
      ((eq (car lst) (cadr lst)) (unique (cdr lst)) )
      (T (append (list (car lst)) (unique (cdr lst))) )
    )
  )
)
(print (unique '(a b c c d e e e f g)))
