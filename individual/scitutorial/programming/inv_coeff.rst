====
"inv_coeff"
====

Scilab Function Last update : April 1993
**inv_coeff** - build a polynomial matrix from its coefficients



Calling Sequence
~~~~~~~~~~~~~~~~

[P]=inv_coeff(C,[,d,[name])




Parameters
~~~~~~~~~~


+ **C** : big matrix of the coefficients
+ **d** : Polynomial matrix degree. optional parameter with default
  value **d=-1+size(C,'c')/size(C,'r')**
+ **name** : string giving the polynomial variable name (default value
  **'x'** ).




Description
~~~~~~~~~~~

**P=inv_coeff(Mp,k)** , when **k** is compatible with **Mp** size,
returns a polynomial matrix of degree k. **C=[C0,C1,...,Ck]** and **P=
C0 + C1*x +... +Ck*x^k** .



Examples
~~~~~~~~


::

    
    
    A=int(10*rand(2,6))
    // Building a degree 1 polynomial matrix
    P=inv_coeff(A,1)
    norm(coeff(P)-A)
    // Using default value for degree
    P1=inv_coeff(A)
    norm(coeff(P1)-A)
     
      




See Also
~~~~~~~~

` **poly** `_,` **degree** `_,` **coeff** `_,

.. _
      : ://./programming/poly.htm
.. _
      : ://./programming/../polynomials/coeff.htm
.. _
      : ://./programming/../polynomials/degree.htm


