


conv2
=====

discrete 2-D convolution.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    C = conv2(A,B [,shape])
    C = conv2(hrow,hcol,B [,shape])




Parameters
~~~~~~~~~~

:hrow a real or complex vector.
: :hcol a real or complex vector.
: :A a real or complex 2-D array.
: :B a real or complex 2-D array.
: :shape an optional character string with possible values:

    + `"full"`, `conv2` computes the full two-dimensional convolution. It
      is the default value.
    + `"same"`, `conv2` computes the central part of the convolution of
      the same size as `A`.
    + `"valid"`, `conv2` computes the convolution parts without the zero-
      padding of `A`.

: :C a real or complex 2-D array.
:



Description
~~~~~~~~~~~

`conv2` uses a straightforward formal implementation of the two-
dimensional convolution equation in spatial form.

`C=conv2(A,B [,shape])` computes the two-dimensional convolution of
the arrays `A` and `B`:


+ With `shape=="full"` the dimensions of the result `C` are given by
  `size(A)+size(B)+1`. The indices of the center element of `B` are
  defined as `floor((size(B)+1)/2)`.
+ With `shape=="same"` the dimensions of the result `C` are given by
  `size(A)`. The indices of the center element of `B` are defined as
  `floor((size(B)+1)/2)`.
+ With `shape=="valid"` the dimensions of the result `C` are given by
  `size(A)-size(B)+1)` if `and(size(A)-size(B))>=0` else `C` is empty .
  The indices of the center element of `B` are defined as `[1 1]` .


The separable form `C=conv2(hrow,hcol,B [,shape])`is equivalent to
`C=conv2(hrow(:)*hcol(:).',B [,shape])`
.
Note that `convol2d`_ can be more efficient for large arrays.



Examples
~~~~~~~~


::

    s = [1 2 1; 0 0 0; -1 -2 -1];//Sobel horizontal edge kernel
    A = `zeros`_(10,10);A(3:7,3:7) = 1;
    conv2(s,A);
    
    //separable form 
    u=[1;0;-1];v=[1 2 1];// u*v=s
    conv2(u,v,A)




See Also
~~~~~~~~


+ `convol2d`_
+ `conv`_




History
~~~~~~~
Version Description 5.4.0 Function conv2 introduced.
.. _conv: conv.html
.. _convol2d: convol2d.html


