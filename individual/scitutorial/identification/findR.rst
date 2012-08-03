====
"findR"
====

Scilab Function Last update : April 1999
**findR** - Preprocessor for estimating the matrices of a linear time-
invariant dynamical system



Calling Sequence
~~~~~~~~~~~~~~~~

[R,N [,SVAL,RCND]] = findR(S,Y,U,METH,ALG,JOBD,TOL,PRINTW)
[R,N] = findR(S,Y)




Parameters
~~~~~~~~~~


+ **S** : the number of block rows in the block-Hankel matrices.
+ **Y** :
+ **U** :
+ **METH** : an option for the method to use:

    + **1** : MOESP method with past inputs and outputs;
    + **2** : N4SI15 0 1 1 1000D method.
  Default: METH = 1.
+ **ALG** : an option for the algorithm to compute the triangular
  factor of the concatenated block-Hankel matrices built from the input-
  output data:

    + **1** : Cholesky algorithm on the correlation matrix;
    + **2** : fast QR algorithm;
    + **3** : standard QR algorithm.
  Default: ALG = 1.
+ **JOBD** : an option to specify if the matrices B and D should later
  be computed using the MOESP approach:

    + **= ** 1 : the matrices B and D should later be computed using the
      MOESP approach;
    + **= ** 2 : the matrices B and D should not be computed using the
      MOESP approach.
  Default: JOBD = 2. This parameter is not relevant for METH = 2.
+ **TOL** : a vector of length 2 containing tolerances:

    + **TOL** (1) is the tolerance for estimating the rank of matrices. If
      TOL(1) > 0, the given value of TOL(1) is used as a lower bound for the
      reciprocal condition number. Default: TOL(1) =
      prod(size(matrix))*epsilon_machine where epsilon_machine is the
      relative machine precision.
    + **TOL** (2) is the tolerance for estimating the system order. If
      TOL(2) >= 0, the estimate is indicated by the index of the last
      singular value greater than or equal to TOL(2). (Singular values less
      than TOL(2) are considered as zero.) When TOL(2) = 0, then
      S*epsilon_machine*sval(1) is used instead TOL(2), where sval(1) is the
      maximal singular value. When TOL(2) < 0, the estimate is indicated by
      the index of the singular value that has the largest logarithmic gap
      to its successor. Default: TOL(2) = -1.

+ **PRINTW** : a switch for printing the warning messages.

    + **= ** 1: print warning messages;
    + **= ** 0: do not print warning messages.
  Default: PRINTW = 0.
+ **R** :
+ **N** : the order of the discrete-time realization
+ **SVAL** : singular values SVAL, used for estimating the order.
+ **RCND** : vector of length 2 containing the reciprocal condition
  numbers of the matrices involved in rank decisions or least squares
  solutions.




Description
~~~~~~~~~~~

findR Preprocesses the input-output data for estimating the matrices
of a linear time-invariant dynamical system, using Cholesky or (fast)
QR factorization and subspace identification techniques (MOESP or
N4SID), and estimates the system order.

[R,N] = findR(S,Y,U,METH,ALG,JOBD,TOL,PRINTW) returns the processed
upper triangular factor R of the concatenated block-Hankel matrices
built from the input-output data, and the order N of a discrete-time
realization. The model structure is:


::

    
    
         x(k+1) = Ax(k) + Bu(k) + w(k),   k >= 1,
         y(k)   = Cx(k) + Du(k) + e(k).
       
        


The vectors y(k) and u(k) are transposes of the k-th rows of Y and U,
respectively.

[R,N,SVAL,RCND] = findR(S,Y,U,METH,ALG,JOBD,TOL,PRINTW) also returns
the singular values SVAL, used for estimating the order, as well as,
if meth = 2, the vector RCND of length 2 containing the reciprocal
condition numbers of the matrices involved in rank decisions or least
squares solutions.

[R,N] = findR(S,Y) assumes U = [] and default values for the remaining
input arguments.



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
    U=(ones(1,1000)+rand(1,1000,'normal')); 
    Y=(flts(U,SYS)+0.5*rand(1,1000,'normal'));
    // Compute R
    
    [R,N,SVAL] = findR(15,Y',U');
    SVAL
    N
     
      




See Also
~~~~~~~~

` **findABCD** `_,` **findAC** `_,` **findBD** `_,` **findBDK** `_,`
**sorder** `_,` **sident** `_,

.. _
      : ://./identification/findABCD.htm
.. _
      : ://./identification/findBDK.htm
.. _
      : ://./identification/sorder.htm
.. _
      : ://./identification/findBD.htm
.. _
      : ://./identification/findAC.htm
.. _
      : ://./identification/sident.htm


