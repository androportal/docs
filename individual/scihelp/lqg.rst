


lqg
===

LQG compensator



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [K]=lqg(P,r)




Arguments
~~~~~~~~~

:P `syslin` list (augmented plant) in state-space form
: :r 1x2 row vector = (number of measurements, number of inputs)
  (dimension of the 2,2 part of `P`)
: :K `syslin` list (controller)
:



Description
~~~~~~~~~~~

`lqg` computes the linear optimal LQG (H2) controller for the
"augmented" plant `P=syslin('c',A,B,C,D)` (continuous time) or
`P=syslin('d',A,B,C,D)` (discrete time).

The function `lqg2stan` returns `P` and `r` given the nominal plant,
weighting terms and variances of noises.

`K` is given by the following ABCD matrices:
`[A+B*Kc+Kf*C+Kf*D*Kc,-Kf,Kc,0]` where `Kc=lqr(P12)` is the controller
gain and `Kf=lqe(P21)` is the filter gain. See example in `lqg2stan`.



See Also
~~~~~~~~


+ `lqg2stan`_ LQG to standard problem
+ `lqr`_ LQ compensator (full state)
+ `lqe`_ linear quadratic estimator (Kalman Filter)
+ `h_inf`_ Continuous time H-infinity (central) controller
+ `obscont`_ observer based controller


.. _obscont: obscont.html
.. _lqg2stan: lqg2stan.html
.. _lqe: lqe.html
.. _lqr: lqr.html
.. _h_inf: h_inf.html


