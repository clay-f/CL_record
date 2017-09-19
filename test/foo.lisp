;;; practice

(defun help-count-up (val x)
	(cond ((< val x) nil)
		(t (cons val
			(help-count-up (- val 1) x)))))

(defun count-up (n)
	(help-count-up n 1)) ; (count-up 5) => (5 4 3 2 1)

(defun make-loaf (n)
	(if (zerop n) nil
		(cons 'x (make-loaf (- n 1))) ; (make-loaf 5) => (x x x x x)


;;; This solution uses single-test augmenting recursion, with no augmentation value. 
;;; The augmentation function is LIST.
(defun bury (x n)
	(cond ((zerop n) x)
		  (t (list (bury x (- n 1)))))) ; (bury 'x 5) => (((((x)))))

(defun pairings (x y)
	(cond ((null x) nil)
		(t (cons (list (first x) (first y))
				 (pairings (cdr x) (cdr y)))))) ; (pairings '(a b c) '(1 2 3)) => ((A 1) (B 2) (C 3))

(defun sublists (x)
	(cond ((null x) nil)
		(t (cons x (sublists (rest x))))))