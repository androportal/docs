====
"dnaupd"
====

Scilab Function Last update : 31/10/2006
**dnaupd** - Interface for the Implicitly Restarted Arnoldi Iteration,
to compute approximations to a few eigenpairs of a real linear
operator



Calling Sequence
~~~~~~~~~~~~~~~~

[IDO,RESID,V,IPARAM,IPNTR,WORKD,WORKL,INFO] = dsaupd(ID0,BMAT,N,WHICH,
  NEV,TOL,RESID,NCV,V,IPARAM,IPNTR,WORKD,WORKL,INFO)




Parameters
~~~~~~~~~~


+ **ID0** : Integer. (INPUT/OUTPUT) Reverse communication flag. IDO
  must be zero on the first call to dnaupd. IDO will be set internally
  to indicate the type of operation to be performed. Control is then
  given back to the calling routine which has the responsibility to
  carry out the requested operation and call dnaupd with the result. The
  operand is given in WORKD(IPNTR(1)), the result must be put in
  WORKD(IPNTR(2)). IDO = 0: first call to the reverse communication
  interface IDO = -1: compute Y = OP * X where IPNTR(1) is the pointer
  into WORKD for X, IPNTR(2) is the pointer into WORKD for Y. This is
  for the initialization phase to force the starting vector into the
  range of OP. IDO = 1: compute Y = OP * X where IPNTR(1) is the pointer
  into WORKD for X, IPNTR(2) is the pointer into WORKD for Y. In mode 3
  and 4, the vector B * X is already available in WORKD(ipntr(3)). It
  does not need to be recomputed in forming OP * X. IDO = 2: compute Y =
  B * X where IPNTR(1) is the pointer into WORKD for X, IPNTR(2) is the
  pointer into WORKD for Y. IDO = 3: compute the IPARAM(8) real and
  imaginary parts of the shifts where INPTR(14) is the pointer into
  WORKL for placing the shifts. See Remark 5 below. IDO = 99: done
+ **BMAT** : Character, specifies the type of the matrix B that
  defines the semi-inner product for the operator OP. B = 'I' ->
  standard eigenvalue problem A*x = lambda*x B = 'G' -> generalized
  eigenvalue problem A*x = lambda*B*x
+ **N** : Integer, dimension of the eigenproblem.
+ **WHICH** : string of length 2, Specify which of the Ritz values of
  OP to compute. 'LM' - want the NEV eigenvalues of largest magnitude.
  'SM' - want the NEV eigenvalues of smallest magnitude. 'LR' - want the
  NEV eigenvalues of largest real part. 'SR' - want the NEV eigenvalues
  of smallest real part. 'LI' - want the NEV eigenvalues of largest
  imaginary part. 'SI' - want the NEV eigenvalues of smallest imaginary
  part.
+ **NEV** : Integer, number of eigenvalues of OP to be computed. 0 <
  NEV < N-1.
+ **TOL** : scalar. Stopping criterion: the relative accuracy of the
  Ritz value is considered acceptable if BOUNDS(I) <= TOL*ABS(RITZ(I)).
  If TOL <= 0. is passed the machine precision is set.
+ **RESID** : array of length N (INPUT/OUTPUT) On INPUT: If INFO==0, a
  random initial residual vector is used, else RESID contains the
  initial residual vector, possibly from a previous run. On OUTPUT:
  RESID contains the final residual vector.
+ **NCV** : Integer. Number of columns of the matrix V. NCV must
  satisfy the two inequalities 2 <= NCV-NEV and NCV <= N. This will
  indicate how many Arnoldi vectors are generated at each iteration.
  After the startup phase in which NEV Arnoldi vectors are generated,
  the algorithm generates approximately NCV-NEV Arnoldi vectors at each
  subsequent update iteration. Most of the cost in generating each
  Arnoldi vector is in the matrix-vector operation OP*x. NOTE: 2 <= NCV-
  NEV in order that complex conjugate pairs of Ritz values are kept
  together. (See remark 4 below)
+ **V** : N by NCV array. Contains the final set of Arnoldi basis
  vectors.
+ **IPARAM** : array of length 11. (INPUT/OUTPUT) IPARAM(1) = ISHIFT:
  method for selecting the implicit shifts. The shifts selected at each
  iteration are used to restart the Arnoldi iteration in an implicit
  fashion. ISHIFT = 0: the shifts are provided by the user via reverse
  communication. The real and imaginary parts of the NCV eigenvalues of
  the Hessenberg matrix H are returned in the part of the WORKL array
  corresponding to RITZR and RITZI. See remark 5 below. ISHIFT = 1:
  exact shifts with respect to the current Hessenberg matrix H. This is
  equivalent to restarting the iteration with a starting vector that is
  a linear combination of approximate Schur vectors associated with the
  "wanted" Ritz values. IPARAM(2) = LEVEC No longer referenced.
  IPARAM(3) = MXITER On INPUT: maximum number of Arnoldi update
  iterations allowed. On OUTPUT: actual number of Arnoldi update
  iterations taken. IPARAM(4) = NB: blocksize to be used in the
  recurrence. The code currently works only for NB = 1. IPARAM(5) =
  NCONV: number of "converged" Ritz values. This represents the number
  of Ritz values that satisfy the convergence criterion. IPARAM(6) =
  IUPD No longer referenced. Implicit restarting is ALWAYS used.
  IPARAM(7) = MODE On INPUT determines what type of eigenproblem is
  being solved. Must be 1,2,3,4; See under Description of dsaupd for the
  five modes available. IPARAM(8) = NP When ido = 3 and the user
  provides shifts through reverse communication (IPARAM(1)=0), dsaupd
  returns NP, the number of shifts the user is to provide. 0 < NP <=
  NCV-NEV. See Remark 5 below. IPARAM(9) = NUMOP, IPARAM(10) = NUMOPB,
  IPARAM(11) = NUMREO, OUTPUT: NUMOP = total number of OP*x operations,
  NUMOPB = total number of B*x operations if BMAT='G', NUMREO = total
  number of steps of re-orthogonalization.
