


ifft (Matlab function)
======================

Inverse discrete Fourier transform



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `ifft`_(A[,...])



::

    `fft`_(A,1[,...])




Particular cases
~~~~~~~~~~~~~~~~

:Y = ifft(X): If X is a vector then Scilab equivalent for Matlab
  **ifft(X)** is **fft(X,1)**. If **X** is a matrix then Scilab
  equivalent for Matlab **ifft(X)** is **fft(X,1,2,1)**.
: :Y = ifft(X,n) / Y = ifft(X,n,dim) / Y = ifft(X,[],dim): There is no
  Scilab equivalent for all these Matlab uses of **ifft**, in these
  cases, use **mtlb_ifft** instead.
:



