


inistate
========

Estimates the initial state of a discrete-time system



Calling Sequence
~~~~~~~~~~~~~~~~


::

    X0 = inistate(SYS,Y,U,TOL,PRINTW)
    X0 = inistate(A,B,C,Y,U);
    X0 = inistate(A,C,Y);
    
    [x0,V,rcnd] = inistate(SYS,Y,U,TOL,PRINTW)




Arguments
~~~~~~~~~

:SYS given system, syslin(dt,A,B,C,D)
: :Y the output of the system
: :U the input of the system
: :TOL TOL is the tolerance used for estimating the rank of matrices.
  If TOL > 0, then the given value of TOL is used as a lower bound for
  the reciprocal condition number. Default:
  prod(size(matrix))*epsilon_machine where epsilon_machine is the
  relative machine precision.
: :PRINTW PRINTW is a switch for printing the warning messages.
    := 1: print warning messages;
    : := 0: do not print warning messages.
    :
Default: PRINTW = 0.
: :X0 the estimated initial state vector
: :V orthogonal matrix which reduces the system state matrix A to a
  real Schur form
: :rcnd estimate of the reciprocal condition number of the coefficient
  matrix of the least squares problem solved.
:



Description
~~~~~~~~~~~

inistate Estimates the initial state of a discrete-time system, given
the (estimated) system matrices, and a set of input/output data.

X0 = inistate(SYS,Y,U,TOL,PRINTW) estimates the initial state X0 of
the discrete-time system SYS = (A,B,C,D), using the output data Y and
the input data U. The model structure is :


::

    x(k+1) = Ax(k) + Bu(k),   k >= 1,
    y(k)   = Cx(k) + Du(k),


The vectors y(k) and u(k) are transposes of the k-th rows of Y and U,
respectively.

Instead of the first input parameter SYS (an syslin object),
equivalent information may be specified using matrix parameters, for
instance, X0 = inistate(A,B,C,Y,U); or X0 = inistate(A,C,Y);

[x0,V,rcnd] = inistate(SYS,Y,U,TOL,PRINTW) returns, besides x0, the
orthogonal matrix V which reduces the system state matrix A to a real
Schur form, as well as an estimate of the reciprocal condition number
of the coefficient matrix of the least squares problem solved.



See Also
~~~~~~~~


+ `findBD`_ initial state and system matrices B and D of a discrete-
  time system
+ `findx0BD`_ Estimates state and B and D matrices of a discrete-time
  linear system


.. _findx0BD: findx0BD.html
.. _findBD: findBD.html


