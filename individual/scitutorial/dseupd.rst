


dseupd
======

Interface for the Implicitly Restarted Arnoldi Iteration, to compute
approximations to the converged approximations to eigenvalues of A * z
= lambda * B * z



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [D, Z, RESID, V, IPARAM, IPNTR, WORKD, WORKL, INFO] = dseupd(RVEC, HOWMANY, SELECT, D, Z, SIGMA, BMAT, N, WHICH,
    NEV, TOL, RESID, NCV, V, IPARAM, IPNTR, WORKD, WORKL, INFO)




Arguments
~~~~~~~~~

:RVEC Integer. (INPUT) Specifies whether Ritz vectors corresponding to
the Ritz value approximations to the eigenproblem A * z = lambda * B *
z are computed.

    + RVEC = 0 Compute Ritz values only.
    + RVEC = 1 Compute Ritz vectors.

: :HOWMNY Character*1. (INPUT) Specifies how many Ritz vectors are
wanted and the form of Z the matrix of Ritz vectors. See remark 1
below.

    + 'A': compute NEV Ritz vectors;
    + 'S': compute some of the Ritz vectors, specified by the integer
      array SELECT.

: :SELECT Integer array of dimension NCV. (INPUT/WORKSPACE) If HOWMANY
  = 'S', SELECT specifies the Ritz vectors to be computed. To select the
  Ritz vector corresponding to a Ritz value D(j), SELECT(j) must be set
  to 1. If HOWMANY = 'A' , SELECT is used as a workspace for reordering
  the Ritz values.
: :D Double precision array of dimension NEV. (OUTPUT) On exit, D
  contains the Ritz value approximations to the eigenvalues of A * z =
  lambda * B * z. The values are returned in ascending order. If
  IPARAM(7) = 3, 4, 5 then D represents the Ritz values of OP computed
  by dsaupd transformed to those of the original eigensystem A * z =
  lambda * B * z. If IPARAM(7) = 1, 2 then the Ritz values of OP are the
  same as the those of A * z = lambda * B * z.
: :Z Double precision N by NEV array. If HOWMNY = 'A'. (OUTPUT) On
  exit, Z contains the B-orthonormal Ritz vectors of the eigensystemA *
  z = lambda * B * z corresponding to the Ritz value approximations. If
  RVEC = 0 then Z is not referenced. NOTE: The array Z may be set equal
  to first NEV columns of the Arnoldi/Lanczos basis array V computed by
  DSAUPD .
: :SIGMA Double precision (INPUT) If IPARAM(7) = 3, 4, 5 represents
  the shift. Not referenced if IPARAM(7) = 1 or 2.
:

NOTE: The remaining arguments BMAT, N, WHICH, NEV, TOL, RESID, NCV, V,
IPARAM, IPNTR, WORKD, WORKL, LWORKL, INFO must be passed directly to
DSEUPD following the last call to DSAUPD .

These arguments MUST NOT BE MODIFIED between the last call to DSAUPD
and the call to DSEUPD.

Two of these parameters (WORKL, INFO) are also output parameters.

:WORKL Double precision work array of length LWORKL.
(OUTPUT/WORKSPACE) WORKL(1:4*ncv) contains information obtained in
dsaupd. They are not changed by dseupd. WORKL(4*ncv+1:ncv*ncv+8*ncv)
holds the untransformed Ritz values, the computed error estimates, and
the associated eigenvector matrix of H. Note: IPNTR(8:10) contains the
pointer into WORKL for addresses of the above information computed by
dseupd .

    + IPNTR(8): pointer to the NCV RITZ values of the original system.
    + IPNTR(9): pointer to the NCV corresponding error bounds.
    + IPNTR(10): pointer to the NCV by NCV matrix of eigenvectors of the
      tridiagonal matrix T. Only referenced by dseupd if RVEC = 1 See
      Remarks.

: :INFO Integer. (OUTPUT) Error flag on output.

    + 0: Normal exit.
    + -1: N must be positive.
    + -2: NEV must be positive.
    + -3: NCV must be greater than NEV and less than or equal to N.
    + -5: WHICH must be one of 'LM', 'SM', 'LA', 'SA' or 'BE'.
    + -6: BMAT must be one of 'I' or 'G'.
    + -7: Length of private work WORKL array is not sufficient.
    + -8: Error return from trid. eigenvalue calculation; Information
      error from LAPACK routine dsteqr.
    + -9: Starting vector is zero.
    + -10: IPARAM(7) must be 1, 2, 3, 4, 5.
    + -11: IPARAM(7) = 1 and BMAT = 'G' are incompatible.
    + -12: NEV and WHICH = 'BE' are incompatible.
    + -14: DSAUPD did not find any eigenvalues to sufficient accuracy.
    + -15: HOWMNY must be one of 'A' or 'S' if RVEC = 1.
    + -16: HOWMNY = 'S' not yet implemented.
    + -17: DSEUPD got a different count of the number of converged Ritz
      values than DSAUPD got. This indicates the user probably made an error
      in passing data from DSAUPD to DSEUPD or that the data was modified
      before entering DSEUPD.

