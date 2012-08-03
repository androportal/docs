====
"hermit"
====

Scilab Function Last update : April 1993
**hermit** - Hermite form



Calling Sequence
~~~~~~~~~~~~~~~~

[Ar,U]=hermit(A)




Parameters
~~~~~~~~~~


+ **A** : polynomial matrix
+ **Ar** : triangular polynomial matrix
+ **U** : unimodolar polynomial matrix




Description
~~~~~~~~~~~

Hermite form: **U** is an unimodular matrix such that **A*U** is in
Hermite triangular form:

The output variable is **Ar=A*U** .

Warning: Experimental version



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s');
    p=[s, s*(s+1)^2, 2*s^2+s^3];
    [Ar,U]=hermit(p'*p);
    clean(p'*p*U), det(U)
     
      




See Also
~~~~~~~~

` **hrmt** `_,` **htrianr** `_,

.. _
      : ://./polynomials/htrianr.htm
.. _
      : ://./polynomials/hrmt.htm


