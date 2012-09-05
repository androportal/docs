


ldiv
====

polynomial matrix long division



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [x]=ldiv(n,d,k)




Arguments
~~~~~~~~~

:n,d two real polynomial matrices
: :k integer
:



Description
~~~~~~~~~~~

`x=ldiv(n,d,k)` gives the `k` first coefficients of the long division
of `n` by `d` i.e. the Taylor expansion of the rational matrix
`[nij(z)/dij(z)]` near infinity.

Coefficients of expansion of `nij/dij` are stored in `x((i-1)*n+k,j)
k=1:n`



Examples
~~~~~~~~


::

    wss=`ssrand`_(1,1,3);[a,b,c,d]=`abcd`_(wss);
    wtf=`ss2tf`_(wss);
    x1=ldiv(`numer`_(wtf),`denom`_(wtf),5)
    x2=[c*b;c*a*b;c*a^2*b;c*a^3*b;c*a^4*b]
    wssbis=`markp2ss`_(x1',5,1,1);
    wtfbis=`clean`_(`ss2tf`_(wssbis))
    x3=ldiv(`numer`_(wtfbis),`denom`_(wtfbis),5)




See Also
~~~~~~~~


+ `arl2`_ SISO model realization by L2 transfer approximation
+ `markp2ss`_ Markov parameters to state-space
+ `pdiv`_ polynomial division


.. _arl2: arl2.html
.. _markp2ss: markp2ss.html
.. _pdiv: pdiv.html


