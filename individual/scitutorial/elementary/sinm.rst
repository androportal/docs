====
"sinm"
====

Scilab Function Last update : April 1993
**sinm** - matrix sine function



Calling Sequence
~~~~~~~~~~~~~~~~

t=sinm(x)




Parameters
~~~~~~~~~~


+ **x** : real or complex square matrix




Description
~~~~~~~~~~~

**sinm(x)** is matrix sine of x matrix.



Examples
~~~~~~~~


::

    
    
    A=[1,2;2,4];
    sinm(A)+0.5*%i*(expm(%i*A)-expm(-%i*A))
     
      




See Also
~~~~~~~~

` **sin** `_,` **asinm** `_,

.. _
      : ://./elementary/sin.htm
.. _
      : ://./elementary/asinm.htm


