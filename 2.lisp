(defun my-but-last (list)
  (first (rest (reverse list)))
)
(print (my-but-last '(a b c d)))
