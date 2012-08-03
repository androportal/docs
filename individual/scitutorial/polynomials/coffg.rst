====
"coffg"
====

Scilab Function Last update : April 1993
**coffg** - inverse of polynomial matrix



Calling Sequence
~~~~~~~~~~~~~~~~

[Ns,d]=coffg(Fs)




Parameters
~~~~~~~~~~


+ **Fs** : square polynomial matrix




Description
~~~~~~~~~~~

**coffg** computes **Fs^-1** where **Fs** is a polynomial matrix by
co-factors method.

**Fs** inverse = **Ns/d**

**d** = common denominator; **Ns** = numerator (a polynomial matrix)

(For large matrices,be patient...results are generally reliable)



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s')
    a=[ s, s^2+1; s  s^2-1];
    [a1,d]=coffg(a);
    (a1/d)-inv(a)
     
      




See Also
~~~~~~~~

` **determ** `_,` **detr** `_,` **invr** `_,` **penlaur** `_,`
**glever** `_,



Author
~~~~~~

F. D.; ;

.. _
      : ://./polynomials/detr.htm
.. _
      : ://./polynomials/invr.htm
.. _
      : ://./polynomials/../linear/glever.htm
.. _
      : ://./polynomials/determ.htm
.. _
      : ://./polynomials/../linear/penlaur.htm


