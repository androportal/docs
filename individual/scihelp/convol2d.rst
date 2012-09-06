


convol2d
========

discrete 2-D convolution, using fft.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    C = convol2d(A,B)




Parameters
~~~~~~~~~~

:A a real or complex 2-D array.
: :B a real or complex 2-D array.
: :C a real or complex 2-D array.
:



Description
~~~~~~~~~~~

`convol2d` uses fft to compute the full two-dimensional discrete
convolution. The dimensions of the result `C` are given by
`size(A)+size(B)+1`. The indices of the center element of `B` are
defined as `floor((size(B)+1)/2)`.



Examples
~~~~~~~~


::

    s = [1 2 1; 0 0 0; -1 -2 -1];//Sobel horizontal edge kernel
    A = `zeros`_(10,10);A(3:7,3:7) = 1;
    convol2d(s,A);




See Also
~~~~~~~~


+ `conv2`_
+ `convol`_




Used Functions
~~~~~~~~~~~~~~

The `convol2d` function is based on the `fft`_ builtin.



History
~~~~~~~
Version Description 5.4.0 Function convol2d introduced.
.. _fft: fft.html
.. _conv2: conv2.html
.. _convol: convol.html


