====
"asinm"
====

Scilab Function Last update : April 1993
**asinm** - matrix wise sine inverse



Calling Sequence
~~~~~~~~~~~~~~~~

t=asinm(x)




Parameters
~~~~~~~~~~


+ **x** : real or complex square matrix
+ **t** : real or complex square matrix




Description
~~~~~~~~~~~

**t** are sine inverse of the **x** matrix. Diagonalization method is
used. For non symmetric matrices result may be inaccurate.



Examples
~~~~~~~~


::

    
    
    A=[1,2;3,4]
    sinm(asinm(A))
    asinm(A)+%i*logm(%i*A+sqrtm(eye()-A*A))
     
      




See Also
~~~~~~~~

` **asin** `_,` **sinm** `_,

.. _
      : ://./elementary/sinm.htm
.. _
      : ://./elementary/asin.htm


