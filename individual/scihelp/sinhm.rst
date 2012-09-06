


sinhm
=====

matrix hyperbolic sine



Calling Sequence
~~~~~~~~~~~~~~~~


::

    t=sinhm(x)




Arguments
~~~~~~~~~

:x,t real or complex square matrix
:



Description
~~~~~~~~~~~

sinhm(x) is the matrix hyperbolic sine of the matrix x.
`t=(expm(x)-expm(-x))/2.`



Examples
~~~~~~~~


::

    A=[1,2;2,3]
    `asinhm`_(sinhm(A))
    A(1,1)=%i;sinhm(A)-(`expm`_(A)-`expm`_(-A))/2   //Complex case




See Also
~~~~~~~~


+ `sinh`_ hyperbolic sine


.. _sinh: sinh.html


