====
"ldiv"
====

Scilab Function Last update : April 1993
**ldiv** - polynomial matrix long division



Calling Sequence
~~~~~~~~~~~~~~~~

[x]=ldiv(n,d,k)




Parameters
~~~~~~~~~~


+ **n,d** : two real polynomial matrices
+ **k** : integer




Description
~~~~~~~~~~~

**x=ldiv(n,d,k)** gives the **k** first coefficients of the long
division of **n** by **d** i.e. the Taylor expansion of the rational
matrix **[nij(z)/dij(z)]** near infinity.

Coefficients of expansion of **nij/dij** are stored in
**x((i-1)*n+k,j) k=1:n**



Examples
~~~~~~~~


::

    
    
    wss=ssrand(1,1,3);[a,b,c,d]=abcd(wss);
    wtf=ss2tf(wss);
    x1=ldiv(numer(wtf),denom(wtf),5)
    x2=[c*b;c*a*b;c*a^2*b;c*a^3*b;c*a^4*b]
    wssbis=markp2ss(x1',5,1,1);
    wtfbis=clean(ss2tf(wssbis))
    x3=ldiv(numer(wtfbis),denom(wtfbis),5)
     
      




See Also
~~~~~~~~

` **arl2** `_,` **markp2ss** `_,` **pdiv** `_,

.. _
      : ://./polynomials/../control/arl2.htm
.. _
      : ://./polynomials/pdiv.htm
.. _
      : ://./polynomials/../control/markp2ss.htm


