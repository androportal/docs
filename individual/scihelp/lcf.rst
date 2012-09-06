


lcf
===

Continuous time dynamical systems normalized coprime factorization



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [N,M]=lcf(sl)




Arguments
~~~~~~~~~

:sl a continuous time linear dynamical system.
: :N a continuous linear dynamical system.
: :M a continuous linear dynamical system.
:



Description
~~~~~~~~~~~

Computes normalized coprime factorization of the linear dynamic system
`sl`.

`sl = M^-1 N`

`M` and `N` are returned in the same representation (transfer function
or state-space) than `sl`.



Authors
~~~~~~~

F. D.; ;



History
~~~~~~~
Version Description 5.4.0 `Sl` is now checked for continuous time
linear dynamical system. This modification has been introduced by this
`commit`_
.. _commit: http://gitweb.scilab.org/?p=scilab.git;a=commit;h=3d7083daae3339813ba747c8adcda1f9599bb80d


