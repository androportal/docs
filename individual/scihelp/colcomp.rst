


colcomp
=======

column compression, kernel, nullspace



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [W,rk]=colcomp(A [,flag] [,tol])




Arguments
~~~~~~~~~

:A real or complex matrix
: :flag character string
: :tol real number
: :W square non-singular matrix (change of basis)
: :rk integer (rank of `A`)
:



Description
~~~~~~~~~~~

Column compression of `A`: `Ac = A*W` is column compressed i.e

`Ac=[0,Af]` with `Af` full column rank, rank( `Af`) = rank( `A`) =
`rk`.

`flag` and `tol` are optional parameters: `flag = 'qr'` or `'svd'`
(default is `'svd'`).

`tol` = tolerance parameter (of order `%eps` as default value).

The `ma-rk` first columns of `W` span the kernel of `A` when
`size(A)=(na,ma)`



Examples
~~~~~~~~


::

    A=`rand`_(5,2)*`rand`_(2,5);
    [X,r]=colcomp(A);
    `norm`_(A*X(:,1:$-r),1)




See Also
~~~~~~~~


+ `rowcomp`_ row compression, range
+ `fullrf`_ full rank factorization
+ `fullrfk`_ full rank factorization of A^k
+ `kernel`_ kernel, nullspace


.. _kernel: kernel.html
.. _fullrfk: fullrfk.html
.. _rowcomp: rowcomp.html
.. _fullrf: fullrf.html


