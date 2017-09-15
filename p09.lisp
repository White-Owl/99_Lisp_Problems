;;; Pack consecutive duplicates of list elements into sublists.
;;;    If a list contains repeated elements they should be placed in separate sublists.
;;;
;;;    Example:
;;;    * (pack '(a a a a b c c a a d e e e e))
;;;    ((A A A A) (B) (C C) (A A) (D) (E E E E))

(defun pack (lst) 
	(let (	(subresult (list (car lst)))
			(result '())
		 )
		(dolist (n lst)
			(if (eql (car subresult) n)
				(setf subresult (append subresult (list n)))
				(progn
					(setf result (append result (list subresult)))
					(setf subresult (list n))
				)
			)
		)
		(append result (list subresult))
	)
)
