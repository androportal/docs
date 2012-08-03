====
"sident"
====

Scilab Function Last update : April 1999
**sident** - discrete-time state-space realization and Kalman gain



Calling Sequence
~~~~~~~~~~~~~~~~

[(A,C)(,B(,D))(,K,Q,Ry,S)(,rcnd)] = sident(meth,job,s,n,l,R(,tol,t,Ai,
Ci,printw))




Parameters
~~~~~~~~~~


+ **meth** : integer option to determine the method to use:

    + **= ** 1 : MOESP method with past inputs and outputs;
    + **= ** 2 : N4SID method;
    + **= ** 3 : combined method: A and C via MOESP, B and D via N4SID.

+ **job** : integer option to determine the calculation to be
  performed:

    + **= ** 1 : compute all system matrices, A, B, C, D;
    + **= ** 2 : compute the matrices A and C only;
    + **= ** 3 : compute the matrix B only;
    + **= ** 4 : compute the matrices B and D only.

+ **s** : the number of block rows in the processed input and output
  block Hankel matrices. s > 0.
+ **n** : integer, the order of the system
+ **l** : integer, the number of the system outputs
+ **R** : the 2*(m+l)*s-by-2*(m+l)*s part of R contains the processed
  upper triangular factor R from the QR factorization of the
  concatenated block-Hankel matrices, and further details needed for
  computing system matrices.
+ **tol** : (optional) tolerance used for estimating the rank of
  matrices. If tol > 0, then the given value of tol is used as a lower
  bound for the reciprocal condition number; an m-by-n matrix whose
  estimated condition number is less than 1/tol is considered to be of
  full rank. Default: m*n*epsilon_machine where epsilon_machine is the
  relative machine precision.
+ **t** : (optional) the total number of samples used for calculating
  the covariance matrices. Either t = 0, or t >= 2*(m+l)*s. This
  parameter is not needed if the covariance matrices and/or the Kalman
  predictor gain matrix are not desired. If t = 0, then K, Q, Ry, and S
  are not computed. Default: t = 0.
+ **Ai** : real matrix
+ **Ci** : real matrix
+ **printw** : (optional) switch for printing the warning messages.

    + **= ** 1: print warning messages;
    + **= ** 0: do not print warning messages.
  Default: printw = 0.
+ **A** : real matrix
+ **C** : real matrix
+ **B** : real matrix
+ **D** : real matrix
+ **K** : real matrix, kalman gain
+ **Q** : (optional) the n-by-n positive semidefinite state covariance
  matrix used as state weighting matrix when computing the Kalman gain.
+ **RY** : (optional) the l-by-l positive (semi)definite output
  covariance matrix used as output weighting matrix when computing the
  Kalman gain.
+ **S** : (optional) the n-by-l state-output cross-covariance matrix
  used as cross-weighting matrix when computing the Kalman gain.
+ **rcnd** : (optional) vector of length lr, containing estimates of
  the reciprocal condition numbers of the matrices involved in rank
  decisions, least squares, or Riccati equation solutions, where lr = 4,
  if Kalman gain matrix K is not required, and lr = 12, if Kalman gain
  matrix K is required.




Description
~~~~~~~~~~~

SIDENT function for computing a discrete-time state-space realization
(A,B,C,D) and Kalman gain K using SLICOT routine IB01BD.


::

    
    
                     [A,C,B,D] = sident(meth,1,s,n,l,R)
       [A,C,B,D,K,Q,Ry,S,rcnd] = sident(meth,1,s,n,l,R,tol,t)
                         [A,C] = sident(meth,2,s,n,l,R)
                             B = sident(meth,3,s,n,l,R,tol,0,Ai,Ci)
             [B,K,Q,Ry,S,rcnd] = sident(meth,3,s,n,l,R,tol,t,Ai,Ci)
                         [B,D] = sident(meth,4,s,n,l,R,tol,0,Ai,Ci)
           [B,D,K,Q,Ry,S,rcnd] = sident(meth,4,s,n,l,R,tol,t,Ai,Ci)
       
        


SIDENT computes a state-space realization (A,B,C,D) and the Kalman
predictor gain K of a discrete-time system, given the system order and
the relevant part of the R factor of the concatenated block-Hankel
matrices, using subspace identification techniques (MOESP, N4SID, or
their combination).

The model structure is :


::

    
    
             x(k+1) = Ax(k) + Bu(k) + Ke(k),   k >= 1,
             y(k)   = Cx(k) + Du(k) + e(k),
       
        


where x(k) is the n-dimensional state vector (at time k),

u(k) is the m-dimensional input vector,

y(k) is the l-dimensional output vector,

e(k) is the l-dimensional disturbance vector,

and A, B, C, D, and K are real matrices of appropriate dimensions.



Comments
~~~~~~~~

1. The n-by-n system state matrix A, and the p-by-n system output
matrix C are computed for job <= 2. 2. The n-by-m system input matrix
B is computed for job <> 2. 3. The l-by-m system matrix D is computed
for job = 1 or 4. 4. The n-by-l Kalman predictor gain matrix K and the
covariance matrices Q, Ry, and S are computed for t > 0.



Examples
~~~~~~~~


::

    
    
    //generate data from a given linear system
    A = [ 0.5, 0.1,-0.1, 0.2;
          0.1, 0,  -0.1,-0.1;      
         -0.4,-0.6,-0.7,-0.1;  
          0.8, 0,  -0.6,-0.6];      
    B = [0.8;0.1;1;-1];
    C = [1 2 -1 0];
    SYS=syslin(0.1,A,B,C);
    nsmp=100;
    U=prbs_a(nsmp,nsmp/5);
    Y=(flts(U,SYS)+0.3*rand(1,nsmp,'normal'));
    
    S = 15;
    N = 3;
    METH=1;
    [R,N1] = findR(S,Y',U',METH);
    [A,C,B,D,K] = sident(METH,1,S,N,1,R);
    SYS1=syslin(1,A,B,C,D);
    SYS1.X0 = inistate(SYS1,Y',U');
    
    Y1=flts(U,SYS1);
    xbasc();plot2d((1:nsmp)',[Y',Y1'])
    
    
    
    METH = 2;
    [R,N1,SVAL] = findR(S,Y',U',METH);
    tol = 0;
    t = size(U',1)-2*S+1;
    
    [A,C,B,D,K] = sident(METH,1,S,N,1,R,tol,t)
    SYS1=syslin(1,A,B,C,D)
    SYS1.X0 = inistate(SYS1,Y',U');
    
    Y1=flts(U,SYS1);
    xbasc();plot2d((1:nsmp)',[Y',Y1'])
     
      




See Also
~~~~~~~~

` **findBD** `_,` **sorder** `_,



Author
~~~~~~

V. Sima, Research Institute for Informatics, Bucharest, Oct. 1999.
Revisions: May 2000, July 2000.

.. _
      : ://./identification/sorder.htm
.. _
      : ://./identification/findBD.htm


