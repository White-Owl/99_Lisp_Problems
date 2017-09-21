;;; Decode a run-length encoded list.
;;;    Given a run-length code list generated as specified in problem P11.
;;; Construct its uncompressed version.

(defun decode (lst)
  (let ( (result) )
    (dolist (item lst)
      (if (atom item)
        (push item result)
        (loop for cnt from 1 to (first item) do (push (second item) result))))
    (reverse result)))
