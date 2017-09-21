;;; Drop every N'th element from a list.
;;;    Example:
;;;    * (drop '(a b c d e f g h i k) 3)
;;;    (A B D E G H K)

(defun drop (lst idx)
  (let ((result) (cnt idx))
    (dolist (n lst)
      (decf cnt)
      (if (> cnt 0)
          (push n result)
          (setf cnt idx)))
    (reverse result)))
