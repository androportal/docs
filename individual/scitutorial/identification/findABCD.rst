====
"findABCD"
====

Scilab Function Last update : April 1999
**findABCD** - discrete-time system subspace identification



Calling Sequence
~~~~~~~~~~~~~~~~

[SYS,K] = findABCD(S,N,L,R,METH,NSMPL,TOL,PRINTW)
SYS = findABCD(S,N,L,R,METH)

[SYS,K,Q,Ry,S,RCND] = findABCD(S,N,L,R,METH,NSMPL,TOL,PRINTW)
[SYS,RCND] = findABCD(S,N,L,R,METH)




Parameters
~~~~~~~~~~


+ **S** : integer, the number of block rows in the block-Hankel
  matrices
+ **N** : integer, the system order
+ **L** : integer, the number of output
+ **R** : matrix, relevant part of the R factor of the concatenated
  block-Hankel matrices computed by a call to findr.
+ **METH** : integer, an option for the method to use

    + **= 1** : MOESP method with past inputs and outputs;
    + **= 2** : N4SID method;
    + **= 3** : combined method: A and C via MOESP, B and D via N4SID.
  Default: METH = 3.
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
+ **RCND** : vector, reciprocal condition numbers of the matrices
  involved in rank decisions, least squares or Riccati equation
  solutions




Description
~~~~~~~~~~~

Finds the system matrices and the Kalman gain of a discrete-time
system, given the system order and the relevant part of the R factor
of the concatenated block-Hankel matrices, using subspace
identification techniques (MOESP and/or N4SID).

*****[SYS,K] = findABCD(S,N,L,R,METH,NSMPL,TOL,PRINTW) computes a
state- space realization SYS = (A,B,C,D) (an ss object), and the
Kalman predictor gain K (if NSMPL > 0). The model structure is:

::

    
    
         x(k+1) = Ax(k) + Bu(k) + Ke(k),   k >= 1,
         y(k)   = Cx(k) + Du(k) + e(k),
       
            

where x(k) and y(k) are vectors of length N and L, respectively.
*****[SYS,K,Q,Ry,S,RCND] = findABCD(S,N,L,R,METH,NSMPL,TOL,PRINTW)
  also returns the state, output, and state-output (cross-)covariance
  matrices Q, Ry, and S (used for computing the Kalman gain), as well as
  the vector RCND of length lr containing the reciprocal condition
  numbers of the matrices involved in rank decisions, least squares or
  Riccati equation solutions, where



::

    
    
       lr = 4,  if Kalman gain matrix K is not required, and
       lr = 12, if Kalman gain matrix K is required.
       
        


Matrix R, computed by findR, should be determined with suitable
arguments METH and JOBD. METH = 1 and JOBD = 1 must be used in findR,
for METH = 1 in findABCD; METH = 1 must be used in findR, for METH = 3
in findABCD.



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
    S=15;
    [R,N1,SVAL] = findR(S,Y',U');
    N=3;
    SYS1 = findABCD(S,N,1,R) ;SYS1.dt=0.1;
    
    SYS1.X0 = inistate(SYS1,Y',U');
    
    Y1=flts(U,SYS1);
    xbasc();plot2d((1:nsmp)',[Y',Y1'])
    
     
      




See Also
~~~~~~~~

` **findAC** `_,` **findBD** `_,` **findBDK** `_,` **findR** `_,`
**sorder** `_,` **sident** `_,

.. _
      : ://./identification/sident.htm
.. _
      : ://./identification/findBDK.htm
.. _
      : ://./identification/sorder.htm
.. _
      : ://./identification/findBD.htm
.. _
      : ://./identification/findR.htm
.. _
      : ://./identification/findAC.htm


