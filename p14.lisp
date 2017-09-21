;;; Duplicate the elements of a list.
;;;    Example:
;;;    * (dupli '(a b c c d))
;;;    (A A B B C C C C D D)

(defun dupli (lst)
  (loop for n in lst collect n collect n))
