


sqrtm
=====

matrix square root



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=sqrtm(x)




Arguments
~~~~~~~~~

:x real or complex square matrix
:



Description
~~~~~~~~~~~

`y=sqrt(x)` is the matrix square root of the `x` matrix ( `x=y^2`).
Result may not be accurate if `x` is not symmetric.



Examples
~~~~~~~~


::

    x=[0 1;2 4]
    w=sqrtm(x); 
    `norm`_(w*w-x)
    x(1,2)=%i;
    w=sqrtm(x);`norm`_(w*w-x,1)




See Also
~~~~~~~~


+ `expm`_ square matrix exponential
+ `sqroot`_ W*W' hermitian factorization


.. _expm: expm.html
.. _sqroot: sqroot.html


