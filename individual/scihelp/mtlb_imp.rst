


mtlb_imp
========

Matlab colon emulation function



Description
~~~~~~~~~~~

Matlab and Scilab colon behave differently in some particular cases:


+ With empty matrices: The `:` operator must be used with scalars in
  Scilab and gives an error message when used with empty matrices while
  Matlab returns [] in these cases.


The function `mtlb_imp(A,B[,C])` is used by `mfile2sci` to replace
`A:B[:C]` when it was not possible to know what were the operands
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_imp` calls:


+ If `A`, `B` and `C` are not empty matrices `mtlb_imp(A,B[,C])` may
  be replaced by `A:B[:C]`


Caution: `mtlb_imp` has not to be used for hand coded functions.



