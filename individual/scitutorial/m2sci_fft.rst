


fft (Matlab function)
=====================

Discrete Fourier transform



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `fft`_(A[,...])



::

    `fft`_(A,-1[,...])




Particular cases
~~~~~~~~~~~~~~~~

:Y = fft(X) If X is a vector then Scilab equivalent for Matlab
  **fft(X)** is **fft(X,-1)**. If **X** is a matrix then Scilab
  equivalent for Matlab **fft(X)** is **fft(X,-1,2,1)**.
: :Y = fft(X,n) / Y = fft(X,n,dim) / Y = fft(X,[],dim) There is no
  Scilab equivalent for all these Matlab uses of **fft**, in these
  cases, use **mtlb_fft** instead.
:



