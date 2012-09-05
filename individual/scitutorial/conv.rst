


conv
====

discrete 1-D convolution.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    C = conv(A,B [,shape])




Parameters
~~~~~~~~~~

:A a real or complex vector.
: :B a real or complex vector.
: :shape an optional character string with possible values:

    + `"full"`, `conv` computes the full convolution. It is the default
      value.
    + `"same"`, `conv` computes the central part of the convolution of the
      same size as `A`.
    + `"valid"`, `conv` computes the convolution parts without the zero-
      padding of `A`.

: :C a real or complex vector.
:



Description
~~~~~~~~~~~

`conv` uses a straightforward formal implementation of the one-
dimensional convolution equation in spatial form.

`C=conv(A,B [,shape])` computes the one-dimensional convolution of the
vectors `A` and `B`:


+ With `shape=="full"` the dimensions of the result `C` are given by
  `size(A,'*')+size(B,'*')+1`. The indices of the center element of `B`
  are defined as `floor((size(B,'*')+1)/2)`.
+ With `shape=="same"` the dimensions of the result `C` are given by
  `size(A)`. The indices of the center element of `B` are defined as
  `floor((size(B,'*')+1)/2)`.
+ With `shape=="valid"` the dimensions of the result `C` are given by
  `size(A,'*')-size(B,'*')+1)` if `and(size(A,'*')-size(B,'*'))>=0` else
  `C` is empty . The indices of the center element of `B` are defined as
  `1`.


Note that `convol`_ can be more efficient for large arrays.



Examples
~~~~~~~~


::

    A=1:10;
    B=[1 -1];
    conv(A,B)




See Also
~~~~~~~~


+ `convol`_
+ `conv2`_




Used Functions
~~~~~~~~~~~~~~

The conv function is based on the `conv2`_ builtin.



History
~~~~~~~
Version Description 5.4.0 Function conv introduced.
.. _conv2: conv2.html
.. _convol: convol.html


