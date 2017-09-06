;;;
;;;  recursion sample and common template
;;;


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

(defun find-first-oddp (x)
  (cond ((null x) nil)
        ((oddp (first x)) (first x))
        (t (find-first-oddp (rest x)))))

(defun c (n)
  (cond ((equal n 1) t)
        ((evenp n) (c (/ n 2)))
        (t (c (+ (* 3 n ) 1)))))

(defun combine (x y) (+ x y))

(defun fib (n)
  (cond ((equal n 0) 1)
        ((equal n 1) 1)
        (t (combine (fib (- n 1))
                    (fib (- n 2))))))

(defun count-down (n)
  (cond ((zerop n) nil)
        (t (cons n (count-down (- n 1))))))

(defun my-nth (n x)
    (cond ((zerop n) (first x))
          ((null x) nil)
          (t (my-nth (- n 1) (rest x)))))

(defun my-member (e x)
  (cond ((null x) nil)
        ((equal e (first x)) x)
        (t (my-member e (rest x)))))

(defun extract-symbols (x)
  (cond ((null x) nil)
        ((symbolp (first x))
          (cons (first x)
                (extract-symbols (rest x))))
        (t (extract-symbols (rest x)))))
