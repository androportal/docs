====
"bezout"
====

Scilab Function Last update : 02/06/2004
**bezout** - Bezout equation for polynomials or integers



Calling Sequence
~~~~~~~~~~~~~~~~

[thegcd,U]=bezout(p1,p2)




Parameters
~~~~~~~~~~


+ **p1, p2** : two real polynomials or two integer scalars (type equal
  to 8)




Description
~~~~~~~~~~~

**[thegcd,U]=bezout(p1,p2)** computes GCD **thegcd** of **p1** and
**p2** and in addition a (2x2) unimodular matrix **U** such that:

**[p1,p2]*U = [thegcd,0]**

The lcm of **p1** and **p2** is given by:

**p1*U(1,2)** (or **-p2*U(2,2)** )



Examples
~~~~~~~~


::

    
    
    // polynomial case
    x=poly(0,'x');
    p1=(x+1)*(x-3)^5;p2=(x-2)*(x-3)^3;
    [thegcd,U]=bezout(p1,p2) 
    det(U)
    clean([p1,p2]*U)
    thelcm=p1*U(1,2)
    lcm([p1,p2])
    // integer case
    i1=int32(2*3^5); i2=int32(2^3*3^2);
    [thegcd,U]=bezout(i1,i2) 
    V=int32([2^2*3^5, 2^3*3^2,2^2*3^4*5]);
    [thegcd,U]=gcd(V)
    V*U
    lcm(V)
     
      




See Also
~~~~~~~~

` **poly** `_,` **roots** `_,` **simp** `_,` **clean** `_,` **lcm**
`_,



Author
~~~~~~

S. Steer INRIA

.. _
      : ://./polynomials/roots.htm
.. _
      : ://./polynomials/clean.htm
.. _
      : ://./polynomials/lcm.htm
.. _
      : ://./polynomials/../programming/poly.htm
.. _
      : ://./polynomials/simp.htm


