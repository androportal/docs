====
"logm"
====

Scilab Function Last update : April 1993
**logm** - square matrix logarithm



Calling Sequence
~~~~~~~~~~~~~~~~

y=logm(x)




Parameters
~~~~~~~~~~


+ **x** : square matrix




Description
~~~~~~~~~~~

**logm(x)** is the matrix logarithm of **x** . The result is complex
if **x** is not positive or definite positive. If **x** is a symmetric
matrix, then calculation is made by schur form. Otherwise, **x** is
assumed diagonalizable. One has **expm(logm(x))=x**



Examples
~~~~~~~~


::

    
    
    A=[1,2;3,4];
    logm(A)
    expm(logm(A))
    A1=A*A';
    logm(A1)
    expm(logm(A1))
    A1(1,1)=%i;
    expm(logm(A1))
     
      




See Also
~~~~~~~~

` **expm** `_,` **log** `_,

.. _
      : ://./elementary/../linear/expm.htm
.. _
      : ://./elementary/log.htm


