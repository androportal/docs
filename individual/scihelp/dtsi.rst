


dtsi
====

Continuous time dynamical systems stable anti-stable decomposition



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Ga,Gs,Gi]=dtsi(G,[tol])




Arguments
~~~~~~~~~

:G a continuous time linear system.
: :Ga a continuous time linear system antistable and strictly proper.
: :Gs a continuous time linear system stable and strictly proper.
: :Gi real matrix (or polynomial matrix for improper systems)
: :tol optional parameter for detecting stables poles. Default value:
  `100*%eps`
:



Description
~~~~~~~~~~~

returns the stable-antistable decomposition of `G`:

`G= Ga + Gs + Gi`, `(Gi = G(oo))`

`G` can be given in state-space form or in transfer form.

`Ga` and `Gs` are returned in the same representation (transfer
function or state-space) than `G`.



See Also
~~~~~~~~


+ `syslin`_ linear system definition
+ `pbig`_ eigen-projection
+ `psmall`_ spectral projection
+ `pfss`_ partial fraction decomposition




History
~~~~~~~
Version Description 5.4.0 `Sl` is now checked for continuous time
linear dynamical system. This modification has been introduced by this
`commit`_
.. _pbig: pbig.html
.. _syslin: syslin.html
.. _pfss: pfss.html
.. _commit: http://gitweb.scilab.org/?p=scilab.git;a=commit;h=3d7083daae3339813ba747c8adcda1f9599bb80d
.. _psmall: psmall.html


