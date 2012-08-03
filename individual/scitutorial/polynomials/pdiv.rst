====
"pdiv"
====

Scilab Function Last update : April 1993
**pdiv** - polynomial division



Calling Sequence
~~~~~~~~~~~~~~~~

[R,Q]=pdiv(P1,P2)
[Q]=pdiv(P1,P2)




Parameters
~~~~~~~~~~


+ **P1** : polynomial matrix
+ **P2** : polynomial or polynomial matrix
+ **R,Q** : two polynomial matrices




Description
~~~~~~~~~~~

Element-wise euclidan division of the polynomial matrix **P1** by the
polynomial **P2** or by the polynomial matrix **P2** . **Rij** is the
matrix of remainders, **Qij** is the matrix of quotients and **P1ij =
Qij*P2 + Qij** or **P1ij = Qij*P2ij + Qij** .



Examples
~~~~~~~~


::

    
    
    x=poly(0,'x');
    p1=(1+x^2)*(1-x);p2=1-x;
    [r,q]=pdiv(p1,p2)
    p2*q-p1
    p2=1+x;
    [r,q]=pdiv(p1,p2)
    p2*q+r-p1
     
      




See Also
~~~~~~~~

` **ldiv** `_,` **gcd** `_,

.. _
      : ://./polynomials/gcd.htm
.. _
      : ://./polynomials/ldiv.htm


