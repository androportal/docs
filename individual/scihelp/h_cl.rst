


h_cl
====

closed loop matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Acl]=h_cl(P,r,K)
    [Acl]=h_cl(P22,K)




Arguments
~~~~~~~~~

:P, P22 continuous time linear dynamical systems: augmented plant or
  nominal plant respectively
: :r a two elements vector, dimensions of 2,2 part of `P` (
  `r=[rows,cols]=size(P22)`)
: :K a continuous time linear dynamical system: the controller
: :Acl real square matrix
:



Description
~~~~~~~~~~~

Given the standard plant `P` (with `r=size(P22)`) and the controller
`K`, this function returns the closed loop matrix `Acl`.

The poles of `Acl` must be stable for the internal stability of the
closed loop system.

`Acl` is the `A`-matrix of the linear system `[I -P22;-K I]^-1` i.e.
the `A`-matrix of `lft(P,r,K)`



See Also
~~~~~~~~


+ `lft`_ linear fractional transformation




Authors
~~~~~~~

F. D.



History
~~~~~~~
Version Description 5.4.0 `Sl` is now checked for continuous time
linear dynamical system. This modification has been introduced by this
`commit`_
.. _commit: http://gitweb.scilab.org/?p=scilab.git;a=commit;h=3d7083daae3339813ba747c8adcda1f9599bb80d
.. _lft: lft.html


