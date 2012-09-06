


eigs
====

calculates eigenvalues and eigenvectors of matrices



Calling Sequence
~~~~~~~~~~~~~~~~


::

    d = eigs(A [,B [,k [,sigma [,opts]]]])
    [d, v] = eigs(A [,B [,k [,sigma [,opts]]]])
    
    d = eigs(Af, n [,B [,k [,sigma [,opts]]]])
    [d, v] = eigs(Af, n [,B [,k [,sigma [,opts]]]])




Arguments
~~~~~~~~~

:A a full or sparse, real or complex, symmetric or non-symmetric
  square matrix
: :Af a function
: :n a scalar, defined only if `A` is a function
: :B a sparse, real or complex, square matrix with same dimensions as
  `A`
: :k an integer, number of eigenvalues to be computed
: :sigma a real scalar or a string of length 2
: :opts a structure
: :d a real or complex eigenvalues vector or diagonal matrix
  (eigenvalues along the diagonal)
: :v real or complex eigenvector matrix
:



Description
~~~~~~~~~~~

:d = eigs(A) or d = eigs(Af, n) solves the eigenvalue problem `A * v =
lambda * v`. This calling returns a vector `d` containing the six
largest magnitude eigenvalues. `A` is either a square matrix, which
can be symmetric or non-symmetric, real or complex, full or sparse.
`A` should be represented by a function `Af`. In this instance, a
scalar `n` designating the length of the vector argument, must be
defined. It must have the following header :

::

    function y=A(x)

This function `Af` must return one of the four following expressions :

    + A * x if sigma is not given or is a string other than 'SM'.
    + A \ x if sigma is 0 or 'SM'.
    + (A - sigma * I) \ x for the standard eigenvalue problem, where I is
      the identity matrix.
    + (A - sigma * B) \ x for the generalized eigenvalue problem.

: :[d, v] = eigs(A) or [d, v] = eigs(Af, n) returns a diagonal matrix
  `d` containing the six largest magnitude eigenvalues on the diagonal.
  `v` is a n by six matrix whose columns are the six eigenvectors
  corresponding to the returned eigenvalues.
: :d = eigs(A, B) solves the generalized eigenvalue problem `A * v =
lambda * B * v` with positive, definite matrix `B`.

    + if `B` is not specified, `B = []` is used.
    + if `B` is specified, `B` must be the same size as A.

: :d = eigs(A, B, k) returns in vector `d` the `k` eigenvalues. If `k`
  is not specified, `k = min(n, 6)`, where n is the row number of A.
: :d = eigs(A, B, k, sigma) returns in vector `d` the `k` eigenvalues
determined by `sigma`. `sigma` can be either a real or complex
including 0 scalar or string. If sigma is a string of length 2, it
takes one of the following values :

    + `'LM'` compute the NEV largest in magnitude eigenvalues (by
      default).
    + `'SM'` compute the NEV smallest in magnitude eigenvalues (same as
      sigma = 0).
    + `'LA'` compute the NEV Largest Algebraic eigenvalues, only for real
      symmetric problems.
    + `'SA'` compute the NEV Smallest Algebraic eigenvalues, only for real
      symmetric problems.
    + `'BE'` compute NEV eigenvalues, half from each end of the spectrum,
      only for real symmetric problems.
    + `'LR'` compute the NEV eigenvalues of Largest Real part, only for
      real non-symmetric or complex problems.
    + `'SR'` compute the NEV eigenvalues of Smallest Real part, only for
      real non-symmetric or complex problems.
    + `'LI'` compute the NEV eigenvalues of Largest Imaginary part, only
      for real non-symmetric or complex problems.
    + `'SI'` compute the NEV eigenvalues of Smallest Imaginary part, only
      for real non-symmetric or complex problems.

: :d = eigs(A, B, k, sigma, opts) If the `opts` structure is
specified, different options can be used to compute the `k`
eigenvalues :

    + tol required convergence tolerance. By default, `tol = %eps`.
    + maxiter maximum number of iterations. By default, `maxiter = 300`.
    + ncv number of Lanzcos basis vectors to use. The `ncv` value must be
      greater or equal than `2 * k + 1` for real non-symmetric problems. For
      real symmetric or complex problems, `ncv` must be greater or equal `2
      * k`.
    + resid starting vector whose contains the initial residual vector,
      possibly from a previous run. By default, `resid` is a random initial
      vector.
    + cholB if `chol(B)` is passed rather than `B`. By default, `cholB` is
      0.
    + isreal if `Af` is given, `isreal` can be defined. By default,
      `isreal` is 1. This argument should not be indicated if `A` is a
      matrix.
    + issym if `Af` is given, `issym` can be defined. By default, `isreal`
      is 0. This argument should not be indicated if `A` is a matrix.

:



References
~~~~~~~~~~

This function is based on the ARPACK package written by R. Lehoucq, K.
Maschhoff, D. Sorensen, and C. Yang.


+ DSAUPD and DSEUPD routines for real symmetric problems,
+ DNAUPD and DNEUPD routines for real non-symmetric problems.
+ ZNAUPD and ZNEUPD routines for complex problems.




