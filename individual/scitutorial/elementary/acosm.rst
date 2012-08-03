====
"acosm"
====

Scilab Function Last update : April 1993
**acosm** - matrix wise cosine inverse



Calling Sequence
~~~~~~~~~~~~~~~~

t=acosm(x)




Parameters
~~~~~~~~~~


+ **x** : real or complex square matrix
+ **t** : real or complex square matrix




Description
~~~~~~~~~~~

**t** are cosine inverse of the **x** matrix. Diagonalization method
is used. For nonsymmetric matrices result may be inaccurate.One has
**t=-%i*logm(x+%i*sqrtm(eye()-x*x))**



Examples
~~~~~~~~


::

    
    
    A=[1,2;3,4];
    cosm(acosm(A))
     
      




See Also
~~~~~~~~

` **acos** `_,` **sqrtm** `_,` **logm** `_,

.. _
      : ://./elementary/logm.htm
.. _
      : ://./elementary/acos.htm
.. _
      : ://./elementary/sqrtm.htm


