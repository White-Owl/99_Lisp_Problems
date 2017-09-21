;;; Remove the K'th element from a list.
;;;    Example:
;;;    * (remove-at '(a b c d) 2)
;;;    (A C D)

(defun remove-at (lst k)
  (remove-if (constantly t) lst :start (1- k) :count 1))

(defun remove-at (lst k)
  (loop for elm in lst
        for i from 1
        unless (= i k) collect elm))
