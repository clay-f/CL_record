(defun anyoddp (x)
  (cond ((null x) nil)
        ((oddp (first x)) t)
         (t (anyoddp (rest x)))))


(defun fact (n)
  (cond ((zerop n) 1)
        (t (* n (fact (- n 1))))))


(defun count-slices (loaf)
  (cond ((null loaf) 0)
        (t (+ 1 (count-slices (rest loaf))))))
