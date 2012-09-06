


coshm
=====

matrix hyperbolic cosine



Calling Sequence
~~~~~~~~~~~~~~~~


::

    t=coshm(x)




Arguments
~~~~~~~~~

:x,t real or complex square matrix
:



Description
~~~~~~~~~~~

coshm is the matrix hyperbolic cosine of the matrix x.
`t=(expm(x)+expm(-x))/2`. Result may be inaccurate for nonsymmetric
matrix.



Examples
~~~~~~~~


::

    A=[1,2;2,4]
    `acoshm`_(coshm(A))




See Also
~~~~~~~~


+ `cosh`_ hyperbolic cosine
+ `expm`_ square matrix exponential


.. _cosh: cosh.html
.. _expm: expm.html


