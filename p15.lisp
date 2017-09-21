;;; Replicate the elements of a list a given number of times.
;;;    Example:
;;;    * (repli '(a b c) 3)
;;;    (A A A B B B C C C)

(defun repli (lst cnt)
  (let ((result))
    (dolist (n lst)
      (dotimes (x cnt)
        (push n result)))
    (reverse result)))