+ **IPNTR** : array of length 14. Pointer to mark the starting
  locations in the WORKD and WORKL arrays for matrices/vectors used by
  the Arnoldi iteration. IPNTR(1): pointer to the current operand vector
  X in WORKD. IPNTR(2): pointer to the current result vector Y in WORKD.
  IPNTR(3): pointer to the vector B * X in WORKD when used in the shift-
  and-invert mode. IPNTR(4): pointer to the next available location in
  WORKL that is untouched by the program. IPNTR(5): pointer to the NCV
  by NCV upper Hessenberg matrix H in WORKL. IPNTR(6): pointer to the
  real part of the ritz value array RITZR in WORKL. IPNTR(7): pointer to
  the imaginary part of the ritz value array RITZI in WORKL. IPNTR(8):
  pointer to the Ritz estimates in array WORKL associated with the Ritz
  values located in RITZR and RITZI in WORKL. IPNTR(14): pointer to the
  NP shifts in WORKL. See Remark 5 below. Note: IPNTR(9:13) is only
  referenced by dseupd . See Remark 2. IPNTR(9): pointer to the real
  part of the NCV RITZ values of the original system. IPNTR(10): pointer
  to the imaginary part of the NCV RITZ values of the original system.
  IPNTR(11): pointer to the NCV corresponding error bounds.
  IPNTR(12):pointer to the NCV by NCV upper quasi-triangular Schur
  matrix for H. IPNTR(11): pointer to the NCV by NCV matrix of
  eigenvectors of the upper Hessenberg matrix H. Only referenced by
  dneupd if RVEC = .TRUE. See Remark 2 below.
+ **WORKD** : Double precision work array of length 3*N. (REVERSE
  COMMUNICATION) Distributed array to be used in the basic Arnoldi
  iteration for reverse communication. The user should not use WORKD as
  temporary workspace during the iteration. Upon termination WORKD(1:N)
  contains B*RESID(1:N). If an invariant subspace associated with the
  converged Ritz values is desired, see remark 2 below, subroutine
  dneupd uses this output. See Data Distribution Note below.
+ **WORKL** : work array of length at least 3*NCV**2 + 6*NCV.
  (OUTPUT/WORKSPACE) Private (replicated) array on each PE or array
  allocated on the front end. See Data Distribution Note below.
+ **INFO** : Integer. (INPUT/OUTPUT) If INFO == 0, a randomly initial
  residual vector is used, else RESID contains the initial residual
  vector, possibly from a previous run. Error flag on output. = 0:
  Normal exit. = 1: Maximum number of iterations taken. All possible
  eigenvalues of OP has been found. IPARAM(5) returns the number of
  wanted converged Ritz values. = 2: No longer an informational error.
  Deprecated starting with release 2 of ARPACK. = 3: No shifts could be
  applied during a cycle of the Implicitly restarted Arnoldi iteration.
  One possibility is to increase the size of NCV relative to NEV. See
  remark 4 below. = -1: N must be positive. = -2: NEV must be positive.
  = -3: NCV-NEV >= 2 and less than or equal to N. = -4: The maximum
  number of Arnoldi update iterations allowed must be greater than zero.
  = -5: WHICH must be one of 'LM', 'SM', 'LR', 'SR', 'LI', 'SI' = -6:
  BMAT must be one of 'I' or 'G'. = -7: Length of private work array
  WORKL is not sufficient. = -8: Error return from LAPACK eigenvalue
  calculation; = -9: Starting vector is zero. = -10: IPARAM(7) must be
  1,2,3,4. = -11: IPARAM(7) = 1 and BMAT = 'G' are incompatable. = -12:
  IPARAM(1) must be equal to 0 or 1. = -9999: Could not build an Arnoldi
  factorization. IPARAM(5) returns the size of the current Arnoldi
  factorization. The user is advised to check that enough workspace and
  array storage has been allocated.




Description
~~~~~~~~~~~

