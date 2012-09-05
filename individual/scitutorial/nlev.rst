


nlev
====

Leverrier's algorithm



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [num,den]=nlev(A,z [,rmax])




Arguments
~~~~~~~~~

:A real square matrix
: :z character string
: :rmax optional parameter (see `bdiag`)
:



Description
~~~~~~~~~~~

`[num,den]=nlev(A,z [,rmax])` computes `(z*eye()-A)^(-1)`

by block diagonalization of A followed by Leverrier's algorithm on
each block.

This algorithm is better than the usual leverrier algorithm but still
not perfect!



Examples
~~~~~~~~


::

    A=`rand`_(3,3);x=`poly`_(0,'x');
    [NUM,den]=nlev(A,'x')
    `clean`_(den-`poly`_(A,'x'))
    `clean`_(NUM/den-`inv`_(x*`eye`_()-A))




See Also
~~~~~~~~


+ `coff`_ resolvent (cofactor method)
+ `coffg`_ inverse of polynomial matrix
+ `glever`_ inverse of matrix pencil
+ `ss2tf`_ conversion from state-space to transfer function


.. _coffg: coffg.html
.. _coff: coff.html
.. _glever: glever.html
.. _ss2tf: ss2tf.html


