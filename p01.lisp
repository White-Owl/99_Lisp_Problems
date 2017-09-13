;;; Find the last box of a list.
;;; Example:
;;;    * (my-last '(a b c d))
;;;    (D)

(defun my-last (lst)
	(list (car (reverse lst)))
)

(defun my-last2 (lst)
	(loop while (> (length lst) 1)
          do (pop lst)
	)
	lst
)
