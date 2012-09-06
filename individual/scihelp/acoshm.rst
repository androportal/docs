


acoshm
======

matrix hyperbolic inverse cosine



Calling Sequence
~~~~~~~~~~~~~~~~


::

    t=acoshm(x)




Arguments
~~~~~~~~~

:x,t real or complex square matrix
:



Description
~~~~~~~~~~~

acoshm is the matrix hyperbolic inverse cosine of the matrix x. Uses
the formula `t=logm(x+(x+eye())*sqrtm((x-eye())/(x+eye())))` For non
symmetric matrices result may be inaccurate.



Examples
~~~~~~~~


::

    A=[1,2;3,4];
    `coshm`_(acoshm(A))
    A(1,1)=A(1,1)+%i;
    `coshm`_(acoshm(A))




See Also
~~~~~~~~


+ `acosh`_ hyperbolic cosine inverse
+ `logm`_ square matrix logarithm
+ `sqrtm`_ matrix square root


.. _acosh: acosh.html
.. _sqrtm: sqrtm.html
.. _logm: logm.html


