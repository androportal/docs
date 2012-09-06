


mtlb_fftshift
=============

Matlab fftshift emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `fftshift` behave differently in some particular
cases:


+ With character string input: due to the fact that character strings
  are not considered in the same way in Matlab and Scilab, results can
  be different for this kind of input.
+ With two inputs: Matlab `fftshift` can work even if `dim` parameter
  is greater than number of dimensions of first input.


The function `mtlb_fftshift(A[,dim])` is used by `mfile2sci` to
replace `fftshift(A[,dim])` when it was not possible to know what were
the inputs while porting Matlab code to Scilab. This function will
determine the correct semantic at run time. If you want to have a more
efficient code it is possible to replace `mtlb_fftshift` calls:


+ If `A` is not a character string matrix, `mtlb_fftshift(A)` may be
  replaced by `fftshift(A)`
+ If `A` is not a character string matrix and `dim` is not greater
  than `size(size(a),"*")`, `mtlb_fftshift(A,dim)` may be replaced by
  `fftshift(A,dim)`


Caution: `mtlb_fftshift` has not to be used for hand coded functions.



