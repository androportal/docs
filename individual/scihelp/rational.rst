


rational
========

Scilab objects, rational in Scilab



Description
~~~~~~~~~~~

A rational `r` is a quotient of two polynomials `r=num/den`. The
internal representation of a rational is a list.
`r=tlist('['r','num','den','dt'],num,den,[])` is the same as
`r=num/den`. A rational matrix can be defined with the usual syntax
e.g. `[r11,r12;r21,r22]` is a 2x2 matrix where `rij` are 1x1
rationals. A rational matrix can also be defined as above as a list
`rlist(num,den,[])` with `num` and `den` polynomial matrices.



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');
    W=[1/s,1/(s+1)]
    W'*W
    Num=[s,s+2;1,s];Den=[s*s,s;s,s*s];
    `rlist`_(Num,Den,[])
    H=Num./Den
    `syslin`_('c',Num,Den)
    `syslin`_('c',H)
    [Num1,Den1]=`simp`_(Num,Den)




See Also
~~~~~~~~


+ `poly`_ polynomial definition
+ `syslin`_ linear system definition
+ `simp`_ rational simplification


.. _simp: simp.html
.. _syslin: syslin.html
.. _poly: poly.html


