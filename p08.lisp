;;; Eliminate consecutive duplicates of list elements.
;;;    If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.
;;;
;;;    Example:
;;;    * (compress '(a a a a b c c a a d e e e e))
;;;    (A B C A D E)

(defun compress (lst)
	(let (	(result '())
		 )
		(dolist (n lst)
			(when (not (eql (car result) n))
				(push n result)
			)
		)
		(reverse result)
	)
)
