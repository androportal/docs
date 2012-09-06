


gfare
=====

Continuous time filter Riccati equation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Z,H]=gfare(Sl)




Arguments
~~~~~~~~~

:Sl a continuous time linear dynamical system in state-space
  representation
: :Z symmetric matrix
: :H real matrix
:



Description
~~~~~~~~~~~

Generalized Filter Algebraic Riccati Equation (GFARE). `Z` = solution,
`H` = gain.

The GFARE for `Sl=[A,B,C,D]` is:


::

    (A-B*D'*Ri*C)*Z+Z*(A-B*D'*Ri*C)'-Z*C'*Ri*C*Z+B*Si*B'=0


where `S=(eye()+D'*D)`, `Si=inv(S)`, `R=(eye()+D*D')`, `Ri=inv(R)` and
`H=-(B*D'+Z*C')*Ri` is such that `A+H*C` is stable.



See Also
~~~~~~~~


+ `gcare`_ Continuous time control Riccati equation




History
~~~~~~~
Version Description 5.4.0 `Sl` is now checked for continuous time
linear dynamical system. This modification has been introduced by this
`commit`_
.. _gcare: gcare.html
.. _commit: http://gitweb.scilab.org/?p=scilab.git;a=commit;h=3d7083daae3339813ba747c8adcda1f9599bb80d


