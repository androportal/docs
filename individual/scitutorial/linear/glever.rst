====
"glever"
====

Scilab Function Last update : 16/12/2004
**glever** - inverse of matrix pencil



Calling Sequence
~~~~~~~~~~~~~~~~

[Bfs,Bis,chis]=glever(E,A [,s])




Parameters
~~~~~~~~~~


+ **E, A** : two real square matrices of same dimensions
+ **s** : character string (default value ' **s** ')
+ **Bfs,Bis** : two polynomial matrices
+ **chis** : polynomial




Description
~~~~~~~~~~~

Computation of

**(s*E-A)^-1**

by generalized Leverrier's algorithm for a matrix pencil.


::

    
    
    (s*E-A)^-1 = (Bfs/chis) - Bis.
       
        


**chis** = characteristic polynomial (up to a multiplicative
constant).

**Bfs** = numerator polynomial matrix.

**Bis** = polynomial matrix ( - expansion of **(s*E-A)^-1** at
infinity).

Note the - sign before **Bis** .



Caution
~~~~~~~

This function uses **cleanp** to simplify **Bfs,Bis** and **chis** .



Examples
~~~~~~~~


::

    
    
    s=%s;F=[-1,s,0,0;0,-1,0,0;0,0,s-2,0;0,0,0,s-1];
    [Bfs,Bis,chis]=glever(F)
    inv(F)-((Bfs/chis) - Bis)
     
      




See Also
~~~~~~~~

` **rowshuff** `_,` **det** `_,` **invr** `_,` **coffg** `_,`
**pencan** `_,` **penlaur** `_,



Author
~~~~~~

F. D. (1988)

.. _
      : ://./linear/rowshuff.htm
.. _
      : ://./linear/det.htm
.. _
      : ://./linear/penlaur.htm
.. _
      : ://./linear/pencan.htm
.. _
      : ://./linear/../polynomials/coffg.htm
.. _
      : ://./linear/../polynomials/invr.htm


