;;; Insert an element at a given position into a list.
;;;    Example:
;;;    * (insert-at 'alfa '(a b c d) 2)
;;;    (A ALFA B C D)

(defun insert-at (item list position)
  (append
    (loop for i from 0 to (1- position)
          for element in list
          collect element)
    (list item)
    (loop for i from 0
          for element in list
          when (>= i position) collect element)))
