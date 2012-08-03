====
"dft"
====

Scilab Function Last update : April 1993
**dft** - discrete Fourier transform



Calling Sequence
~~~~~~~~~~~~~~~~

[xf]=dft(x,flag);




Parameters
~~~~~~~~~~


+ **x** : input vector
+ **flag** : indicates dft (flag=-1) or idft (flag=1)
+ **xf** : output vector




Description
~~~~~~~~~~~

Function which computes dft of vector **x** .



Examples
~~~~~~~~


::

    
    
    n=8;omega = exp(-2*%pi*%i/n);
    j=0:n-1;F=omega.^(j'*j);  //Fourier matrix
    x=1:8;x=x(:);
    F*x
    fft(x,-1)
    dft(x,-1)
    inv(F)*x
    fft(x,1)
    dft(x,1)
     
      




See Also
~~~~~~~~

` **fft** `_,



Author
~~~~~~

C. B.

.. _
      : ://./signal/fft.htm


