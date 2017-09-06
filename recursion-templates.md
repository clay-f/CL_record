#### Recursion Templates

##### Double-Test Tail Recursion
```lisp
(DEFUN func (x)
    (COND (end-test-1 end-val-1)
          (end-test-2 end-val-2)
          (T (func reduced-x))))

(defun anyoddp (x)
  (cond ((null x) nil)
        ((oddp (first x)) t)
        (t (anyoddp (rest x)))))
```

##### Single-Test Tail Recursion
```lisp
(DEFUN func (x)
  (COND (end-test end-value)
        (T (func reduced-x))))

(defun find-first-atom (x)
    (cond ((atom x) x)
          (t (find-first-atom (first x)))))
```

##### Single-Test Augmenting Recursion
```lisp
(DEFUN func (x)
  (COND (end-test end-value)
  (T (aug-fun aug-val
                (func reduced-x)))))

(defun count-slices (x)
    (cond ((null x) 0)
          (t (+ 1 (count-slices (rest x))))))
```

##### List-Consing Recursion
```lisp
(DEFUN func (N)
    (COND (end-test NIL)
          (T (CONS new-element
                   (FUNC reduced-n)))))

(defun laugh (n)
  (cond ((zerop n) nil)
        (t (cons 'ha (laugh (- n 1))))))
```

##### Simultaneous Recursion on several Variable (Single-Test Tail)
```lisp
(DEFUN func (N X)
    (COND (end-test end-value)
          (T (func reduced-n reduced-x))))

(defun my-nth (n x)
    (cond ((zerop n) (first x))
          (t (my-nth (- n 1) (rest x)))))
```

#### Conditional Augmentation
```lisp
(DEFUN func (X)
  (COND (end-test end-value)
        (aug-test (aug-fun aug-val
                     (func reduced-x))
        (t (func reduced-x))))

(defun extract-symbols (x)
   (cond ((null x) nil)
         ((symbolp (first x))
          (cons (first x)
                (extract-symbols (rest x))))
         (t (extract-symbols (rest x)))))
```