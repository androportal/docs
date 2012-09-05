


fspecg
======

stable factorization of continuous time dynamical systems



Calling Sequence
~~~~~~~~~~~~~~~~


::

    gm=fspecg(g).




Arguments
~~~~~~~~~

:g a continuous time linear dynamical system.
: :gm a continuous time linear dynamical system.
:



Description
~~~~~~~~~~~

returns `gm` with `gm` and `gm^-1` stable such that:


::

    `gtild`_(g)*g = `gtild`_(gm)*gm


`g` and `gm` are continuous-time linear systems in state-space form.

Imaginary-axis poles are forbidden.



History
~~~~~~~
Version Description 5.4.0 `Sl` is now checked for continuous time
linear dynamical system. This modification has been introduced by this
`commit`_
.. _commit: http://gitweb.scilab.org/?p=scilab.git;a=commit;h=3d7083daae3339813ba747c8adcda1f9599bb80d


