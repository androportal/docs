


dft
===

discrete Fourier transform



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [xf]=dft(x,flag);




Arguments
~~~~~~~~~

:x input vector
: :flag indicates dft (flag=-1) or idft (flag=1)
: :xf output vector
:



Description
~~~~~~~~~~~

Function which computes dft of vector `x`.



Examples
~~~~~~~~


::

    n=8;omega = `exp`_(-2*%pi*%i/n);
    j=0:n-1;F=omega.^(j'*j);  //Fourier matrix
    x=1:8;x=x(:);
    F*x
    `fft`_(x,-1)
    dft(x,-1)
    `inv`_(F)*x
    `fft`_(x,1)
    dft(x,1)




See Also
~~~~~~~~


+ `fft`_ fast Fourier transform.


.. _fft: fft.html


