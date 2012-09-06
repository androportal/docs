


lqg2stan
========

LQG to standard problem



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [P,r]=lqg2stan(P22,bigQ,bigR)




Arguments
~~~~~~~~~

:P22 `syslin` list (nominal plant) in state-space form
: :bigQ `[Q,S;S',N]` (symmetric) weighting matrix
: :bigR `[R,T;T',V]` (symmetric) covariance matrix
: :r `1`x `2` row vector = (number of measurements, number of inputs)
  (dimension of the 2,2 part of `P`)
: :P `syslin` list (augmented plant)
:



Description
~~~~~~~~~~~

`lqg2stan` returns the augmented plant for linear LQG (H2) controller
design.

`P22=syslin(dom,A,B2,C2)` is the nominal plant; it can be in
continuous time ( `dom='c'`) or discrete time ( `dom='d'`).


::

    . 
    x = Ax + w1 + B2u
    y = C2x + w2


for continuous time plant.


::

    x[n+1]= Ax[n] + w1 + B2u
        y = C2x + w2


for discrete time plant.

The (instantaneous) cost function is `[x' u'] bigQ [x;u]`.

The covariance of `[w1;w2]` is `E[w1;w2] [w1',w2'] = bigR`

If `[B1;D21]` is a factor of `bigQ`, `[C1,D12]` is a factor of `bigR`
and `[A,B2,C2,D22]` is a realization of P22, then `P` is a realization
of `[A,[B1,B2],[C1,-C2],[0,D12;D21,D22]`. The (negative) feedback
computed by `lqg` stabilizes `P22`, i.e. the poles of `cl=P22/.K` are
stable.



Examples
~~~~~~~~


::

    ny=2;nu=3;nx=4;
    P22=`ssrand`_(ny,nu,nx);
    bigQ=`rand`_(nx+nu,nx+nu);bigQ=bigQ*bigQ';
    bigR=`rand`_(nx+ny,nx+ny);bigR=bigR*bigR';
    [P,r]=lqg2stan(P22,bigQ,bigR);K=`lqg`_(P,r);  //K=LQG-controller
    `spec`_(`h_cl`_(P,r,K))      //Closed loop should be stable
    //Same as Cl=P22/.K; spec(Cl('A'))
    s=`poly`_(0,'s')
    lqg2stan(1/(s+2),`eye`_(2,2),`eye`_(2,2))




See Also
~~~~~~~~


+ `lqg`_ LQG compensator
+ `lqr`_ LQ compensator (full state)
+ `lqe`_ linear quadratic estimator (Kalman Filter)
+ `obscont`_ observer based controller
+ `h_inf`_ Continuous time H-infinity (central) controller
+ `augment`_ augmented plant
+ `fstabst`_ Youla's parametrization of continuous time linear
  dynmaical systems
+ `feedback`_ feedback operation


.. _obscont: obscont.html
.. _fstabst: fstabst.html
.. _lqg: lqg.html
.. _augment: augment.html
.. _lqe: lqe.html
.. _lqr: lqr.html
.. _feedback: feedback.html
.. _h_inf: h_inf.html


