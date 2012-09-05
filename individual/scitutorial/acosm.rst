


acosm
=====

matrix wise cosine inverse



Calling Sequence
~~~~~~~~~~~~~~~~


::

    t=acosm(x)




Arguments
~~~~~~~~~

:x real or complex square matrix
: :t real or complex square matrix
:



Description
~~~~~~~~~~~

`t` are cosine inverse of the `x` matrix. Diagonalization method is
used. For nonsymmetric matrices result may be inaccurate.One has
`t=-%i*logm(x+%i*sqrtm(eye()-x*x))`



Examples
~~~~~~~~


::

    A=[1,2;3,4];
    `cosm`_(acosm(A))




See Also
~~~~~~~~


+ `acos`_ element wise cosine inverse (radians)
+ `sqrtm`_ matrix square root
+ `logm`_ square matrix logarithm


.. _sqrtm: sqrtm.html
.. _logm: logm.html
.. _acos: acos.html


