;;; Run-length encoding of a list.
;;;    Use the result of problem P09 to implement the so-called run-length
;;; encoding data compression method. Consecutive duplicates of elements
;;; are encoded as lists (N E) where N is the number of duplicates of the
;;; element E.
;;;
;;;    Example:
;;;    * (encode '(a a a a b c c a a d e e e e))
;;;    ((4 A) (1 B) (2 C) (2 A) (1 D) (4 E))

(defun encode (lst) 
	(let (	(cnt 0)
			(p (car lst))
			(result '())
		 ) ; let

		(dolist (n lst)
			(if (eql p n)
				(incf cnt)
				(progn
					(setf result (append result (list (list cnt p))))
					(setf p n)
					(setf cnt 1)
				)
			)
		)
		(append result (list (list cnt p)))
	)
)
