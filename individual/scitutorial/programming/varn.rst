====
"varn"
====

Scilab Function Last update : April 1993
**varn** - symbolic variable of a polynomial



Calling Sequence
~~~~~~~~~~~~~~~~

[symb]=varn(p)
[pm]=varn(x,var)




Parameters
~~~~~~~~~~


+ **p** : polynomial (or matrix polynomial)
+ **symb** : character string
+ **x** : polynomial or polynomial matrix
+ **var** : symbolic variable (character string)
+ **pm** : matrix or polynomial matrix




Description
~~~~~~~~~~~

**symb=varn(p)** returns in **symb** the symbolic variable of the
polynomial **p** (i.e. **varn(poly(0,'x'))** is **'x'** ).

**varn(x,'s')** returns a polynomial matrix with same coefficients as
**x** but with **'s'** as symbolic variable (change of variable name).



Examples
~~~~~~~~


::

    
    
    // 
    s=poly(0,'s');p=[s^2+1,s];
    varn(p)
    varn(p,'x')
     
      




See Also
~~~~~~~~

` **horner** `_,` **poly** `_,

.. _
      : ://./programming/poly.htm
.. _
      : ://./programming/../polynomials/horner.htm


