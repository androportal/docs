====
"pol2des"
====

Scilab Function Last update : April 1993
**pol2des** - polynomial matrix to descriptor form



Calling Sequence
~~~~~~~~~~~~~~~~

[N,B,C]=pol2des(Ds)




Parameters
~~~~~~~~~~


+ **Ds** : polynomial matrix
+ **N, B, C** : three real matrices




Description
~~~~~~~~~~~

Given the polynomial matrix **Ds=D_0 +D_1 s +D_2 s^2 +... +D_k s^k** ,
**pol2des** returns three matrices **N, B, C** , with **N** nilpotent
such that:

**Ds = C (s*N-eye())^-1 B**



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s');
    G=[1,s;1+s^2,3*s^3];[N,B,C]=pol2des(G);
    G1=clean(C*inv(s*N-eye())*B),G2=numer(G1)
     
      




See Also
~~~~~~~~

` **ss2des** `_,` **tf2des** `_,



Author
~~~~~~

F.D.;

.. _
      : ://./polynomials/../control/ss2des.htm
.. _
      : ://./polynomials/../robust/tf2des.htm


