


qr
==

QR decomposition



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Q,R]=qr(X [,"e"])
    [Q,R,E]=qr(X [,"e"])
    [Q,R,rk,E]=qr(X [,tol])




Arguments
~~~~~~~~~

:X real or complex matrix
: :tol nonnegative real number
: :Q square orthogonal or unitary matrix
: :R matrix with same dimensions as `X`
: :E permutation matrix
: :rk integer (QR-rank of `X`)
:



Description
~~~~~~~~~~~

:[Q,R] = qr(X) produces an upper triangular matrix `R` of the same
  dimension as `X` and an orthogonal (unitary in the complex case)
  matrix `Q` so that `X = Q*R`. `[Q,R] = qr(X,"e")` produces an "economy
  size": If `X` is m-by-n with m > n, then only the first n columns of
  `Q` are computed as well as the first n rows of `R`. From `Q*R = X` ,
  it follows that the kth column of the matrix `X`, is expressed as a
  linear combination of the k first columns of `Q` (with coefficients
  `R(1,k), ..., R(k,k)`). The k first columns of `Q` make an orthogonal
  basis of the subspace spanned by the k first comumns of `X`. If column
  `k` of `X` (i.e. `X(:,k)` ) is a linear combination of the first `p`
  columns of `X`, then the entries `R(p+1,k), ..., R(k,k)` are zero. It
  this situation, `R` is upper trapezoidal. If `X` has rank `rk`, rows
  `R(rk+1,:), R(rk+2,:), ...` are zeros.
: :[Q,R,E] = qr(X) produces a (column) permutation matrix `E`, an
  upper triangular `R` with decreasing diagonal elements and an
  orthogonal (or unitary) `Q` so that `X*E = Q*R`. If `rk` is the rank
  of `X`, the `rk` first entries along the main diagonal of `R`, i.e.
  `R(1,1), R(2,2), ..., R(rk,rk)` are all different from zero. `[Q,R,E]
  = qr(X,"e")` produces an "economy size": If `X` is m-by-n with m > n,
  then only the first n columns of `Q` are computed as well as the first
  n rows of `R`.
: :[Q,R,rk,E] = qr(X ,tol) returns `rk` = rank estimate of `X` i.e.
  `rk` is the number of diagonal elements in `R` which are larger than a
  given threshold `tol`.
: :[Q,R,rk,E] = qr(X) returns `rk` = rank estimate of `X` i.e. `rk` is
  the number of diagonal elements in `R` which are larger than
  `tol=R(1,1)*%eps*max(size(R))`. See `rankqr` for a rank revealing QR
  factorization, using the condition number of `R`.
:



Examples
~~~~~~~~


::

    // QR factorization, generic case
    // X is tall (full rank)
    X=`rand`_(5,2);[Q,R]=qr(X); [Q'*X R]
    
    //X is fat (full rank)
    X=`rand`_(2,3);[Q,R]=qr(X); [Q'*X R]
    
    //Column 4 of X is a linear combination of columns 1 and 2:
    X=`rand`_(8,5);X(:,4)=X(:,1)+X(:,2); [Q,R]=qr(X); R, R(:,4)
    
    //X has rank 2, rows 3 to $ of R are zero:
    X=`rand`_(8,2)*`rand`_(2,5);[Q,R]=qr(X); R
    
    //Evaluating the rank rk: column pivoting ==> rk first
    //diagonal entries of R are non zero :
    A=`rand`_(5,2)*`rand`_(2,5);
    [Q,R,rk,E] = qr(A,1.d-10);
    `norm`_(Q'*A-R)
    `svd`_([A,Q(:,1:rk)])    //span(A) =span(Q(:,1:rk))




See Also
~~~~~~~~


+ `rankqr`_ rank revealing QR factorization
+ `rank`_ rank
+ `svd`_ singular value decomposition
+ `rowcomp`_ row compression, range
+ `colcomp`_ column compression, kernel, nullspace




Used Functions
~~~~~~~~~~~~~~

qr decomposition is based the Lapack routines DGEQRF, DGEQPF, DORGQR
for the real matrices and ZGEQRF, ZGEQPF, ZORGQR for the complex case.

.. _svd: svd.html
.. _rowcomp: rowcomp.html
.. _colcomp: colcomp.html
.. _rankqr: rankqr.html
.. _rank: rank.html


