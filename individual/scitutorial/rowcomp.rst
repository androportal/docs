


rowcomp
=======

row compression, range



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [W,rk]=rowcomp(A [,flag [,tol]])




Arguments
~~~~~~~~~

:A real or complex matrix
: :flag optional character string, with possible values `'svd'` or
  `'qr'`. The default value is `'svd'`.
: :tol optional real non negative number. The default value is
  `sqrt(%eps)*norm(A,1)`.
: :W square non-singular matrix (change of basis)
: :rk integer (rank of `A`)
:



Description
~~~~~~~~~~~

Row compression of `A`. `Ac = W*A` is a row compressed matrix: i.e.
`Ac=[Af;0]` with `Af` full row rank.

`flag` and `tol` are optional parameters: `flag='qr'` or `'svd'`
(default `'svd'`).

`tol` is a tolerance parameter.

The `rk` first columns of `W'` span the range of `A`.

The `rk` first (top) rows of `W` span the row range of `A`.

A non zero vector `x` belongs to range( `A`) iff `W*x` is row
compressed in accordance with `Ac` i.e the norm of its last components
is small w.r.t its first components.



Examples
~~~~~~~~


::

    A=`rand`_(5,2)*`rand`_(2,4);              // 4 col. vectors, 2 independent.
    [X,dim]=rowcomp(A);Xp=X';
    `svd`_([Xp(:,1:dim),A])                //span(A) = span(Xp(:,1:dim)
    x=A*`rand`_(4,1);                      //x belongs to span(A)
    y=X*x  
    `norm`_(y(dim+1:$))/`norm`_(y(1:dim))     // small




See Also
~~~~~~~~


+ `colcomp`_ column compression, kernel, nullspace
+ `fullrf`_ full rank factorization
+ `fullrfk`_ full rank factorization of A^k




Used Functions
~~~~~~~~~~~~~~

The `rowcomp` function is based on the `svd`_ or `qr`_ decompositions.

.. _svd: svd.html
.. _colcomp: colcomp.html
.. _fullrf: fullrf.html
.. _fullrfk: fullrfk.html
.. _qr: qr.html


