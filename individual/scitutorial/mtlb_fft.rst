


mtlb_fft
========

Matlab fft emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `fft` behave differently in some particular cases:


+ With one input parameter: If input is a scalar or vector Scilab
  equivalent for Matlab `fft` is `fft(...,-1)` else if input is a matrix
  Scilab equivalent for Matlab `fft` is `fft(...,-1,2,1)`


The function `mtlb_fft(X[,n,[job]])` is used by `mfile2sci` to replace
`fft(X[,n,[job]])` when it was not possible to know what were the
inputs while porting Matlab code to Scilab. This function will
determine the correct semantic at run time. If you want to have a more
efficient code it is possible to replace `mtlb_fft` calls:


+ If `X` is a scalar or a vector `mtlb_fft(X,-1)` may be replaced by
  `fft(X,-1)`
+ If `X` is a matrix `mtlb_fft(X,-1)` may be replaced by
  `fft(X,-1,2,1)`


Caution: `mtlb_fft` has not to be used for hand coded functions.