:



Description
~~~~~~~~~~~

This subroutine returns the converged approximations to eigenvalues of
A * z = lambda * B * z and (optionally):


#. the corresponding approximate eigenvectors,
#. an orthonormal (Lanczos) basis for the associated approximate
   invariant subspace,
#. Both.


There is negligible additional cost to obtain eigenvectors. An
orthonormal (Lanczos) basis is always computed. There is an additional
storage cost of n*nev if both are requested (in this case a separate
array Z must be supplied).

These quantities are obtained from the Lanczos factorization computed
by DSAUPD for the linear operator OP prescribed by the MODE selection
(see IPARAM(7) in DSAUPD documentation.) DSAUPD must be called before
this routine is called.

These approximate eigenvalues and vectors are commonly called Ritz
values and Ritz vectors respectively. They are referred to as such in
the comments that follow.

The computed orthonormal basis for the invariant subspace
corresponding to these Ritz values is referred to as a Lanczos basis.

See documentation in the header of the subroutine DSAUPD for a
definition of OP as well as other terms and the relation of computed
Ritz values and vectors of OP with respect to the given problem A * z
= lambda * B * z.

The approximate eigenvalues of the original problem are returned in
ascending algebraic order.

The user may elect to call this routine once for each desired Ritz
vector and store it peripherally if desired. There is also the option
of computing a selected set of these vectors with a single call.



Remarks
~~~~~~~

1. The converged Ritz values are always returned in increasing
(algebraic) order. c 2. Currently only HOWMNY = 'A' is implemented. It
is included at this stage for the user who wants to incorporate it.



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
    d       = `zeros`_(nev, 1);
    z       = `zeros`_(nx, nev);
    resid   = `zeros`_(nx, 1); 
    v       = `zeros`_(nx, ncv);
    workd   = `zeros`_(3 * nx, 1); 
    workl   = `zeros`_(ncv * ncv + 8 * ncv, 1);
    
    // Build the symmetric test matrix
    
    A            = `diag`_(10 * `ones`_(nx,1));
    A(1:$-1,2:$) = A(1:$-1,2:$) + `diag`_(6 * `ones`_(nx-1,1));
    A(2:$,1:$-1) = A(2:$,1:$-1) + `diag`_(6 * `ones`_(nx-1,1));
    
    tol    = 0;
    ido    = 0;
    
    ishfts = 1;
    maxitr = 300;
    mode1  = 1;
    
    iparam(1) = ishfts;
    iparam(3) = maxitr;
    iparam(7) = mode1;
    
    sigma = 0; // the real part of the shift
    info_dsaupd = 0;
    
    // M A I N   L O O P (Reverse communication)
    
    while(ido <> 99)
      // Repeatedly call the routine DSAUPD and take actions indicated by parameter IDO until
      // either convergence is indicated or maxitr has been exceeded.
    
      [ido, resid, v, iparam, ipntr, workd, workl, info_dsaupd] = `dsaupd`_(ido, bmat, nx, which, nev, tol, resid, ncv, v, iparam, ipntr, workd, workl, info_dsaupd);
      
      if(info_dsaupd < 0)
        printf('\nError with dsaupd, info = %d\n',info_dsaupd);
        printf('Check the documentation of dsaupd\n\n');
      end
      
      if(ido == -1 | ido == 1)
        // Perform matrix vector multiplication 
        workd(ipntr(2):ipntr(2) + nx - 1) = A * workd(ipntr(1):ipntr(1) + nx - 1);
      end
    end
    
    // Post-Process using DSEUPD.
    rvec    = 1;
    howmany = 'A';
    info_dseupd = 0;
    
    [d, z, resid, v, iparam, ipntr, workd, workl, info_dseupd] = dseupd(rvec, howmany, _select, d, z, sigma, bmat, nx, which, nev, tol, resid, ncv, v, ...
                                                                        iparam, ipntr, workd, workl, info_dseupd);
    
    if(info_dseupd < 0)
      printf('\nError with dseupd, info = %d\n', info_dseupd);
      printf('Check the documentation of dseupd.\n\n');
    end
    
    // Done with program dssimp.
    printf('\nDSSIMP\n');
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
+ `dneupd`_ Interface for the Implicitly Restarted Arnoldi Iteration,
  to compute the converged approximations to eigenvalues of A * z =
  lambda * B * z approximations to a few eigenpairs of a real linear
  operator




Bibliography
~~~~~~~~~~~~

1. D.C. Sorensen, "Implicit Application of Polynomial Filters in
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

Based on ARPACK routine dseupd

.. _dneupd: dneupd.html
.. _dsaupd: dsaupd.html


