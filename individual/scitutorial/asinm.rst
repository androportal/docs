


asinm
=====

matrix wise sine inverse



Calling Sequence
~~~~~~~~~~~~~~~~


::

    t=asinm(x)




Arguments
~~~~~~~~~

:x real or complex square matrix
: :t real or complex square matrix
:



Description
~~~~~~~~~~~

`t` are sine inverse of the `x` matrix. Diagonalization method is
used. For non symmetric matrices result may be inaccurate.



Examples
~~~~~~~~


::

    A=[1,2;3,4]
    `sinm`_(asinm(A))
    asinm(A)+%i*`logm`_(%i*A+`sqrtm`_(`eye`_()-A*A))




See Also
~~~~~~~~


+ `asin`_ sine inverse (radians)
+ `sinm`_ matrix sine function


.. _sinm: sinm.html
.. _asin: asin.html


