====
"asinhm"
====

Scilab Function Last update : April 1993
**asinhm** - matrix hyperbolic inverse sine



Calling Sequence
~~~~~~~~~~~~~~~~

t=asinhm(x)




Parameters
~~~~~~~~~~


+ **x,t** : real or complex square matrix




Description
~~~~~~~~~~~

asinhm is the matrix hyperbolic inverse sine of the matrix x. Uses the
formula **t=logm(x+sqrtm(x*x+eye()))** . Results may be not reliable
for non-symmetric matrix.



Examples
~~~~~~~~


::

    
    
    A=[1,2;2,3]
    sinhm(asinhm(A))
     
      




See Also
~~~~~~~~

` **asinh** `_,` **logm** `_,` **sqrtm** `_,

.. _
      : ://./elementary/logm.htm
.. _
      : ://./elementary/sqrtm.htm
.. _
      : ://./elementary/asinh.htm


