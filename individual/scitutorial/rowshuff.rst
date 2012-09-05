


rowshuff
========

shuffle algorithm



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Ws,Fs1]=rowshuff(Fs, [alfa])




Arguments
~~~~~~~~~

:Fs square real pencil `Fs = s*E-A`
: :Ws polynomial matrix
: :Fs1 square real pencil `F1s = s*E1 -A1` with `E1` non-singular
: :alfa real number ( `alfa = 0` is the default value)
:



Description
~~~~~~~~~~~

Shuffle algorithm: Given the pencil `Fs=s*E-A`, returns Ws=W(s)
(square polynomial matrix) such that:

`Fs1 = s*E1-A1 = W(s)*(s*E-A)` is a pencil with non singular `E1`
matrix.

This is possible iff the pencil `Fs = s*E-A` is regular (i.e.
invertible). The degree of `Ws` is equal to the index of the pencil.

The poles at infinity of `Fs` are put to `alfa` and the zeros of `Ws`
are at `alfa`.

Note that `(s*E-A)^-1 = (s*E1-A1)^-1 * W(s) = (W(s)*(s*E-A))^-1 *W(s)`



Examples
~~~~~~~~


::

    F=`randpencil`_([],[2],[1,2,3],[]);
    F=`rand`_(5,5)*F*`rand`_(5,5);   // 5 x 5 regular pencil with 3 evals at 1,2,3
    [Ws,F1]=rowshuff(F,-1);
    [E1,A1]=`pen2ea`_(F1);
    `svd`_(E1)           //E1 non singular
    `roots`_(`det`_(Ws))
    `clean`_(`inv`_(F)-`inv`_(F1)*Ws,1.d-7)




See Also
~~~~~~~~


+ `pencan`_ canonical form of matrix pencil
+ `glever`_ inverse of matrix pencil
+ `penlaur`_ Laurent coefficients of matrix pencil


.. _pencan: pencan.html
.. _glever: glever.html
.. _penlaur: penlaur.html


