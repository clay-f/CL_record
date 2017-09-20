
> ref COMMON LISP A Gentle Introduction to Symbolic Computation

## recorsion
### The Three Rules Of Recursion
1. Know when to stop
2. Decide how to take one step
3. Break the journey down into that step plus a smaller journey

#### Advantages of Tail Recursion
> tail-recursive functions do no work after the recursive call; the function returns whatever the recursive call returns
> calls return the same value as the terminal call

####

#### sample

- [recursion templates](https://github.com/clay-f/CL_record/blob/master/recursion-templates.md)
- using help package show recursion info
	> (require "dtrace.generic")