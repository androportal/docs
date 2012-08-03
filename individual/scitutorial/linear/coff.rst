====
"coff"
====

Scilab Function Last update : April 1993
**coff** - resolvent (cofactor method)



Calling Sequence
~~~~~~~~~~~~~~~~

[N,d]=coff(M [,var])




Parameters
~~~~~~~~~~


+ **M** : square real matrix
+ **var** : character string
+ **N** : polynomial matrix (same size as **M** )
+ **d** : polynomial (characteristic polynomial **poly(A,'s')** )




Description
~~~~~~~~~~~

**coff** computes R= **(s*eye()-M)^-1** for **M** a real matrix. R is
given by **N/d** .

**N** = numerator polynomial matrix.

**d** = common denominator.

**var** character string (' **s** ' if omitted)



Examples
~~~~~~~~


::

    
    
    M=[1,2;0,3];
    [N,d]=coff(M)
    N/d
    inv(%s*eye()-M)
     
      




See Also
~~~~~~~~

` **coffg** `_,` **ss2tf** `_,` **nlev** `_,` **poly** `_,

.. _
      : ://./linear/../control/ss2tf.htm
.. _
      : ://./linear/../programming/poly.htm
.. _
      : ://./linear/nlev.htm
.. _
      : ://./linear/../polynomials/coffg.htm


