====
"atanhm"
====

Scilab Function Last update : April 1993
**atanhm** - matrix hyperbolic tangent inverse



Calling Sequence
~~~~~~~~~~~~~~~~

t=atanhm(x)




Parameters
~~~~~~~~~~


+ **x** : real or complex square matrix
+ **t** : real or complex square matrix




Description
~~~~~~~~~~~

**atanhm(x)** is the matrix hyperbolic tangent inverse of matrix **x**
. Results may be inaccurate if **x** is not symmetric.



Examples
~~~~~~~~


::

    
    
    A=[1,2;3,4];
    tanhm(atanhm(A))
     
      




See Also
~~~~~~~~

` **atanh** `_,` **tanhm** `_,

.. _
      : ://./elementary/tanhm.htm
.. _
      : ://./elementary/atanh.htm


