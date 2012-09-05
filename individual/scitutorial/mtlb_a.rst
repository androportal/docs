


mtlb_a
======

Matlab addition emulation function



Description
~~~~~~~~~~~

Matlab and Scilab addition behave differently in some particular
cases:


+ With character string operands: The `+` operator is used into Scilab
  to catenate character strings, while Matlab realizes the sum of the
  operands ASCII codes.
+ With empty matrix: In Scilab, if one of the operands is an empty
  matrix the result of the addition is the other operand. In Matlab if
  one of the operand is an empty matrix the result of the addition
  should be an error or an empty matrix.


The function `mtlb_a(A,B)` is used by `mfile2sci` to replace `A+B`
when it was not possible to know what were the operands while porting
Matlab code to Scilab. This function will determine the correct
semantic at run time. If you want to have a more efficient code it is
possible to replace `mtlb_a` calls:


+ If `A` and `B` are character strings, `mtlb_a(A,B)` may be replaced
  by `asciimat(A)+asciimat(B)`
+ If both `A` and `B` are not empty matrices `mtlb_a(A,B)` may be
  replaced by `A+B`, else `mtlb_a(A,B)` may be replaced by `[]`.
+ If mtlb_mode==%T, then `mtlb_a(A,B)` may be replaced by `A+B` in any
  case where `A` and `B` are not character string matrices.


Caution: `mtlb_a` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `mtlb_mode`_ switch Matlab like operations


.. _mtlb_mode: mtlb_mode.html


