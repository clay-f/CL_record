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


(defun laugh (n)
  (cond ((zerop n) nil)
        (t (cons 'ha (laugh (- n 1))))))


(defun add-up (x)
  (cond ((null x) 0)
        (t (+ (first x) (add-up (rest x))))))

(defun all-oddp (x)
  (cond ((null x) t)
        (t (all-oddp (rest x)))))
