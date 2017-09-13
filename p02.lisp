;;; Find the last but one box of a list.
;;;    Example:
;;;    * (my-but-last '(a b c d))
;;;    (C D)

(defun my-but-last (lst)
	(let ((lstr (reverse lst)))
		(list (car (cdr lstr)) (car lstr))
	)
)


(defun my-but-last2 (lst)
	(loop while (> (length lst) 2)
          do (pop lst)
	)
	lst
)
