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
  (let ( (sublist (list (car lst)))
         (result '()))
    (dolist (n (cdr lst))
      (if (eql (car sublist) n)
          (setf sublist (append sublist (list n)))
          (progn
            (setf result (append result (list (list (length sublist) (car sublist)))))
            (setf sublist (list n)))))
    (append result (list (list (length sublist) (car sublist))))))
