;;; Split a list into two parts; the length of the first part is given.
;;;    Do not use any predefined predicates.
;;;
;;;    Example:
;;;    * (split '(a b c d e f g h i k) 3)
;;;    ( (A B C) (D E F G H I K))

(defun split (lst pos)
  (let ((a) (b))
    (dolist (n lst)
      (if (> pos 0) 
          (progn (push n a) (decf pos) )
          (push n b)))
    (list (reverse a) (reverse b))))

