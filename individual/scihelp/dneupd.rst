


dneupd
======

Interface for the Implicitly Restarted Arnoldi Iteration, to compute
the converged approximations to eigenvalues of A * z = lambda * B * z
approximations to a few eigenpairs of a real linear operator



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Dr, Di, Z, RESID, V, IPARAM, IPNTR, WORKD, WORKL, INFO] = dneupd(RVEC, HOWMANY, SELECT, Dr, Di, Z, SIGMAr, SIGMAi, WORKev,
    BMAT, N, WHICH, NEV, TOL, RESID, NCV, V, IPARAM, IPNTR, WORKD, WORKL, INFO)




Arguments
~~~~~~~~~

:RVEC Integer. (INPUT) Specifies whether a basis for the invariant
subspace corresponding to the converged Ritz value approximations for
the eigenproblem A * z = lambda * B * z is computed.

    + RVEC = 0 Compute Ritz values only.
    + RVEC = 1 Compute the Ritz vectors or Schur vectors.
See Remarks below.
: :HOWMANY Character. (INPUT) Specifies the form of the basis for the
invariant subspace corresponding to the converged Ritz values that is
to be computed.

    + 'A': Compute NEV Ritz vectors;
    + 'P': Compute NEV Schur vectors;
    + 'S': compute some of the Ritz vectors, specified by the integer
      array SELECT.

: :SELECT Integer array of dimension NCV. (INPUT) If HOWMANY = 'S',
  SELECT specifies the Ritz vectors to be computed. To select the Ritz
  vector corresponding to a Ritz value (DR(j), DI(j)), SELECT(j) must be
  set to 1. If HOWMANY = 'A' or 'P', SELECT is used as internal
  workspace.
: :DR Double precision array of dimension NEV + 1. (OUTPUT) If
  IPARAM(7) = 1, 2 or 3 and SIGMAI = 0.0 then on exit: DR contains the
  real part of the Ritz approximations to the eigenvalues of A * z =
  lambda * B * z. If IPARAM(7) = 3, 4 and SIGMAI is not equal to zero,
  then on exit: DR contains the real part of the Ritz values of OP
  computed by DNAUPD. A further computation must be performed by the
  user to transform the Ritz values computed for OP by DNAUPD to those
  of the original system A * z = lambda * B * z. See remark 3 below.
: :DI Double precision array of dimension NEV + 1. (OUTPUT) On exit,
  DI contains the imaginary part of the Ritz value approximations to the
  eigenvalues of A * z = lambda * B * z associated with DR. NOTE: When
  Ritz values are complex, they will come in complex conjugate pairs. If
  eigenvectors are requested, the corresponding Ritz vectors will also
  come in conjugate pairs and the real and imaginary parts of these are
  represented in two consecutive columns of the array Z (see below).
: :Z Double precision N by NEV + 1 array if RVEC = 1 and HOWMANY =
  'A'. (OUTPUT) On exit, if RVEC = 1 and HOWMANY = 'A', then the columns
  of Z represent approximate eigenvectors (Ritz vectors) corresponding
  to the NCONV = IPARAM(5) Ritz values for eigensystem A * z = lambda *
  B * z. The complex Ritz vector associated with the Ritz value with
  positive imaginary part is stored in two consecutive columns. The
  first column holds the real part of the Ritz vector and the second
  column holds the imaginary part. The Ritz vector associated with the
  Ritz value with negative imaginary part is simply the complex
  conjugate of the Ritz vector associated with the positive imaginary
  part. If RVEC = 0 or HOWMANY = 'P', then Z is not referenced. NOTE: If
  if RVEC = 1 and a Schur basis is not required, the array Z may be set
  equal to first NEV+1 columns of the Arnoldi basis array V computed by
  DNAUPD . In this case the Arnoldi basis will be destroyed and
  overwritten with the eigenvector basis.
: :SIGMAR Double precision (INPUT) If IPARAM(7) = 3 or 4, represents
  the real part of the shift. Not referenced if IPARAM(7) = 1 or 2.
: :SIGMAI Double precision (INPUT) If IPARAM(7) = 3 or 4, represents
  the imaginary part of the shift. Not referenced if IPARAM(7) = 1 or 2.
  See remark 3 below.
: :WORKEV Double precision work array of dimension 3 * NCV.
  (WORKSPACE)
:

