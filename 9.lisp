(defun similar-int (lst)
  
)
(defun pack (lst)
  (labels (
    (similar (lst)
      (let count 0)
      (loop while (eq (car lst) (cadr lst)) do
        (1+ count)
      )
      (car (nthcdr count lst))
    )
    (pck (lst res)
      (when lst
        (pck (nthcdr (similar lst) lst) (append res (list(subseq lst 0 (similar lst)))))
        res
      )
  )(pck lst '()))
)


; (defun pack (lst)
;   (let (result tmp)
;     (dolist (elem lst (reverse (push tmp result)))
;       (if (or (null tmp) (equal elem (first tmp))) (push elem tmp)
;           (progn
;             (push tmp result)
;             (setf tmp nil)
;             (push elem tmp))))))
