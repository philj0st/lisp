; (defun nand (a b)
;   (if ((progn
;     (if (a)
;       (b)
;       (a))))
;     (NIL)
;     (T)))

; (defun nand (a b)
;   (if (lambda (a b)
;     ((if (a)
;       (b)
;       (a)))a b)
;     (NIL)
;     (T)))
;
; ((lambda (a b) ((if (a)
;   (b)
;   (a))))t t)

(defun nand (a b)
  (if (if a b a)
    NIL
    T))

(defun my-and (a b)
  (if (if (if a b a)
      NIL
      T)
    NIL
    T))
