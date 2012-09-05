


gcare
=====

Continuous time control Riccati equation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [X,F]=gcare(Sl)




Arguments
~~~~~~~~~

:Sl a continuous time linear dynamical system in state-space
  representation
: :X symmetric matrix
: :F real matrix
:



Description
~~~~~~~~~~~

Generalized Control Algebraic Riccati Equation (GCARE). `X` = solution
, `F` = gain.

The GCARE for `Sl=[A,B,C,D]` is:


::

    (A-B*Si*D'*C)'*X+X*(A-B*Si*D'*C)-X*B*Si*B'*X+C'*Ri*C=0


where `S=(eye()+D'*D)`, `Si=inv(S)`, `R=(eye()+D*D')`, `Ri=inv(R)` and
`F=-Si*(D'*C+B'*X)` is such that `A+B*F` is stable.



See Also
~~~~~~~~


+ `gfare`_ Continuous time filter Riccati equation




History
~~~~~~~
Version Description 5.4.0 `Sl` is now checked for continuous time
linear dynamical system. This modification has been introduced by this
`commit`_
.. _gfare: gfare.html
.. _commit: http://gitweb.scilab.org/?p=scilab.git;a=commit;h=3d7083daae3339813ba747c8adcda1f9599bb80d


