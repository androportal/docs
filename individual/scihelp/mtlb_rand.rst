


mtlb_rand
=========

Matlab rand emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `rand` behave differently in some particular cases:


+ With a scalar input: Matlab `rand` returns a n x n matrix while
  Scilab returns a scalar.


The function `mtlb_rand(A)` is used by `mfile2sci` to replace
`rand(A)` when it was not possible to know what was the input while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_rand` calls:


+ If `A` is a scalar `mtlb_rand(A)` may be replaced by `rand(A,A)`
+ If `A` is not a scalar `mtlb_rand(A)` may be replaced by `rand(A)`


Caution: `mtlb_rand` has not to be used for hand coded functions.



