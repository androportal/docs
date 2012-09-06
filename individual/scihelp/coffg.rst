


coffg
=====

inverse of polynomial matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Ns,d]=coffg(Fs)




Arguments
~~~~~~~~~

:Fs square polynomial matrix
:



Description
~~~~~~~~~~~

`coffg` computes `Fs^-1` where `Fs` is a polynomial matrix by co-
factors method.

`Fs` inverse = `Ns/d`

`d` = common denominator; `Ns` = numerator (a polynomial matrix)

(For large matrices,be patient...results are generally reliable)



Examples
~~~~~~~~


::

    s=`poly`_(0,'s')
    a=[ s, s^2+1; s  s^2-1];
    [a1,d]=coffg(a);
    (a1/d)-`inv`_(a)




See Also
~~~~~~~~


+ `determ`_ determinant of polynomial matrix
+ `detr`_ polynomial determinant
+ `invr`_ inversion of (rational) matrix
+ `penlaur`_ Laurent coefficients of matrix pencil
+ `glever`_ inverse of matrix pencil


.. _invr: invr.html
.. _glever: glever.html
.. _detr: detr.html
.. _determ: determ.html
.. _penlaur: penlaur.html


