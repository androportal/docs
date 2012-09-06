


gamitg
======

H-infinity gamma iterations for continuous time systems



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [gopt]=gamitg(G,r,prec [,options]);




Arguments
~~~~~~~~~

:G a continuous time dynamical system (plant realization).
: :r 1x2 row vector (dimension of `G22`)
: :prec desired relative accuracy on the norm
: :option string `'t'`
: :gopt real scalar, optimal H-infinity gain
:



Description
~~~~~~~~~~~

`gopt=gamitg(G,r,prec [,options])` returns the H-infinity optimal gain
`gopt`.

`G` contains the state-space matrices `[A,B,C,D]` of the plant with
the usual partitions:


::

    B = ( B1 , B2 ) ,    C = ( C1 ) ,    D = ( D11  D12)
                             ( C2 )          ( D21  D22)


These partitions are implicitly given in `r`: `r(1)` and `r(2)` are
the dimensions of `D22` (rows x columns)

With `option='t'`, `gamitg` traces each bisection step, i.e., displays
the lower and upper bounds and the current test point.



See Also
~~~~~~~~


+ `ccontrg`_ Central H-infinity continuous time controller
+ `h_inf`_ Continuous time H-infinity (central) controller




Authors
~~~~~~~

P. Gahinet



History
~~~~~~~
Version Description 5.4.0 `Sl` is now checked for continuous time
linear dynamical system. This modification has been introduced by this
`commit`_
.. _commit: http://gitweb.scilab.org/?p=scilab.git;a=commit;h=3d7083daae3339813ba747c8adcda1f9599bb80d
.. _h_inf: h_inf.html
.. _ccontrg: ccontrg.html


