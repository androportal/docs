


nehari
======

Nehari approximant of continuous time dynamical systems



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [x]=nehari(R [,tol])




Arguments
~~~~~~~~~

:R a continuous time linear dynamical system in state-space
  representation.
: :x a continuous time linear dynamical system in state-space
  representation.
: :tol optional threshold, default value is 1e-6.
:



Description
~~~~~~~~~~~

`[x]=nehari(R [,tol])returns` the Nehari approximant of `R`.

`R` = linear system in state-space representation ( `syslin` list).

`R` is strictly proper and `- R~` is stable (i.e. `R` is anti stable).


::

    || R - X ||oo = `min`_ || R - Y ||oo
                  Y in Hoo




History
~~~~~~~
Version Description 5.4.0 `Sl` is now checked for continuous time
linear dynamical system. This modification has been introduced by this
`commit`_
.. _commit: http://gitweb.scilab.org/?p=scilab.git;a=commit;h=3d7083daae3339813ba747c8adcda1f9599bb80d


