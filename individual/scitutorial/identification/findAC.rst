====
"findAC"
====

Scilab Function Last update : April 1999
**findAC** - discrete-time system subspace identification



Calling Sequence
~~~~~~~~~~~~~~~~

[A,C] = findAC(S,N,L,R,METH,TOL,PRINTW)
[A,C,RCND] = findAC(S,N,L,R,METH,TOL,PRINTW)




Parameters
~~~~~~~~~~


+ **S** : integer, the number of block rows in the block-Hankel
  matrices
+ **N** : integer
+ **L** : integer
+ **R** : matrix, relevant part of the R factor of the concatenated
  block-Hankel matrices computed by a call to findr.
+ **METH** : integer, an option for the method to use

    + **= 1** : MOESP method with past inputs and outputs;
    + **= 2** : N4SID method;
  Default: METH = 3.
+ **TOL** : the tolerance used for estimating the rank of matrices. If
  TOL > 0, then the given value of TOL is used as a lower bound for the
  reciprocal condition number. Default:
  prod(size(matrix))*epsilon_machine where epsilon_machine is the
  relative machine precision.
+ **PRINTW** : integer, switch for printing the warning messages.

    + **PRINTW** = 1: print warning messages;
    + **= 0** : do not print warning messages.
  Default: PRINTW = 0.
+ **A** : matrix, state system matrix
+ **C** : matrix, output system matrix
+ **RCND** : vector of length 4, condition numbers of the matrices
  involved in rank decision




Description
~~~~~~~~~~~

finds the system matrices A and C of a discrete-time system, given the
system order and the relevant part of the R factor of the concatenated
block-Hankel matrices, using subspace identification techniques (MOESP
or N4SID).

*****[A,C] = findAC(S,N,L,R,METH,TOL,PRINTW) computes the system
  matrices A and C. The model structure is: x(k+1) = Ax(k) + Bu(k) +
  Ke(k), k >= 1, y(k) = Cx(k) + Du(k) + e(k), where x(k) and y(k) are
  vectors of length N and L, respectively.
*****[A,C,RCND] = findAC(S,N,L,R,METH,TOL,PRINTW) also returns the
  vector RCND of length 4 containing the condition numbers of the
  matrices involved in rank decisions.


Matrix R, computed by findR, should be determined with suitable
arguments METH and JOBD.



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
     
      




See Also
~~~~~~~~

` **findABCD** `_,` **findBD** `_,` **findBDK** `_,` **findR** `_,`
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
      : ://./identification/findR.htm
.. _
      : ://./identification/sident.htm


