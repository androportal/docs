


copfac
======

right coprime factorization of continuous time dynamical systems



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [N,M,XT,YT]=copfac(G [,polf,polc,tol])




Arguments
~~~~~~~~~

:G a continuous-time linear dynamical system.
: :polf, polc respectively the poles of `XT` and `YT` and the poles of
  `n` and `M` (default values =-1).
: :tol real threshold for detecting stable poles (default value
  `100*%eps`)
: :N,M,XT,YT continuous-time linear dynamical systems.
:



Description
~~~~~~~~~~~

`[N,M,XT,YT]=copfac(G,[polf,polc,[tol]])` returns a right coprime
factorization of `G`.

`G= N*M^-1` where `N` and `M` are stable, proper and right coprime.
(i.e. `[N M]` left-invertible with stability)

`XT` and `YT` satisfy:

`[XT -YT].[M N]' = eye` (Bezout identity)

`G` is assumed stabilizable and detectable.



See Also
~~~~~~~~


+ `syslin`_ linear system definition
+ `lcf`_ Continuous time dynamical systems normalized coprime
  factorization




History
~~~~~~~
Version Description 5.4.0 `Sl` is now checked for continuous time
linear dynamical system. This modification has been introduced by this
`commit`_
.. _lcf: lcf.html
.. _syslin: syslin.html
.. _commit: http://gitweb.scilab.org/?p=scilab.git;a=commit;h=3d7083daae3339813ba747c8adcda1f9599bb80d


