====
"gcd"
====

Scilab Function Last update : 02/06/2004
**gcd** - gcd calculation



Calling Sequence
~~~~~~~~~~~~~~~~

[pgcd,U]=gcd(p)




Parameters
~~~~~~~~~~


+ **p** : polynomial row vector **p=[p1,..,pn]** or integer row vector
  (type equal to 8)




Description
~~~~~~~~~~~

computes the gcd of components of **p** and a unimodular matrix (with
polynomial inverse) **U** , with minimal degree such that

**p*U=[0 ... 0 pgcd]**



Examples
~~~~~~~~


::

    
    
    //polynomial case
    s=poly(0,'s');
    p=[s,s*(s+1)^2,2*s^2+s^3];
    [pgcd,u]=gcd(p);
    p*u
    
    //integer case
    V=int32([2^2*3^5, 2^3*3^2,2^2*3^4*5]);
    [thegcd,U]=gcd(V)
    V*U
    
     
      




See Also
~~~~~~~~

` **bezout** `_,` **lcm** `_,` **hermit** `_,

.. _
      : ://./polynomials/bezout.htm
.. _
      : ://./polynomials/hermit.htm
.. _
      : ://./polynomials/lcm.htm


