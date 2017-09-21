;;; Modified run-length encoding.
;;;    Modify the result of problem P10 in such a way that if an element has
;;;  no duplicates it is simply copied into the result list. Only elements 
;;;  with duplicates are transferred as (N E) lists.
;;;
;;;    Example:
;;;    * (encode-modified '(a a a a b c c a a d e e e e))
;;;    ((4 A) B (2 C) (2 A) D (4 E))

(defun encode-modified (lst) 
	(let (	(cnt 0)
			(p (car lst))
			(result '())
			(add-to
				(lambda (result cnt p) 
					(if (= cnt 1)
						(append result (list p))
						(append result (list (list cnt p)))
					)
				)
			) ; add-to
		 ) ; let

		(dolist (n lst)
			(if (eql p n)
				(incf cnt)
				(progn
					(setf result (funcall add-to result cnt p))
					(setf p n)
					(setf cnt 1)
				)
			)
		)
		(funcall add-to result cnt p)
	)
)
