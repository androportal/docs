


kernel
======

kernel, nullspace



Calling Sequence
~~~~~~~~~~~~~~~~


::

    W=kernel(A [,tol,[,flag])




Arguments
~~~~~~~~~

:A full real or complex matrix or real sparse matrix
: :flag character string `'svd'` (default) or `'qr'`
: :tol real number
: :W full column rank matrix
:



Description
~~~~~~~~~~~

`W=kernel(A)` returns the kernel (nullspace) of `A`. If A has full
column rank then an empty matrix [] is returned.

`flag` and `tol` are optional parameters: `flag = 'qr'` or `'svd'`
(default is `'svd'`).

`tol` = tolerance parameter (of order `%eps` as default value).



Examples
~~~~~~~~


::

    A=`rand`_(3,1)*`rand`_(1,3);
    A*kernel(A)
    A=`sparse`_(A);
    `clean`_(A*kernel(A))




See Also
~~~~~~~~


+ `colcomp`_ column compression, kernel, nullspace
+ `fullrf`_ full rank factorization
+ `fullrfk`_ full rank factorization of A^k
+ `linsolve`_ linear equation solver


.. _linsolve: linsolve.html
.. _fullrfk: fullrfk.html
.. _colcomp: colcomp.html
.. _fullrf: fullrf.html