NOTE: The remaining arguments BMAT, N, WHICH, NEV, TOL, RESID, NCV, V,
IPARAM, IPNTR, WORKD, WORKL, LWORKL, INFO must be passed directly to
DNEUPD following the last call to DNAUPD .

These arguments MUST NOT BE MODIFIED between the last call to DNAUPD
and the call to DNEUPD .

Three of these parameters (V, WORKL, INFO) are also output parameters.

:V Double precision N by NCV array. (INPUT/OUTPUT) Upon INPUT: the NCV
  columns of V contain the Arnoldi basis vectors for OP as constructed
  by DNAUPD. Upon OUTPUT: If RVEC = 1 the first NCONV = IPARAM(5)
  columns contain approximate Schur vectors that span the desired
  invariant subspace. See Remark 2 below. NOTE: If the array Z has been
  set equal to first NEV+1 columns of the array V and RVEC = 1 and
  HOWMANY= 'A', then the Arnoldi basis held by V has been overwritten by
  the desired Ritz vectors. If a separate array Z has been passed then
  the first NCONV = IPARAM(5) columns of V will contain approximate
  Schur vectors that span the desired invariant subspace.
: :WORKL Double precision work array of length LWORKL.
(OUTPUT/WORKSPACE) WORKL(1:ncv*ncv+3*ncv) contains information
obtained in dnaupd . They are not changed by dneupd .
WORKL(ncv*ncv+3*ncv+1:3*ncv*ncv+6*ncv) holds the real and imaginary
part of the untransformed Ritz values, the upper quasi-triangular
matrix for H, and the associated matrix representation of the
invariant subspace for H. Note: IPNTR(9:13) contains the pointer into
WORKL for addresses of the above information computed by dneupd .

    + IPNTR(9): pointer to the real part of the NCV RITZ values of the
      original system.
    + IPNTR(10): pointer to the imaginary part of the NCV RITZ values of
      the original system.
    + IPNTR(11): pointer to the NCV corresponding error bounds.
    + IPNTR(12): pointer to the NCV by NCV upper quasi-triangular Schur
      matrix for H.
    + IPNTR(13): pointer to the NCV by NCV matrix of eigenvectors of the
      upper Hessenberg matrix H. Only referenced by dneupd if RVEC = 1 See
      Remark 2 below.

: :INFO Integer. (OUTPUT). Error flag on output.

    + 0: Normal exit.
    + 1: The Schur form computed by LAPACK routine dlahqr could not be
      reordered by LAPACK routine dtrsen . Re-enter subroutine dneupd with
      IPARAM(5)=NCV and increase the size of the arrays DR and DI to have
      dimension at least dimension NCV and allocate at least NCV columns for
      Z. NOTE: Not necessary if Z and V share the same space. Please notify
      the authors if this error occurs.
    + -1: N must be positive.
    + -2: NEV must be positive.
    + -3: NCV-NEV >= 2 and less than or equal to N.
    + -5: WHICH must be one of 'LM', 'SM', 'LR', 'SR', 'LI', 'SI'.
    + -6: BMAT must be one of 'I' or 'G'.
    + -7: Length of private work WORKL array is not sufficient.
    + -8: Error return from calculation of a real Schur form.
      Informational error from LAPACK routine dlahqr.
    + -9: Error return from calculation of eigenvectors. Informational
      error from LAPACK routine dtrevc.
    + -10: IPARAM(7) must be 1, 2, 3, 4.
    + -11: IPARAM(7) = 1 and BMAT = 'G' are incompatible.
    + -12: HOWMANY = 'S' not yet implemented.
    + -13: HOWMANY must be one of 'A' or 'P' if RVEC = 1.
    + -14: DNAUPD did not find any eigenvalues to sufficient accuracy.
    + -15: DNEUPD got a different count of the number of converged Ritz
      values than DNAUPD got. This indicates the user probably made an error
      in passing data from DNAUPD to DNEUPD or that the data was modified
      before entering DNEUPD.

:



Description
~~~~~~~~~~~

This subroutine returns the converged approximations to eigenvalues of
A * z = lambda * B * z and (optionally):


#. The corresponding approximate eigenvectors;
#. An orthonormal basis for the associated approximate invariant
   subspace;
#. Both.


There is negligible additional cost to obtain eigenvectors. An
orthonormal basis is always computed.

