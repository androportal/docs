


mtlb_eye
========

Matlab eye emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `eye` behave differently in some particular cases:


+ With a scalar input: Matlab `eye` returns a n x n matrix while
  Scilab returns a 1.


The function `mtlb_eye(A)` is used by `mfile2sci` to replace `eye(A)`
when it was not possible to know what was the input while porting
Matlab code to Scilab. This function will determine the correct
semantic at run time. If you want to have a more efficient code it is
possible to replace `mtlb_eye` calls:


+ If `A` is a scalar `mtlb_eye(A)` may be replaced by `eye(A,A)`
+ If `A` is not a scalar `mtlb_eye(A)` may be replaced by `eye(A)`


Caution: `mtlb_eye` has not to be used for hand coded functions.



