;;; Eliminate consecutive duplicates of list elements.
;;;    If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.
;;;
;;;    Example:
;;;    * (compress '(a a a a b c c a a d e e e e))
;;;    (A B C A D E)

(defun compress (lst)
	(let (	(idx 0)
			(result '())
		 )
		(loop while (< idx (length lst))
			do (progn
				(when (not (eql (car result) (nth idx lst)))
					(push (nth idx lst) result)
				)
				(incf idx)
			)
		)
		(reverse result)
	)
)
