;;; Find out whether a list is a palindrome.
;;;    A palindrome can be read forward or backward; e.g. (x a m a x).

(defun is-palindrome (lst)
	(equal lst (reverse lst))
)

;; 'traditional' version
(defun is-palindrome2 (lst)
	(let ( (l 0)
	       (r (1- (length lst)))
         )
		(loop while (and (< l r)
                         (equal (nth l lst) (nth r lst))
                    )
		      do (progn (setq l (1+ l))
                        (setq r (1- r))
                 )
		)
		(>= l r)
	)
)
