;;; Rotate a list N places to the left.
;;;    Examples:
;;;    * (rotate '(a b c d e f g h) 3)
;;;    (D E F G H A B C)
;;;
;;;    * (rotate '(a b c d e f g h) -2)
;;;    (G H A B C D E F)

(defun rotate (lst n)
  (when (< n 0) (setf n (+ (length lst) n)))
  (let ((a) (b))
    (dolist (itm lst)
      (push itm (if (< n 1) a b))
      (decf n))
    (append (reverse a) (reverse b))))
