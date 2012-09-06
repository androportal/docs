


mtlb_fliplr
===========

Matlab fliplr emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `fliplr` behave differently in some particular
cases:


+ With character string matrices: due to te fact that Scilab and
  Matlab do not consider character string matrices in the same way,
  result can be different for input of this type.


The function `mtlb_fliplr(A)` is used by `mfile2sci` to replace
`fliplr(A)` when it was not possible to know what were the inputs
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_fliplr` calls:


+ If `A` is not a character string matrix, `mtlb_fliplr(A)` may be
  replaced by `A(:,$:-1:1)`


Caution: `mtlb_fliplr` has not to be used for hand coded functions.



