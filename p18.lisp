;;; Extract a slice from a list.
;;;    Given two indices, I and K, the slice is the list containing the
;;; elements between the I'th and K'th element of the original list (both
;;; limits included). Start counting the elements with 1.
;;;
;;;    Example:
;;;    * (slice '(a b c d e f g h i k) 3 7)
;;;    (C D E F G)

(defun slice (lst i k)
  (decf i)
  (decf k)
  (loop for n from i to k collect (nth n lst)))
