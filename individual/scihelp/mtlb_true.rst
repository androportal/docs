


mtlb_true
=========

Matlab true emulation function



Description
~~~~~~~~~~~

There is no Scilab equivalent for Matlab `true`. However, Scilab
`ones` returns a result interpreted in an equivalent way for Scilab.

Matlab `true` and Scilab `ones` behave differently in some particular
cases:


+ With a scalar input: Matlab `true` returns a n x n matrix of ones
  while Scilab `ones` returns a 1.


The function `mtlb_true(A)` is used by `mfile2sci` to replace
`true(A)` when it was not possible to know what was the input while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_true` calls:


+ If `A` is a scalar `mtlb_true(A)` may be replaced by `ones(A,A)`
+ If `A` is not a scalar `mtlb_true(A)` may be replaced by `ones(A)`


Caution: `mtlb_true` has not to be used for hand coded functions.