Reverse communication interface for the Implicitly Restarted Arnoldi
iteration. This subroutine computes approximations to a few eigenpairs
of a linear operator "OP" with respect to a semi-inner product defined
by a symmetric positive semi-definite real matrix B. B may be the
identity matrix. NOTE: If the linear operator "OP" is real and
symmetric with respect to the real positive semi-definite symmetric
matrix B, i.e. B*OP = (OP`)*B, then subroutine dsaupd should be used
instead.

The computed approximate eigenvalues are called Ritz values and the
corresponding approximate eigenvectors are called Ritz vectors.

dnaupd is usually called iteratively to solve one of the following
problems:

**** Mode 1: A*x = lambda*x. **OP = A , B = I** .
**** Mode 2: A*x = lambda*M*x, M symmetric positive definite **OP =
  inv[M]*A, B = M** . (If M can be factored see remark 3 below)
**** Mode 3: A*x = lambda*M*x, M symmetric positive semi-definite.
  **OP = Real_Part{ inv[A - sigma*M]*M }, B = M** . shift-and-invert
  mode (in real arithmetic) If **OP*x = amu*x** , then **amu = 1/2 * [ 1
  /(lambda-sigma) + 1/(lambda-conjg(sigma))]** . Note: If sigma is real,
  i.e. imaginary part of sigma is zero; **Real_Part{ inv[A - sigma*M]*M
  } == inv[A - sigma*M]*M** **amu == 1/(lambda-sigma)** .
**** Mode 4: A*x = lambda*M*x, M symmetric semi-definite **OP =
  Imaginary_Part{ inv[A - sigma*M]*M } , B = M** . shift-and-invert mode
  (in real arithmetic) If **OP*x = amu*x** , then **amu = 1/2i * [ 1
  /(lambda-sigma) - 1/(lambda-conjg(sigma)) ]** .

Both mode 3 and 4 give the same enhancement to eigenvalues close to
the (complex) shift sigma. However, as lambda goes to infinity, the
operator OP in mode 4 dampens the eigenvalues more strongly than does
OP defined in mode 3.
NOTE: The action of w <- inv[A - sigma*M]*v or w <- inv[M]*v should be
accomplished either by a direct method using a sparse matrix
factorization and solving **[A - sigma*M]*w = v** or **M*w = v** , or
through an iterative method for solving these systems. If an iterative
method is used, the convergence test must be more stringent than the
accuracy requirements for the eigenvalue approximations.



Remarks
~~~~~~~

1. The computed Ritz values are approximate eigenvalues of OP. The
selection of WHICH should be made with this in mind when Mode = 3 and
4. After convergence, approximate eigenvalues of the original problem
may be obtained with the ARPACK subroutine dneupd. 2. If a basis for
the invariant subspace corresponding to the converged Ritz values is
needed, the user must call dneupd immediately following completion of
dnaupd. This is new starting with release 2 of ARPACK. 3. If M can be
factored into a Cholesky factorization M = LL` then Mode = 2 should
not be selected. Instead one should use Mode = 1 with OP =
inv(L)*A*inv(L`). Appropriate triangular linear systems should be
solved with L and L` rather than computing inverses. After
convergence, an approximate eigenvector z of the original problem is
recovered by solving L`z = x where x is a Ritz vector of OP. 4. At
present there is no a-priori analysis to guide the selection of NCV
relative to NEV. The only formal requrement is that NCV > NEV + 2.
However, it is recommended that NCV >= 2*NEV+1. If many problems of
the same type are to be solved, one should experiment with increasing
NCV while keeping NEV fixed for a given test problem. This will
usually decrease the required number of OP*x operations but it also
increases the work and storage required to maintain the orthogonal
basis vectors. The optimal "cross-over" with respect to CPU time is
problem dependent and must be determined empirically. See Chapter 8 of
Reference 2 for further information. 5. When IPARAM(1) = 0, and IDO =
3, the user needs to provide the NP = IPARAM(8) real and imaginary
parts of the shifts in locations

::

    
    
       real part                  imaginary part
       -----------------------    -----------------------
    1  WORKL(IPNTR(14))           WORKL(IPNTR(14)+NP)
    2  WORKL(IPNTR(14)+1)         WORKL(IPNTR(14)+NP+1)
    
    NP  WORKL(IPNTR(14)+NP-1)     WORKL(IPNTR(14)+2*NP-1).
    
    		

Only complex conjugate pairs of shifts may be applied and the pairs
must be placed in consecutive locations. The real part of the
eigenvalues of the current upper Hessenberg matrix are located in
WORKL(IPNTR(6)) through WORKL(IPNTR(6)+NCV-1) and the imaginary part
in WORKL(IPNTR(7)) through WORKL(IPNTR(7)+NCV-1). They are ordered
according to the order defined by WHICH. The complex conjugate pairs
are kept together and the associated Ritz estimates are located in
WORKL(IPNTR(8)), WORKL(IPNTR(8)+1), ... , WORKL(IPNTR(8)+NCV-1).



See Also
~~~~~~~~

` **dsaupd** `_,



Authors
~~~~~~~

** Danny Sorensen, Richard Lehoucq, Phuong Vu ** CRPC / Rice
  University Applied Mathematics Rice University Houston, Texas




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



Used Function
~~~~~~~~~~~~~
Based on ARPACK routine dsaupd
.. _
      : ://./sparse/dsaupd.htm


