


zneupd
======

Interface for the Implicitly Restarted Arnoldi Iteration, to compute
approximations to the converged approximations to eigenvalues of A * z
= lambda * B * z



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [D, Z, RESID, IPARAM, IPNTR, WORKD, WORKL, RWORK, INFO] = zneupd(RVEC, HOWMANY, SELECT, D, Z, SIGMA, WORKev,
    BMAT, N, WHICH, NEV, TOL, RESID, NCV, V, IPARAM, IPNTR, WORKD, WORKL, RWORK, INFO)




Arguments
~~~~~~~~~

:RVEC Integer. (INPUT) Specifies whether a basis for the invariant
subspace corresponding to the converged Ritz value approximations for
the eigenproblem A * z = lambda * B * z is computed.

    + RVEC = 0 Compute Ritz values only.
    + RVEC = 1 Compute Ritz vectors or Schur vectors. See Remarks below.

: :HOWMANY Character. (INPUT) Specifies the form of the basis for the
invariant subspace corresponding to the converged Ritz values that is
to be computed.

    + 'A': Compute NEV Ritz vectors;
    + 'P': Compute NEV Schur vectors;
    + 'S': compute some of the Ritz vectors, specified by the integer
      array SELECT.

: :SELECT Integer array of dimension NCV. (INPUT) If HOWMANY = 'S',
  SELECT specifies the Ritz vectors to be computed. To select the Ritz
  vector corresponding to a Ritz value D(j), SELECT(j) must be set to 1.
  If HOWMANY = 'A' or 'P', SELECT need not be initialized but it is used
  as internal workspace.
: :D Complex*16 array of dimension NEV + 1. (OUTPUT) On exit, D
  contains the Ritz approximations to the eigenvalues lambda for A * z =
  lambda * B * z.
: :Z Complex*16 N by NEV array. (OUTPUT) On exit, If RVEC = 1 and
  HOWMANY = 'A', then the columns of Z represents approximate
  eigenvectors (Ritz vectors) corresponding to the NCONV = IPARAM(5)
  Ritz values for eigensystem A * z = lambda * B * z. If RVEC = 0 or
  HOWMANY = 'P', then Z is NOT REFERENCED. NOTE: If if RVEC = 1 and a
  Schur basis is not required, the array Z may be set equal to first
  NEV+1 columns of the Arnoldi basis array V computed by ZNAUPD. In this
  case the Arnoldi basis will be destroyed and overwritten with the
  eigenvector basis.
: :SIGMA Complex*16. (INPUT) If IPARAM(7) = 3 then SIGMA represents
  the shift. Not referenced if IPARAM(7) = 1 or 2.
: :WORKev Complex*16 work array of dimension 2 * NCV. (WORKSPACE)
:

NOTE: The remaining arguments BMAT, N, WHICH, NEV, TOL, RESID, NCV, V,
IPARAM, IPNTR, WORKD, WORKL, LWORKL, RWORK, INFO must be passed
directly to ZNEUPD following the last call to ZNAUPD.

These arguments MUST NOT BE MODIFIED between the last call to ZNAUPD
and the call to ZNEUPD.

Three of these parameters (V, WORKL and INFO) are also output
parameters.

:V Complex*16 N by NCV array. (INPUT/OUTPUT) Upon INPUT: the NCV
  columns of V contain the Arnoldi basis vectors for OP as constructed
  by ZNAUPD. Upon OUTPUT: If RVEC = 1 the first NCONV = IPARAM(5)
  columns contain approximate Schur vectors that span the desired
  invariant subspace. NOTE: If the array Z has been set equal to first
  NEV+1 columns of the array V and RVEC = 1 and HOWMANY = 'A', then the
  Arnoldi basis held by V has been overwritten by the desired Ritz
  vectors. If a separate array Z has been passed then the first
  NCONV=IPARAM(5) columns of V will contain approximate Schur vectors
  that span the desired invariant subspace.
: :WORKL Double precision work array of length LWORKL.
(OUTPUT/WORKSPACE) WORKL(1:ncv * ncv + 2 * ncv) contains information
obtained in znaupd. They are not changed by zneupd. WORKL(ncv * ncv +
2 * ncv + 1:3 * ncv * ncv + 4 * ncv) holds the untransformed Ritz
values, the untransformed error estimates of the Ritz values, the
upper triangular matrix for H, and the associated matrix
representation of the invariant subspace for H. Note: IPNTR(9:13)
contains the pointer into WORKL for addresses of the above information
computed by zneupd.

    + IPNTR(9): pointer to the NCV RITZ values of the original system.
    + IPNTR(10): Not used
    + IPNTR(11): pointer to the NCV corresponding error estimates.
    + IPNTR(12): pointer to the NCV by NCV upper triangular Schur matrix
      for H.
    + IPNTR(13): pointer to the NCV by NCV matrix of eigenvectors of the
      upper Hessenberg matrix H. Only referenced by zneupd if RVEC = 1 See
      Remark 2 below.

