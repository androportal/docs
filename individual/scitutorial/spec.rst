


spec
====

eigenvalues of matrices and pencils



Calling Sequence
~~~~~~~~~~~~~~~~


::

    evals=spec(A)
    [R,diagevals]=spec(A)
    
    evals=spec(A,B)
    [alpha,beta]=spec(A,B)
    [alpha,beta,Z]=spec(A,B)
    [alpha,beta,Q,Z]=spec(A,B)




Arguments
~~~~~~~~~

:A real or complex square matrix
: :B real or complex square matrix with same dimensions as `A`
: :evals real or complex vector, the eigenvalues
: :diagevals real or complex diagonal matrix (eigenvalues along the
  diagonal)
: :alpha real or complex vector, al./be gives the eigenvalues
: :beta real vector, al./be gives the eigenvalues
: :R real or complex invertible square matrix, matrix right
  eigenvectors.
: :L real or complex invertible square matrix, pencil left
  eigenvectors.
: :R real or complex invertible square matrix, pencil right
  eigenvectors.
:



Description
~~~~~~~~~~~

:evals=spec(A) returns in vector `evals` the eigenvalues.
: :[R,diagevals] =spec(A) returns in the diagonal matrix `evals` the
  eigenvalues and in `R` the right eigenvectors.
: :evals=spec(A,B) returns the spectrum of the matrix pencil A - s B,
  i.e. the roots of the polynomial matrix s B - A.
: :[alpha,beta] = spec(A,B) returns the spectrum of the matrix pencil
  `A- s B` ,i.e. the roots of the polynomial matrix `A - s B`
  .Generalized eigenvalues alpha and beta are so that the matrix `A -
  alpha./beta B` is a singular matrix. The eigenvalues are given by
  `al./be` and if `beta(i) = 0` the ith eigenvalue is at infinity. (For
  `B = eye(A), alpha./beta` is `spec(A)`). It is usually represented as
  the pair (alpha,beta), as there is a reasonable interpretation for
  beta=0, and even for both being zero.
: :[alpha,beta,R] = spec(A,B) returns in addition the matrix `R` of
  generalized right eigenvectors of the pencil.
: :[al,be,L,R] = spec(A,B) returns in addition the matrix `L` and `R`
  of generalized left and right eigenvectors of the pencil.
: :[al,be,Z] = spec(A,E) returns the matrix `Z` of right generalized
  eigen vectors.
: :[al,be,Q,Z] = spec(A,E) returns the matrices `Q` and `Z` of right
  and left generalized eigen vectors.
:

For big full / sparse matrix, you can use the Arnoldi module.



References
~~~~~~~~~~

Matrix eigenvalues computations are based on the Lapack routines


+ DGEEV and ZGEEV when the matrix are not symmetric,
+ DSYEV and ZHEEV when the matrix are symmetric.


A complex symmetric matrix has conjugate offdiagonal terms and real
diagonal terms.

Pencil eigenvalues computations are based on the Lapack routines DGGEV
and ZGGEV.



Real and complex matrices
~~~~~~~~~~~~~~~~~~~~~~~~~

It must be noticed that the type of the output variables, such as
evals or R for example, is not necessarily the same as the type of the
input matrices A and B. In the following paragraph, we analyse the
type of the output variables in the case where one computes the
eigenvalues and eigenvectors of one single matrix A.


+ Real A matrix

    + Symetric The eigenvalues and the eigenvectors are real.
    + Not symmetric The eigenvalues and eigenvectors are complex.

+ Complex A matrix

    + Symetric The eigenvalues are real but the eigenvectors are complex.
    + Not symmetric The eigenvalues and the eigenvectors are complex.





Examples
~~~~~~~~


::

    // MATRIX EIGENVALUES
    A=`diag`_([1,2,3]);
    X=`rand`_(3,3);
    A=`inv`_(X)*A*X;
    spec(A)
    
    x=`poly`_(0,'x');
    pol=`det`_(x*`eye`_()-A)
    `roots`_(pol)
    
    [S,X]=`bdiag`_(A);
    `clean`_(`inv`_(X)*A*X)
    
    // PENCIL EIGENVALUES
    A=`rand`_(3,3);
    [al,be,R] = spec(A,`eye`_(A));
    al./be
    `clean`_(`inv`_(R)*A*R)  //displaying the eigenvalues (generic matrix)
    A=A+%i*`rand`_(A);
    E=`rand`_(A);
    `roots`_(`det`_(A-%s*E))   //complex case




See Also
~~~~~~~~


+ `poly`_ polynomial definition
+ `det`_ determinant
+ `schur`_ [ordered] Schur decomposition of matrix and pencils
+ `bdiag`_ block diagonalization, generalized eigenvectors
+ `colcomp`_ column compression, kernel, nullspace
+ `dsaupd`_ Interface for the Implicitly Restarted Arnoldi Iteration,
  to compute approximations to a few eigenpairs of a real and symmetric
  linear operator
+ `dnaupd`_ Interface for the Implicitly Restarted Arnoldi Iteration,
  to compute approximations to a few eigenpairs of a real linear
  operator


.. _schur: schur.html
.. _dsaupd: dsaupd.html
.. _dnaupd: dnaupd.html
.. _colcomp: colcomp.html
.. _poly: poly.html
.. _det: det.html
.. _bdiag: bdiag.html


