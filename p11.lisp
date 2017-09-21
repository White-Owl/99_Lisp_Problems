;;; Modified run-length encoding.
;;;    Modify the result of problem P10 in such a way that if an element has
;;;  no duplicates it is simply copied into the result list. Only elements 
;;;  with duplicates are transferred as (N E) lists.
;;;
;;;    Example:
;;;    * (encode-modified '(a a a a b c c a a d e e e e))
;;;    ((4 A) B (2 C) (2 A) D (4 E))

(defun encode-modified (lst) 
  (let ( (sublist (list (car lst)))
         (result '())
         (add-to (lambda (result cnt p) 
                         (if (= cnt 1)
                             (append result (list p))
                             (append result (list (list cnt p)))))))

    (dolist (n (cdr lst))
      (if (eql (car sublist) n)
          (setf sublist (append sublist (list n)))
          (progn
            (setf result (funcall add-to result (length sublist) (car sublist)))
            (setf sublist (list n)))))
    (funcall add-to result (length sublist) (car sublist))))
