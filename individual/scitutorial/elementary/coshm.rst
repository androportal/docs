====
"coshm"
====

Scilab Function Last update : April 1993
**coshm** - matrix hyperbolic cosine



Calling Sequence
~~~~~~~~~~~~~~~~

t=coshm(x)




Parameters
~~~~~~~~~~


+ **x,t** : real or complex square matrix




Description
~~~~~~~~~~~

coshm is the matrix hyperbolic cosine of the matrix x.
**t=(expm(x)+expm(-x))/2** . Result may be inaccurate for nonsymmetric
matrix.



Examples
~~~~~~~~


::

    
    
    A=[1,2;2,4]
    acoshm(coshm(A))
     
      




See Also
~~~~~~~~

` **cosh** `_,` **expm** `_,

.. _
      : ://./elementary/cosh.htm
.. _
      : ://./elementary/../linear/expm.htm


