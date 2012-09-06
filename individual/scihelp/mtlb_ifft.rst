


mtlb_ifft
=========

Matlab ifft emulation function



Description
~~~~~~~~~~~

Matlab `ifft` and Scilab `fft` behave differently in some particular
cases:


+ With one input parameter: If input is a scalar or vector Scilab
  equivalent for Matlab `ifft(A)` is `fft(A,1)` else if input is a
  matrix Scilab equivalent for Matlab `fft` is `fft(A,1,2,1)`


The function `mtlb_ifft(X[,n,[job]])` is used by `mfile2sci` to
replace `ifft(X[,n,[job]])` when it was not possible to know what were
the inputs while porting Matlab code to Scilab. This function will
determine the correct semantic at run time. If you want to have a more
efficient code it is possible to replace `mtlb_ifft` calls:


+ If `X` is a scalar or a vector `mtlb_ifft(X,1)` may be replaced by
  `fft(X,1)`
+ If `X` is a matrix `mtlb_ifft(X,1)` may be replaced by
  `fft(X,1,2,1)`


Caution: `mtlb_ifft` has not to be used for hand coded functions.



