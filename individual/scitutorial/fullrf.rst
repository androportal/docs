


fullrf
======

full rank factorization



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Q,M,rk]=fullrf(A,[tol])




Arguments
~~~~~~~~~

:A real or complex matrix
: :tol real number (threshold for rank determination)
: :Q,M real or complex matrix
: :rk integer (rank of `A`)
:



Description
~~~~~~~~~~~

Full rank factorization : `fullrf` returns `Q` and `M` such that `A =
Q*M` with range( `Q`)=range( `A`) and ker( `M`)=ker( `A`), `Q` full
column rank , `M` full row rank, `rk = rank(A) = #columns(Q) =
#rows(M)`.

`tol` is an optional real parameter (default value is `sqrt(%eps)`).
The rank `rk` of `A` is defined as the number of singular values
larger than `norm(A)*tol`.

If A is symmetric, `fullrf` returns `M=Q'`.



Examples
~~~~~~~~


::

    A=`rand`_(5,2)*`rand`_(2,5);
    [Q,M]=fullrf(A);
    `norm`_(Q*M-A,1)
    [X,d]=`rowcomp`_(A);Y=X';
    `svd`_([A,Y(:,1:d),Q])        //span(Q) = span(A) = span(Y(:,1:2))




See Also
~~~~~~~~


+ `svd`_ singular value decomposition
+ `qr`_ QR decomposition
+ `fullrfk`_ full rank factorization of A^k
+ `rowcomp`_ row compression, range
+ `colcomp`_ column compression, kernel, nullspace


.. _svd: svd.html
.. _rowcomp: rowcomp.html
.. _colcomp: colcomp.html
.. _fullrfk: fullrfk.html
.. _qr: qr.html


