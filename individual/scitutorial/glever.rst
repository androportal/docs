


glever
======

inverse of matrix pencil



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Bfs,Bis,chis]=glever(E,A [,s])




Arguments
~~~~~~~~~

:E, A two real square matrices of same dimensions
: :s character string (default value ' `s`')
: :Bfs,Bis two polynomial matrices
: :chis polynomial
:



Description
~~~~~~~~~~~

Computation of

`(s*E-A)^-1`

by generalized Leverrier's algorithm for a matrix pencil.


::

    (s*E-A)^-1 = (Bfs/chis) - Bis.


`chis` = characteristic polynomial (up to a multiplicative constant).

`Bfs` = numerator polynomial matrix.

`Bis` = polynomial matrix ( - expansion of `(s*E-A)^-1` at infinity).

Note the - sign before `Bis`.



Caution
~~~~~~~

This function uses `cleanp` to simplify `Bfs,Bis` and `chis`.



Examples
~~~~~~~~


::

    s=%s;F=[-1,s,0,0;0,-1,0,0;0,0,s-2,0;0,0,0,s-1];
    [Bfs,Bis,chis]=glever(F)
    `inv`_(F)-((Bfs/chis) - Bis)




See Also
~~~~~~~~


+ `rowshuff`_ shuffle algorithm
+ `det`_ determinant
+ `invr`_ inversion of (rational) matrix
+ `coffg`_ inverse of polynomial matrix
+ `pencan`_ canonical form of matrix pencil
+ `penlaur`_ Laurent coefficients of matrix pencil


.. _coffg: coffg.html
.. _invr: invr.html
.. _rowshuff: rowshuff.html
.. _pencan: pencan.html
.. _det: det.html
.. _penlaur: penlaur.html


