


mtlb_logic
==========

Matlab logical operators emulation function



Description
~~~~~~~~~~~

Matlab and Scilab logical operator behave differently in some
particular cases:


+ With complex operands: The `<`, `<=`, `>` and `>=` operators can not
  be used into Scilab with complex operands, while in Matlab they can.
  And in this case, only real part of complex operands is compared.
+ With empty matrices: If both operands of `<`, `<=`, `>` and `>=`
  operators are empty matrices, Scilab returns an error message, while
  Matlab returns an empty matrix. For operators `==` and `~=`, if at
  least one operand is an empty matrix, Matlab returns [] while Scilab
  returns a boolean value %T or %F.


The function `mtlb_logic(A,symbol,B)` (with "symbol" a character
string containing the operator symbol) is used by `mfile2sci` to
replace `A symbol B` when it was not possible to know what were the
operands while porting Matlab code to Scilab. This function will
determine the correct semantic at run time. If you want to have a more
efficient code it is possible to replace `mtlb_logic` calls:


+ If both `A` and `B` are not complex values nor empty matrices
  `mtlb_logic(A,symbol,B)` may be replaced by `A symbol B`.


Caution: `mtlb_logic` has not to be used for hand coded functions.



