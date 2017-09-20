;;;
;;;  recursion sample and common template
;;;

;;; tail-recursion
(defun anyoddp (x)
  (cond ((null x) nil)
        ((oddp (first x)) t)
         (t (anyoddp (rest x)))))

(defun fact (n)
  (cond ((zerop n) 1)
        (t (* n (fact (- n 1))))))


;;; non tail-recursion
(defun count-slices (loaf)
  (cond ((null loaf) 0)
        (t (+ 1 (count-slices (rest loaf))))))

;;; it is better to write recursive functions in tail-recursive form whenever possible
;;; A common technique for producing a tail-recursive version of an ordinary recursive
;;;   function is to introduce an extra variable for accumulating augmentation values.
(defun tr-count-slices (loaf)
  (tr-cs1 loaf 0))

(defun tr-cs1 (loaf n)
  (cond ((null loaf) n)
      (t (tr-cs1 (rest loaf) (+ n 1)))))

;;; non tail-recursion
;;; After the recursive call returns, the result is augmented by APPEND
(defun my-reverse (x)
  (cond ((null x) nil)
      (t (append (reverse (rest x))
         (list (first x)))))) ; (my-reverse '(a b c)) => (c b a)

;;; Here is a two-part, tail-recursive definition of REVERSE that uses an extra
;;;   variable to build up the result with (rather than after) each recursive call.
(defun tr-reverse (x)
  (tr-revl x nil))

(defun tr-revl (x result)
  (cond ((null x) result)
        (t (tr-revl
              (rest x)
              (cons (first x) result)))))

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

(defun atoms-to-q (x)
  (cond ((null x) nil)
        ((atom x) 'q)
        (t (cons (atoms-to-q (car x))
                 (atoms-to-q (cdr x))))))

(defun count-atoms (x)
  (cond ((null x) 0)
        ((atom x) 1)
        (t (+ (count-atoms (car x))
              (count-atoms (cdr x))))))


;;; For some problems it is useful to structure the solution as a helping function plus a recursive function
;;; The recursive function does most of the work
;;; The helping function is the one that you call from top level
;;; it performs some special service either at the beginning or the end of the recursion

(defun count-up-recursively (cnt n)
  (cond ((> cnt n) nil)
        (t (cons cnt
                  (count-up-recursively
                     (+ cnt 1)
                     n)))))
(defun count-up (n)
  (count-up-recursively 1 n)) ; (count-up 5) => (1 2 3 4 5)