There is an additional storage cost of n*nev if both are requested (in
this case a separate array Z must be supplied).

The approximate eigenvalues and eigenvectors of A * z = lambda * B * z
are derived from approximate eigenvalues and eigenvectors of of the
linear operator OP prescribed by the MODE selection in the call to
DNAUPD. DNAUPD must be called before this routine is called.

These approximate eigenvalues and vectors are commonly called Ritz
values and Ritz vectors respectively. They are referred to as such in
the comments that follow.

The computed orthonormal basis for the invariant subspace
corresponding to these Ritz values is referred to as a Schur basis.

See documentation in the header of the subroutine DNAUPD for
definition of OP as well as other terms and the relation of computed
Ritz values and Ritz vectors of OP with respect to the given problem A
* z = lambda * B * z.

For a brief description, see definitions of IPARAM(7), MODE and WHICH
in the documentation of DNAUPD .



Remarks
~~~~~~~


#. Currently only HOWMNY = 'A' and 'P' are implemented. Let trans(X)
   denote the transpose of X.
#. Schur vectors are an orthogonal representation for the basis of
   Ritz vectors. Thus, their numerical properties are often superior. If
   RVEC = 1 then the relationship A * V(:,1:IPARAM(5)) = V(:,1:IPARAM(5))
   * T, and trans(V(:,1:IPARAM(5))) * V(:,1:IPARAM(5)) = I are
   approximately satisfied. Here T is the leading submatrix of order
   IPARAM(5) of the real upper quasi-triangular matrix stored
   workl(ipntr(12)). That is, T is block upper triangular with 1-by-1 and
   2-by-2 diagonal blocks; each 2-by-2 diagonal block has its diagonal
   elements equal and its off-diagonal elements of opposite sign.
   Corresponding to each 2-by-2 diagonal block is a complex conjugate
   pair of Ritz values. The real Ritz values are stored on the diagonal
   of T.
#. If IPARAM(7) = 3 or 4 and SIGMAI is not equal zero, then the user
   must form the IPARAM(5) Rayleigh quotients in order to transform the
   Ritz values computed by DNAUPD for OP to those of A * z = lambda * B *
   z. Set RVEC = 1 and HOWMNY = 'A', and compute trans(Z(:,I)) * A *
   Z(:,I) if DI(I) = 0. If DI(I) is not equal to zero and DI(I+1) = -
   D(I), then the desired real and imaginary parts of the Ritz value are
   trans(Z(:,I)) * A * Z(:,I) + trans(Z(:,I+1)) * A * Z(:,I+1),
   trans(Z(:,I)) * A * Z(:,I+1) - trans(Z(:,I+1)) * A * Z(:,I),
   respectively. Another possibility is to set RVEC = 1 and HOWMANY = 'P'
   and compute trans(V(:,1:IPARAM(5))) * A * V(:,1:IPARAM(5)) and then an
   upper quasi-triangular matrix of order IPARAM(5) is computed. See
   remark 2 above.




Example
~~~~~~~


