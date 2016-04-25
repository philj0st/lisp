(defun my-reverse (list)
  (if list
    (append (my-reverse (rest list)) (list (first list))))
)
