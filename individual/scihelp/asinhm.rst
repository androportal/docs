


asinhm
======

matrix hyperbolic inverse sine



Calling Sequence
~~~~~~~~~~~~~~~~


::

    t=asinhm(x)




Arguments
~~~~~~~~~

:x,t real or complex square matrix
:



Description
~~~~~~~~~~~

asinhm is the matrix hyperbolic inverse sine of the matrix x. Uses the
formula `t=logm(x+sqrtm(x*x+eye()))`. Results may be not reliable for
non-symmetric matrix.



Examples
~~~~~~~~


::

    A=[1,2;2,3]
    `sinhm`_(asinhm(A))




See Also
~~~~~~~~


+ `asinh`_ hyperbolic sine inverse
+ `logm`_ square matrix logarithm
+ `sqrtm`_ matrix square root
+ `sinhm`_ matrix hyperbolic sine
+ `eye`_ identity matrix


.. _logm: logm.html
.. _eye: eye.html
.. _sqrtm: sqrtm.html
.. _sinhm: sinhm.html
.. _asinh: asinh.html


