


dhnorm
======

discrete H-infinity norm



Calling Sequence
~~~~~~~~~~~~~~~~


::

    hinfnorm=dhnorm(sl,[tol],[normax])




Arguments
~~~~~~~~~

:sl the state space system ( `syslin` list) (discrete-time)
: :tol tolerance in bisection step, default value `0.01`
: :normax upper bound for the norm , default value is `1000`
: :hinfnorm the discrete infinity norm of `Sl`
:



Description
~~~~~~~~~~~

produces the discrete-time infinity norm of a state-space system (the
maximum over all frequencies on the unit circle of the maximum
singular value).



See Also
~~~~~~~~


+ `h_norm`_ H-infinity norm
+ `linfn`_ infinity norm


.. _h_norm: h_norm.html
.. _linfn: linfn.html


