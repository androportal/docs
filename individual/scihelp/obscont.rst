


obscont
=======

observer based controller



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [K]=obscont(P,Kc,Kf)
    [J,r]=obscont(P,Kc,Kf)




Arguments
~~~~~~~~~

:P `syslin` list (nominal plant) in state-space form, continuous or
  discrete time
: :Kc real matrix, (full state) controller gain
: :Kf real matrix, filter gain
: :K `syslin` list (controller)
: :J `syslin` list (extended controller)
: :r 1x2 row vector
:



Description
~~~~~~~~~~~

`obscont` returns the observer-based controller associated with a
nominal plant `P` with matrices `[A,B,C,D]` ( `syslin` list).

The full-state control gain is `Kc` and the filter gain is `Kf`. These
gains can be computed, for example, by pole placement.

`A+B*Kc` and `A+Kf*C` are (usually) assumed stable.

`K` is a state-space representation of the compensator `K: y->u` in:

`xdot = A x + B u, y=C x + D u, zdot= (A + Kf C)z -Kf y +B u, u=Kc z`

`K` is a linear system ( `syslin` list) with matrices given by:
`K=[A+B*Kc+Kf*C+Kf*D*Kc,Kf,-Kc]`.

The closed loop feedback system `Cl: v ->y` with (negative) feedback
`K` (i.e. `y = P u, u = v - K y`, or


::

    xdot = A x + B u, 
       y = C x + D u, 
    zdot = (A + Kf C) z - Kf y + B u, 
       u = v -F z


) is given by `Cl = P/.(-K)`

The poles of `Cl` ( `spec(cl('A'))`) are located at the eigenvalues of
`A+B*Kc` and `A+Kf*C`.

Invoked with two output arguments `obscont` returns a (square) linear
system `K` which parametrizes all the stabilizing feedbacks via a LFT.

Let `Q` an arbitrary stable linear system of dimension `r(2)`x `r(1)`
i.e. number of inputs x number of outputs in `P`. Then any stabilizing
controller `K` for `P` can be expressed as `K=lft(J,r,Q)`. The
controller which corresponds to `Q=0` is `K=J(1:nu,1:ny)` (this `K` is
returned by `K=obscont(P,Kc,Kf)`). `r` is `size(P)` i.e the vector
[number of outputs, number of inputs];



Examples
~~~~~~~~


::

    ny=2;nu=3;nx=4;P=`ssrand`_(ny,nu,nx);[A,B,C,D]=`abcd`_(P);
    Kc=-`ppol`_(A,B,[-1,-1,-1,-1]);  //Controller gain
    Kf=-`ppol`_(A',C',[-2,-2,-2,-2]);Kf=Kf';    //Observer gain
    cl=P/.(-obscont(P,Kc,Kf));`spec`_(cl('A'))   //closed loop system
    [J,r]=obscont(P,Kc,Kf);
    Q=`ssrand`_(nu,ny,3);Q('A')=Q('A')-(`max`_(`real`_(`spec`_(Q('A'))))+0.5)*`eye`_(Q('A')) 
    //Q is a stable parameter
    K=`lft`_(J,r,Q);
    `spec`_(`h_cl`_(P,K))  // closed-loop A matrix (should be stable);




See Also
~~~~~~~~


+ `ppol`_ pole placement
+ `lqg`_ LQG compensator
+ `lqr`_ LQ compensator (full state)
+ `lqe`_ linear quadratic estimator (Kalman Filter)
+ `h_inf`_ Continuous time H-infinity (central) controller
+ `lft`_ linear fractional transformation
+ `syslin`_ linear system definition
+ `feedback`_ feedback operation
+ `observer`_ observer design


.. _lqe: lqe.html
.. _feedback: feedback.html
.. _lqg: lqg.html
.. _syslin: syslin.html
.. _ppol: ppol.html
.. _lqr: lqr.html
.. _lft: lft.html
.. _observer: observer.html
.. _h_inf: h_inf.html


