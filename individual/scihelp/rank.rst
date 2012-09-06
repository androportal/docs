


rank
====

rank



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [i]=rank(X)
    [i]=rank(X,tol)




Arguments
~~~~~~~~~

:X real or complex matrix
: :tol nonnegative real number
:



Description
~~~~~~~~~~~

`rank(X)` is the numerical rank of `X` i.e. the number of singular
values of X that are larger than `norm(size(X),'inf') * norm(X) *
%eps`.

`rank(X,tol)` is the number of singular values of `X` that are larger
than `tol`.

Note that the default value of `tol` is proportional to `norm(X)`. As
a consequence `rank([1.d-80,0;0,1.d-80])` is 2 !.



Examples
~~~~~~~~


::

    rank([1.d-80,0;0,1.d-80])
    rank([1,0;0,1.d-80])




See Also
~~~~~~~~


+ `svd`_ singular value decomposition
+ `qr`_ QR decomposition
+ `rowcomp`_ row compression, range
+ `colcomp`_ column compression, kernel, nullspace
+ `lu`_ LU factorization with pivoting


.. _svd: svd.html
.. _rowcomp: rowcomp.html
.. _colcomp: colcomp.html
.. _qr: qr.html
.. _lu: lu.html


