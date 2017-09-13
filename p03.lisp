;;; Find the K'th element of a list.
;;;    The first element in the list is number 1.
;;;    Example:
;;;    * (element-at '(a b c d e) 3)
;;;    C

(defun element-at (lst idx)
	(nth (1- idx) lst)
)
