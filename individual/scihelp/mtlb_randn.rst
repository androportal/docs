


mtlb_randn
==========

Matlab randn emulation function



Description
~~~~~~~~~~~

Matlab `rand` and Scilab `rand(...,"normal")` behave differently in
some particular cases:


+ With a scalar input: Matlab `randn` returns a n x n matrix while
  Scilab `rand(...,"normal")` returns a scalar.


The function `mtlb_randn(A)` is used by `mfile2sci` to replace
`randn(A)` when it was not possible to know what was the input while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_randn` calls:


+ If `A` is a scalar `mtlb_randn(A)` may be replaced by
  `rand(A,A,"normal")`
+ If `A` is not a scalar `mtlb_randn(A)` may be replaced by
  `rand(A,"normal")`


Caution: `mtlb_randn` has not to be used for hand coded functions.



