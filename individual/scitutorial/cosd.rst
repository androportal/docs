


cosd
====

element-wise cosine function, argument in degree



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=cosd(x)




Arguments
~~~~~~~~~

:x real vector/matrix
:



Description
~~~~~~~~~~~

For a vector or a matrix `x` of angles given in degree, `cosd(x)` is
the cosine of its elements. The results are in `[-1 1]`. For input
elements which are equal to `n*90` with `n` integer and odd, the
result is exactly zero.



Sample
~~~~~~



Examples
~~~~~~~~


::

    x=[0,30 45 60 90 360];
    cosd(x)




See Also
~~~~~~~~


+ `cos`_ cosine function


.. _cos: cos.html


