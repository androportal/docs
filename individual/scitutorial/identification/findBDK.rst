====
"findBDK"
====

Scilab Function Last update : April 1999
**findBDK** - Kalman gain and B D system matrices of a discrete-time
system



Calling Sequence
~~~~~~~~~~~~~~~~

[B,D,K] = findBDK(S,N,L,R,A,C,METH,JOB,NSMPL,TOL,PRINTW)
[B,D,RCND] = findBDK(S,N,L,R,A,C,METH,JOB)
[B,D,K,Q,Ry,S,RCND] = findBDK(S,N,L,R,A,C,METH,JOB,NSMPL,TOL,PRINTW)




Parameters
~~~~~~~~~~


+ **S** : integer, the number of block rows in the block-Hankel
  matrices
+ **N** : integer
+ **L** : integer
+ **R** : matrix, relevant part of the R factor of the concatenated
  block-Hankel matrices computed by a call to findR.
+ **A** : square matrix
+ **C** : matrix
+ **METH** : integer, an option for the method to use

    + **= 1** : MOESP method with past inputs and outputs;
    + **= 2** : N4SID method;
  Default: METH = 2.
+ **JOB** : an option specifying which system matrices should be
  computed:

    + **= 1** : compute the matrix B;
    + **= 2** : compute the matrices B and D.
  Default: JOB = 2.
+ **NSMPL** : integer, the total number of samples used for
  calculating the covariance matrices and the Kalman predictor gain.
  This parameter is not needed if the covariance matrices and/or the
  Kalman predictor gain matrix are not desired. If NSMPL = 0, then K, Q,
  Ry, and S are not computed. Default: NSMPL = 0.
+ **TOL** : the tolerance used for estimating the rank of matrices. If
  TOL > 0, then the given value of TOL is used as a lower bound for the
  reciprocal condition number. Default:
  prod(size(matrix))*epsilon_machine where epsilon_machine is the
  relative machine precision.
+ **PRINTW** : integer, switch for printing the warning messages.

    + **PRINTW** = 1: print warning messages;
    + **PRINTW** = 0: do not print warning messages.
  Default: PRINTW = 0.
+ **SYS** : computes a state-space realization SYS = (A,B,C,D) (an
  syslin object)
+ **K** : the Kalman predictor gain K (if NSMPL > 0)
+ **Q** : state covariance
+ **Ry** : output covariance
+ **S** : state-output cross-covariance
+ **RCND** : he vector of length 12 containing the reciprocal
  condition numbers of the matrices involved in rank decisions, least
  squares or Riccati equation solutions.




Description
~~~~~~~~~~~

finds the system matrices B and D and the Kalman gain of a discrete-
time system, given the system order, the matrices A and C, and the
relevant part of the R factor of the concatenated block-Hankel
matrices, using subspace identification techniques (MOESP or N4SID).

*****[B,D,K] = findBDK(S,N,L,R,A,C,METH,JOB,NSMPL,TOL,PRINTW) computes
the system matrices B (if JOB = 1), B and D (if JOB = 2), and the
Kalman predictor gain K (if NSMPL > 0). The model structure is:

::

    
    
         x(k+1) = Ax(k) + Bu(k) + Ke(k),   k >= 1,
         y(k)   = Cx(k) + Du(k) + e(k),
       
            

where x(k) and y(k) are vectors of length N and L, respectively.
*****[B,D,RCND] = findBDK(S,N,L,R,A,C,METH,JOB) also returns the
  vector RCND of length 4 containing the reciprocal condition numbers of
  the matrices involved in rank decisions.
*****[B,D,K,Q,Ry,S,RCND] =
  findBDK(S,N,L,R,A,C,METH,JOB,NSMPL,TOL,PRINTW) also returns the state,
  output, and state-output (cross-)covariance matrices Q, Ry, and S
  (used for computing the Kalman gain), as well as the vector RCND of
  length 12 containing the reciprocal condition numbers of the matrices
  involved in rank decisions, least squares or Riccati equation
  solutions.


Matrix R, computed by findR, should be determined with suitable
arguments METH and JOBD. METH = 1 and JOBD = 1 must be used in findR,
for METH = 1 in findBDK. Using METH = 1 in FINDR and METH = 2 in
findBDK is allowed.

The number of output arguments may vary, but should correspond to the
input arguments, e.g.,


::

    
    
                B = findBDK(S,N,L,R,A,C,METH,1)  or
            [B,D] = findBDK(S,N,L,R,A,C,METH,2)  or
       [B,D,RCND] = findBDK(S,N,L,R,A,C,METH,2)  
       
        




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
    
    // Compute R
    S=15;L=1;
    [R,N,SVAL] = findR(S,Y',U');
    
    N=3;
    METH=3;TOL=-1;
    [A,C] = findAC(S,N,L,R,METH,TOL);
    [B,D,K] = findBDK(S,N,L,R,A,C);
    SYS1=syslin(1,A,B,C,D);
    
    SYS1.X0 = inistate(SYS1,Y',U');
    
    Y1=flts(U,SYS1);
    xbasc();plot2d((1:nsmp)',[Y',Y1'])
     
      




See Also
~~~~~~~~

` **findABCD** `_,` **findAC** `_,` **findBD** `_,` **findR** `_,`
**sorder** `_,` **sident** `_,

.. _
      : ://./identification/findABCD.htm
.. _
      : ://./identification/sorder.htm
.. _
      : ://./identification/findBD.htm
.. _
      : ://./identification/findR.htm
.. _
      : ://./identification/findAC.htm
.. _
      : ://./identification/sident.htm


