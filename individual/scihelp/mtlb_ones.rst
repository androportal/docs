


mtlb_ones
=========

Matlab ones emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `ones` behave differently in some particular cases:


+ With a scalar input: Matlab `ones` returns a n x n matrix while
  Scilab returns a 1.


The function `mtlb_ones(A)` is used by `mfile2sci` to replace
`ones(A)` when it was not possible to know what was the input while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_ones` calls:


+ If `A` is a scalar `mtlb_ones(A)` may be replaced by `ones(A,A)`
+ If `A` is not a scalar `mtlb_ones(A)` may be replaced by `ones(A)`


Caution: `mtlb_ones` has not to be used for hand coded functions.