: :INFO Integer. (OUTPUT) Error flag on output.

    + 0: Normal exit.
    + 1: The Schur form computed by LAPACK routine csheqr could not be
      reordered by LAPACK routine ztrsen. Re-enter subroutine zneupd with
      IPARAM(5) = NCV and increase the size of the array D to have dimension
      at least dimension NCV and allocate at least NCV columns for Z. NOTE:
      Not necessary if Z and V share the same space. Please notify the
      authors if this error occurs.
    + -1: N must be positive.
    + -2: NEV must be positive.
    + -3: NCV-NEV >= 1 and less than or equal to N.
    + -5: WHICH must be one of 'LM', 'SM', 'LR', 'SR', 'LI', 'SI'.
    + -6: BMAT must be one of 'I' or 'G'.
    + -7: Length of private work WORKL array is not sufficient.
    + -8: Error return from LAPACK eigenvalue calculation. This should
      never happened.
    + -9: Error return from calculation of eigenvectors. Informational
      error from LAPACK routine ztrevc.
    + -10: IPARAM(7) must be 1, 2, 3.
    + -11: IPARAM(7) = 1 and BMAT = 'G' are incompatible.
    + -12: HOWMANY = 'S' not yet implemented.
    + -13: HOWMANY must be one of 'A' or 'P' if RVEC = .true.
    + -14: ZNAUPD did not find any eigenvalues to sufficient accuracy.
    + -15: ZNEUPD got a different count of the number of converged Ritz
      values than ZNAUPD got. This indicates the user probably made an error
      in passing data from ZNAUPD to ZNEUPD or that the data was modified
      before entering ZNEUPD.

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
ZNAUPD.

ZNAUPD must be called before this routine is called.

These approximate eigenvalues and vectors are commonly called Ritz
values and Ritz vectors respectively. They are referred to as such in
the comments that follow.

The computed orthonormal basis for the invariant subspace
corresponding to these Ritz values is referred to as a Schur basis.

The definition of OP as well as other terms and the relation of
computed Ritz values and vectors of OP with respect to the given
problem A*z = lambda*B*z may be found in the header of ZNAUPD. For a
brief description, see definitions of IPARAM(7), MODE and WHICH in the
documentation of ZNAUPD.



Remarks
~~~~~~~


#. Currently only HOWMNY = 'A' and 'P' are implemented.
#. Schur vectors are an orthogonal representation for the basis of
   Ritz vectors. Thus, their numerical properties are often superior. If
   RVEC = 1 then the relationship A * V(:,1:IPARAM(5)) = V(:,1:IPARAM(5))
   * T, and transpose( V(:,1:IPARAM(5)) ) * V(:,1:IPARAM(5)) = I are
   approximately satisfied. Here T is the leading submatrix of order
   IPARAM(5) of the upper triangular matrix stored workl(ipntr(12)).




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
    d       = `zeros`_(nev + 1, 1) + 0 * %i;
    z       = `zeros`_(nx, nev) + 0* %i;
    resid   = `zeros`_(nx, 1) + 0 * %i; 
    v       = `zeros`_(nx, ncv) + 0 * %i;
    workd   = `zeros`_(3 * nx, 1) + 0 * %i; 
    workev  = `zeros`_(2 * ncv, 1) + 0 * %i;
    rwork   = `zeros`_(ncv, 1);
    workl   = `zeros`_(3 * ncv * ncv + 5 *ncv, 1) + 0 * %i;
    
    // Build the complex test matrix
    A            = `diag`_(10 * `ones`_(nx,1) + %i * `ones`_(nx,1));
    A(1:$-1,2:$) = A(1:$-1,2:$) + `diag`_(6 * `ones`_(nx - 1,1));
    A(2:$,1:$-1) = A(2:$,1:$-1) + `diag`_(-6 * `ones`_(nx - 1,1));
    
    tol    = 0;
    ido    = 0;
    
    ishfts = 1;
    maxitr = 300;
    mode1  = 1;
    
    iparam(1) = ishfts;
    iparam(3) = maxitr;
    iparam(7) = mode1;
    
    sigma = `complex`_(0); 
    info_znaupd = 0;
    // M A I N   L O O P (Reverse communication)
    while(ido <> 99)
      // Repeatedly call the routine ZNAUPD and take actions indicated by parameter IDO until
      // either convergence is indicated or maxitr has been exceeded.
    
      [ido, resid, v, iparam, ipntr, workd, workl, info_znaupd] = `znaupd`_(ido, bmat, nx, which, nev, tol, resid, ncv, v, iparam, ipntr, workd, workl, rwork, info_znaupd);
      
      if(info_znaupd < 0)
        printf('\nError with znaupd, info = %d\n', info_znaupd);
        printf('Check the documentation of znaupd\n\n');
      end
      
      if(ido == -1 | ido == 1)
        // Perform matrix vector multiplication 
        workd(ipntr(2):ipntr(2) + nx - 1) = A * workd(ipntr(1):ipntr(1) + nx - 1);
      end
    end
      
    // Post-Process using ZNEUPD.
    
    rvec    = 1;
    howmany = 'A';
    info_zneupd = 0;
    
    [d, z, resid, iparam, ipntr, workd, workl, rwork, info_zneupd] = zneupd(rvec, howmany, _select, d, z, sigma, workev, bmat, nx, which, nev, tol, resid, ncv, v, ...
                                                                        iparam, ipntr, workd, workl, rwork, info_zneupd);
    
    if(info_zneupd < 0)
      printf('\nError with zneupd, info = %d\n', info_zneupd);
      printf('Check the documentation of zneupd.\n\n');
    end
    
    // Done with program znsimp.
    printf('\nZNSIMP\n');
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


+ `znaupd`_ Interface for the Implicitly Restarted Arnoldi Iteration,
  to compute approximations to a few eigenpairs of a real linear
  operator
+ `dnaupd`_ Interface for the Implicitly Restarted Arnoldi Iteration,
  to compute approximations to a few eigenpairs of a real linear
  operator
+ `dneupd`_ Interface for the Implicitly Restarted Arnoldi Iteration,
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

3. B.N. Parlett and Y. Saad, "Complex Shift and Invert Strategies for
Real Matrices", Linear Algebra and its Applications, vol 88/89, pp
575-595, (1987).



Used Functions
~~~~~~~~~~~~~~

Based on ARPACK routine zneupd

.. _dneupd: dnaupd.html