::

    // The following sets dimensions for this problem.
    
    nx    = 10;
    
    nev   = 3;
    ncv   = 6;
    bmat  = 'I';
    which = 'LM';
    
    // Local Arrays
    
    iparam  = `zeros`_(11, 1);
    ipntr   = `zeros`_(14, 1);
    _select = `zeros`_(ncv, 1);
    dr       = `zeros`_(nev + 1, 1);
    di      = `zeros`_(nev + 1, 1);
    z       = `zeros`_(nx, nev + 1);
    resid   = `zeros`_(nx, 1); 
    v       = `zeros`_(nx, ncv);
    workd   = `zeros`_(3 * nx, 1); 
    workev  = `zeros`_(3 * ncv, 1);
    workl   = `zeros`_(3 * ncv * ncv + 6 * ncv, 1);
    
    // Build the test matrix
    
    A            = `diag`_(10 * `ones`_(nx, 1));
    A(1:$-1,2:$) = A(1:$-1,2:$) + `diag`_(6 * `ones`_(nx-1,1));
    A(2:$,1:$-1) = A(2:$,1:$-1) + `diag`_(-6 * `ones`_(nx-1,1));
    
    tol    = 0;
    ido    = 0;
    
    ishfts = 1;
    maxitr = 300;
    mode1  = 1;
    
    iparam(1) = ishfts;
    iparam(3) = maxitr;
    iparam(7) = mode1;
    
    sigmar = 0; // the real part of the shift
    sigmai = 0; // the imaginary part of the shift
    info_dnaupd = 0;
    
    // M A I N   L O O P (Reverse communication)
    
    while(ido <> 99)
      // Repeatedly call the routine DNAUPD and take actions indicated by parameter IDO until
      // either convergence is indicated or maxitr has been exceeded.
    
      [ido, resid, v, iparam, ipntr, workd, workl, info_dnaupd] = `dnaupd`_(ido, bmat, nx, which, nev, tol, resid, ncv, v, iparam, ipntr, workd, workl, info_dnaupd);
      
      if(info_dnaupd < 0)
        printf('\nError with dnaupd, info = %d\n',info_dnaupd);
        printf('Check the documentation of dnaupd\n\n');
      end
      
      if(ido == -1 | ido == 1)
        // Perform matrix vector multiplication 
        workd(ipntr(2):ipntr(2) + nx -1) = A * workd(ipntr(1):ipntr(1) + nx - 1);
      end
    end
    
    // Post-Process using DNEUPD.
    rvec    = 1;
    howmany = 'A';
    info_dneupd = 0;
    
    [dr, di, z, resid, v, iparam, ipntr, workd, workl, info_dneupd] = dneupd(rvec, howmany, _select, dr, di, z, sigmar, sigmai, workev, ...
                                                                           bmat, nx, which, nev, tol, resid, ncv, v, ...
                                                                           iparam, ipntr, workd, workl, info_dneupd);
                                                                           
    if(info_dneupd < 0)
      printf('\nError with dneupd, info = %d\n', info_dneupd);
      printf('Check the documentation of dneupd.\n\n');
    end
    
    printf('\nDNSIMP\n');
    printf('======\n');
    printf('\n');
    printf('Size of the matrix is %d\n', nx);
    printf('The number of Ritz values requested is %d\n', nev);
    printf('The number of Arnoldi vectors generated (NCV) is %d\n', ncv);
    printf('What portion of the spectrum: %s\n', which);
    printf('The number of Implicit Arnoldi update iterations taken is %d\n', iparam(3));
    printf('The number of OP*x is %d\n', iparam(9));
    printf('The convergence criterion is %d\n', tol);




See Also
~~~~~~~~


+ `dsaupd`_ Interface for the Implicitly Restarted Arnoldi Iteration,
  to compute approximations to a few eigenpairs of a real and symmetric
  linear operator
+ `dnaupd`_ Interface for the Implicitly Restarted Arnoldi Iteration,
  to compute approximations to a few eigenpairs of a real linear
  operator




Bibliography
~~~~~~~~~~~~

1. D.C. Sorensen, "Implicit Application of Polynomial Filters in a
k-Step Arnoldi Method", SIAM J. Matr. Anal. Apps., 13 (1992), pp
357-385.

2. R.B. Lehoucq, "Analysis and Implementation of an Implicitly
Restarted Arnoldi Iteration", Rice University Technical Report
TR95-13, Department of Computational and Applied Mathematics.

3. B.N. Parlett, "The Symmetric Eigenvalue Problem". Prentice-Hall,
1980.

4. B.N. Parlett, B. Nour-Omid, "Towards a Black Box Lanczos Program",
Computer Physics Communications, 53 (1989), pp 169-179.

5. B. Nour-Omid, B.N. Parlett, T. Ericson, P.S. Jensen, "How to
Implement the Spectral Transformation", Math. Comp., 48 (1987), pp
663-673.

6. R.G. Grimes, J.G. Lewis and H.D. Simon, "A Shifted Block Lanczos
Algorithm for Solving Sparse Symmetric Generalized Eigenproblems",
SIAM J. Matr. Anal. Apps., January (1993).

7. L. Reichel, W.B. Gragg, "Algorithm 686: FORTRAN Subroutines for
Updating the QR decomposition", ACM TOMS, December 1990, Volume 16
Number 4, pp 369-377.

8. R.B. Lehoucq, D.C. Sorensen, "Implementation of Some Spectral
Transformations in a k-Step Arnoldi Method". In Preparation.



Used Functions
~~~~~~~~~~~~~~

Based on ARPACK routine dneupd

.. _dsaupd: dsaupd.html
.. _dnaupd: dnaupd.html


