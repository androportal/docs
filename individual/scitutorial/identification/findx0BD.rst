====
"findx0BD"
====

Scilab Function Last update : April 1999
**findx0BD** - Estimates state and B and D matrices of a discrete-time
linear system



Calling Sequence
~~~~~~~~~~~~~~~~

[X0,B,D] = findx0BD(A,C,Y,U,WITHX0,WITHD,TOL,PRINTW)
[x0,B,D,V,rcnd] = findx0BD(A,C,Y,U)




Parameters
~~~~~~~~~~


+ **A** : state matrix of the system
+ **C** : C matrix of the system
+ **Y** : system output
+ **U** : system input
+ **WITHX0** : a switch for estimating the initial state x0.

    + **= ** 1: estimate x0;
    + **= ** 0: do not estimate x0.
  Default: WITHX0 = 1.
+ **WITHD** : a switch for estimating the matrix D.

    + **= ** 1: estimate the matrix D;
    + **= ** 0: do not estimate the matrix D.
  Default: WITHD = 1.
+ **TOL** : the tolerance used for estimating the rank of matrices. If
  TOL > 0, then the given value of TOL is used as a lower bound for the
  reciprocal condition number. Default:
  prod(size(matrix))*epsilon_machine where epsilon_machine is the
  relative machine precision.
+ **PRINTW** : a switch for printing the warning messages.

    + **= ** 1: print warning messages;
    + **= ** 0: do not print warning messages.
  Default: PRINTW = 0.
+ **X0** : intial state of the estimated linear system.
+ **B** : B matrix of the estimated linear system.
+ **D** : D matrix of the estimated linear system.
+ **V** : orthogonal matrix which reduces the system state matrix A to
  a real Schur form
+ **rcnd** : estimates of the reciprocal condition numbers of the
  matrices involved in rank decisions.




Description
~~~~~~~~~~~

findx0BD Estimates the initial state and/or the matrices B and D of a
discrete-time linear system, given the (estimated) system matrices A,
C, and a set of input/output data.

[X0,B,D] = findx0BD(A,C,Y,U,WITHX0,WITHD,TOL,PRINTW) estimates the
initial state X0 and the matrices B and D of a discrete-time system
using the system matrices A, C, output data Y and the input data U.
The model structure is :


::

    
    
         x(k+1) = Ax(k) + Bu(k),   k >= 1,
         y(k)   = Cx(k) + Du(k),
       
        


The vectors y(k) and u(k) are transposes of the k-th rows of Y and U,
respectively.

[x0,B,D,V,rcnd] = findx0BD(A,C,Y,U) also returns the orthogonal matrix
V which reduces the system state matrix A to a real Schur form, as
well as some estimates of the reciprocal condition numbers of the
matrices involved in rank decisions.


::

    
    
        B = findx0BD(A,C,Y,U,0,0)  returns B only, and
    [B,D] = findx0BD(A,C,Y,U,0)    returns B and D only. 
       
        




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
    
    [X0,B,D,V,rcnd] = findx0BD(A,C,Y',U');
    SYS1=syslin(1,A,B,C,D,X0);
    
    
    Y1=flts(U,SYS1);
    xbasc();plot2d((1:nsmp)',[Y',Y1'])
     
      




See Also
~~~~~~~~

` **findBD** `_,` **inistate** `_,

.. _
      : ://./identification/inistate.htm
.. _
      : ://./identification/findBD.htm


