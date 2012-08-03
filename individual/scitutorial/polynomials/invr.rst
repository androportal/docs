====
"invr"
====

Scilab Function Last update : April 1993
**invr** - inversion of (rational) matrix



Calling Sequence
~~~~~~~~~~~~~~~~

F = invr(H)




Parameters
~~~~~~~~~~


+ **H** : polynomial or rational matrix
+ **F** : polynomial or rational matrix




Description
~~~~~~~~~~~

If **H** is a polynomial or rational function matrix, **invr**
computes **H^(-1)** using Leverrier's algorithm (see function code)



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s')
    H=[s,s*s+2;1-s,1+s]; invr(H)
    [Num,den]=coffg(H);Num/den
    H=[1/s,(s+1);1/(s+2),(s+3)/s];invr(H)
     
      




See Also
~~~~~~~~

` **glever** `_,` **coffg** `_,` **inv** `_,

.. _
      : ://./polynomials/../linear/glever.htm
.. _
      : ://./polynomials/../linear/inv.htm
.. _
      : ://./polynomials/coffg.htm


