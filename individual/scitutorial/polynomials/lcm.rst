====
"lcm"
====

Scilab Function Last update : 02/06/2004
**lcm** - least common multiple



Calling Sequence
~~~~~~~~~~~~~~~~

[pp,fact]=lcm(p)




Parameters
~~~~~~~~~~


+ **p** :
+ **fact** : polynomial vector or integer vector (type equal to 8)
+ **pp** : polynomial or integer




Description
~~~~~~~~~~~

**pp=lcm(p)** computes the lcm **pp** of polynomial vector **p** .

**[pp,fact]=lcm(p)** computes in addition the vector **fact** such
that:

**p.*fact=pp*ones(p)**



Examples
~~~~~~~~


::

    
    
    //polynomial case
    s=poly(0,'s');
    p=[s,s*(s+1)^2,s^2*(s+2)];
    [pp,fact]=lcm(p);
    p.*fact, pp
    //integer case
    V=int32([2^2*3^5, 2^3*3^2,2^2*3^4*5]);
    lcm(V)
    
     
      




See Also
~~~~~~~~

` **gcd** `_,` **bezout** `_,

.. _
      : ://./polynomials/bezout.htm
.. _
      : ://./polynomials/gcd.htm


