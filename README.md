### The Three Rules Of Recursion
1. Know when to stop
2. Decide how to take one step
3. Break the journey down into that step plus a smaller journey

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
