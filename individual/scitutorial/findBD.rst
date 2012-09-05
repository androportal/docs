


findBD
======

initial state and system matrices B and D of a discrete-time system



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [[x0] [,B [,D]] [,V] [,rcnd]] = findBD(jobx0,comuse [,job],A [,B],C [,D],Y [,U,tol,printw,ldwork])




Arguments
~~~~~~~~~

:jobx0 integer option to specify whether or not the initial state
should be computed:
    := 1 : compute the initial state x0;
    : := 2 : do not compute the initial state (possibly, because x0 is
      known to be zero).
    :

: :comuse integer option to specify whether the system matrices B and
D should be computed or used:
    := 1 : compute the matrices B and D, as specified by job;
    : := 2 : use the matrices B and D, as specified by job;
    : := 3 : do not compute/use the matrices B and D.
    :

: :job integer option to determine which of the system matrices B and
D should be computed or used:
    := 1 : compute/use the matrix B only (D is known to be zero);
    : := 2 : compute/use the matrices B and D.
    :
job must not be specified if jobx0 = 2 and comuse = 2, or if comuse =
  3.
: :A state matrix of the given system
: :B optional, input matrix of the given system
: :C output matrix of the given system
: :D optional, direct feedthrough of the given system
: :Y the t-by-l output-data sequence matrix. Column j of Y contains
  the t values of the j-th output component for consecutive time
  increments.
: :U the t-by-m input-data sequence matrix (input when jobx0 = 1 and
  comuse = 2, or comuse = 1). Column j of U contains the t values of the
  j-th input component for consecutive time increments.
: :tol optional, tolerance used for estimating the rank of matrices.
  If tol > 0, then the given value of tol is used as a lower bound for
  the reciprocal condition number; an m-by-n matrix whose estimated
  condition number is less than 1/tol is considered to be of full rank.
  Default: m*n*epsilon_machine where epsilon_machine is the relative
  machine precision.
: :printw optional, switch for printing the warning messages.
    := 1: print warning messages;
    : := 0: do not print warning messages.
    :
Default: printw = 0.
: :ldwork (optional) the workspace size. Default : computed by the
  formula LDWORK = MAX( minimum workspace size needed, 2*CSIZE/3, CSIZE
  - ( m + l )*t - 2*n*( n + m + l ) - l*m ) where CSIZE is the cache
  size in double precision words.
: :x0 initial state vector
: :Br system input matrix
: :Dr system direct feedthrough matrix
: :V the n-by-n orthogonal matrix which reduces A to a real Schur form
  (output when jobx0 = 1 or comuse = 1).
: :rcnd (optional) the reciprocal condition numbers of the matrices
  involved in rank decisions.
:



Description
~~~~~~~~~~~

findBD function for estimating the initial state and the system
matrices B and D of a discrete-time system, using SLICOT routine
IB01CD.


::

    [x0,Br,V,rcnd] = findBD(1,1,1,A,C,Y,U)
    [x0,Br,Dr,V,rcnd] = findBD(1,1,2,A,C,Y,U)
       [Br,V,rcnd] = findBD(2,1,1,A,C,Y,U)
     [B,Dr,V,rcnd] = findBD(2,1,2,A,C,Y,U)
       [x0,V,rcnd] = findBD(1,2,1,A,B,C,Y,U)
       [x0,V,rcnd] = findBD(1,2,2,A,B,C,D,Y,U)
         [x0,rcnd] = findBD(2,2)      // (Set x0 = 0, rcnd = 1)
       [x0,V,rcnd] = findBD(1,3,A,C,Y)


Note: the example lines above may contain at the end the parameters
tol, printw, ldwork.

FINDBD estimates the initial state and/or the system matrices Br and
Dr of a discrete-time system, given the system matrices A, C, and
possibly B, D, and the input and output trajectories of the system.

The model structure is :


::

    x(k+1) = Ax(k) + Bu(k),   k >= 1,
    y(k)   = Cx(k) + Du(k),


where x(k) is the n-dimensional state vector (at time k),

u(k) is the m-dimensional input vector,

y(k) is the l-dimensional output vector,

and A, B, C, and D are real matrices of appropriate dimensions.



Comments
~~~~~~~~

:1. The n-by-m system input matrix B is an input parameter when jobx0
  = 1 and comuse = 2, and it is an output parameter when comuse = 1.
: :2. The l-by-m system matrix D is an input parameter when jobx0 = 1,
  comuse = 2 and job = 2, and it is an output parameter when comuse = 1
  and job = 2.
: :3. The n-vector of estimated initial state x(0) is an output
  parameter when jobx0 = 1, but also when jobx0 = 2 and comuse <= 2, in
  which case it is set to 0.
: :4. If ldwork is specified, but it is less than the minimum
  workspace size needed, that minimum value is used instead.
:



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
    SYS=`syslin`_(0.1,A,B,C);
    nsmp=100;
    U=`prbs_a`_(nsmp,nsmp/5);
    Y=(`flts`_(U,SYS)+0.3*`rand`_(1,nsmp,'normal'));
    
    // Compute R
    S=15;L=1;
    [R,N,SVAL] = `findR`_(S,Y',U');
    
    N=3;
    METH=3;TOL=-1;
    [A,C] = `findAC`_(S,N,L,R,METH,TOL);
    [X0,B,D] = findBD(1,1,2,A,C,Y',U')
    SYS1=`syslin`_(1,A,B,C,D,X0);
    
    Y1=`flts`_(U,SYS1);
    `clf`_();`plot2d`_((1:nsmp)',[Y',Y1'])




See Also
~~~~~~~~


+ `inistate`_ Estimates the initial state of a discrete-time system
+ `findx0BD`_ Estimates state and B and D matrices of a discrete-time
  linear system
+ `findABCD`_ discrete-time system subspace identification
+ `findAC`_ discrete-time system subspace identification
+ `findBD`_ initial state and system matrices B and D of a discrete-
  time system


.. _findx0BD: findx0BD.html
.. _inistate: inistate.html
.. _findAC: findAC.html
.. _findABCD: findABCD.html
.. _findBD: findBD.html