Example for real symmetric problems
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    A            = `diag`_(10*`ones`_(10,1));
    A(1:$-1,2:$) = A(1:$-1,2:$) + `diag`_(6*`ones`_(9,1));
    A(2:$,1:$-1) = A(2:$,1:$-1) + `diag`_(6*`ones`_(9,1));
    
    B = `eye`_(10,10);
    k = 8;
    sigma = 'SM';
    opts.cholB = 1;
    
    d = eigs(A)
    [d, v] = eigs(A)
    
    d = eigs(A, B, k, sigma)
    [d, v] = eigs(A, B, k, sigma)
    
    d = eigs(A, B, k, sigma, opts)
    [d, v] = eigs(A, B, k, sigma, opts)
    
    // With sparses
    AS = `sparse`_(A);
    BS = `sparse`_(B);
    
    d = eigs(AS)
    [d, v] = eigs(AS)
    
    d = eigs(AS, BS, k, sigma)
    [d, v] = eigs(AS, BS, k, sigma)
    
    d = eigs(AS, BS, k, sigma, opts)
    [d, v] = eigs(AS, BS, k, sigma, opts)
    
    // With function
    clear opts
    function y=fn(x)
       y = A * x;
    endfunction
    
    opts.isreal = 1;
    opts.issym = 1;
    
    d = eigs(fn, 10, [], k, 'LM', opts)
    
    function y=fn(x)
       y = A \ x;
    endfunction
    
    d = eigs(fn, 10, [], k, 'SM', opts)
    
    function y=fn(x)
       y = (A - 4 * `eye`_(10,10)) \ x;
    endfunction
    
    d = eigs(fn, 10, [], k, 4, opts)




Example for real non-symmetric problems
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    A            = `diag`_(10*`ones`_(10,1));
    A(1:$-1,2:$) = A(1:$-1,2:$) + `diag`_(6*`ones`_(9,1));
    A(2:$,1:$-1) = A(2:$,1:$-1) + `diag`_(-6*`ones`_(9,1));
    
    B = `eye`_(10,10);
    k = 8;
    sigma = 'SM';
    opts.cholB = 1;
    
    d = eigs(A)
    [d, v] = eigs(A)
    
    d = eigs(A, B, k, sigma)
    [d, v] = eigs(A, B, k, sigma) 
    
    d = eigs(A, B, k, sigma, opts)
    [d, v] = eigs(A, B, k, sigma, opts)
    
    // With sparses
    AS = `sparse`_(A);
    BS = `sparse`_(B);
    
    d = eigs(AS)
    [d, v] = eigs(AS)
    d = eigs(AS, BS, k, sigma)
    [d, v] = eigs(AS, BS, k, sigma)
    
    d = eigs(AS, BS, k, sigma, opts)
    [d, v] = eigs(AS, BS, k, sigma, opts)
    
    // With function
    clear opts
    function y=fn(x)
    y = A * x;
    endfunction
    
    opts.isreal = 1;
    opts.issym = 0;
    
    d = eigs(fn, 10, [], k, 'LM', opts)
    
    function y=fn(x)
    y = A \ x;
    endfunction
    
    d = eigs(fn, 10, [], k, 'SM', opts)
    
    function y=fn(x)
    y = (A - 4 * `eye`_(10,10)) \ x;
    endfunction
    
    d = eigs(fn, 10, [], k, 4, opts)




Example for complex problems
~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    A            = `diag`_(10*`ones`_(10,1) + %i * `ones`_(10,1));
    A(1:$-1,2:$) = A(1:$-1,2:$) + `diag`_(6*`ones`_(9,1));
    A(2:$,1:$-1) = A(2:$,1:$-1) + `diag`_(-6*`ones`_(9,1));
    
    B = `eye`_(10,10);
    k = 8;
    sigma = 'LM';
    opts.cholB = 1;
    
    d = eigs(A)
    [d, v] = eigs(A)
    
    d = eigs(A, B, k, sigma)
    [d, v] = eigs(A, B, k, sigma)
    d = eigs(A, B, k, sigma, opts)
    [d, v] = eigs(A, B, k, sigma, opts)
    
    // With sparses
    AS = `sparse`_(A);
    BS = `sparse`_(B);
    
    d = eigs(AS)
    [d, v] = eigs(AS)
    
    d = eigs(AS, BS, k, sigma)
    [d, v] = eigs(AS, BS, k, sigma)
    
    d = eigs(AS, BS, k, sigma, opts)
    [d, v] = eigs(AS, BS, k, sigma, opts)
    
    // With function
    clear opts
    function y=fn(x)
    y = A * x;
    endfunction
    
    opts.isreal = 0;
    opts.issym = 0;
    
    d = eigs(fn, 10, [], k, 'LM', opts)
    
    function y=fn(x)
    y = A \ x;
    endfunction
    
    d = eigs(fn, 10, [], k, 'SM', opts)
    
    function y=fn(x)
    y = (A - 4 * `eye`_(10,10)) \ x;
    endfunction
    
    d = eigs(fn, 10, [], k, 4, opts)




See Also
~~~~~~~~


+ `spec`_ eigenvalues of matrices and pencils


.. _spec: spec.html


