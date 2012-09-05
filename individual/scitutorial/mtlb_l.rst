


mtlb_l
======

Matlab left division emulation function



Description
~~~~~~~~~~~

Matlab and Scilab left division behave differently in some particular
cases:


+ With character string operands: The `\` operator can not be used
  into Scilab with character strings, while in Matlab it can. And in
  this case, result is transposed in a very strange way...


The function `mtlb_l(A,B)` is used by `mfile2sci` to replace `A\B`
when it was not possible to know what were the operands while porting
Matlab code to Scilab. This function will determine the correct
semantic at run time. If you want to have a more efficient code it is
possible to replace `mtlb_l` calls:


+ If both `A` and `B` are not character strings `mtlb_l(A,B)` may be
  replaced by `A\B`.


Caution: `mtlb_l` has not to be used for hand coded functions.



