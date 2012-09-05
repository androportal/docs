


ccontrg
=======

Central H-infinity continuous time controller



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [K]=ccontrg(P,r,gamma);




Arguments
~~~~~~~~~

:P a continuous time linear dynamical system in state-space
  representation.
: :r a two elements vector with integer values: the dimension of the
  2,2 part of `P`
: :gamma real number
:



Description
~~~~~~~~~~~

returns a realization `K` of the central controller for the general
standard problem in state-space form.

Note that gamma must be > gopt (ouput of `gamitg`)

P contains the parameters of plant realization `(A,B,C,D)` ( `syslin`
list) with


::

    B = ( B1 , B2 ) ,        C= ( C1 ) ,    D = ( D11  D12)
                                ( C2 )          ( D21  D22)


`r(1)` and `r(2)` are the dimensions of `D22` (rows x columns)



See Also
~~~~~~~~


+ `gamitg`_ H-infinity gamma iterations for continuous time systems
+ `h_inf`_ Continuous time H-infinity (central) controller




Authors
~~~~~~~

P. Gahinet (INRIA);



History
~~~~~~~
Version Description 5.4.0 `Sl` is now checked for continuous time
linear dynamical system. This modification has been introduced by this
`commit`_
.. _gamitg: gamitg.html
.. _commit: http://gitweb.scilab.org/?p=scilab.git;a=commit;h=3d7083daae3339813ba747c8adcda1f9599bb80d
.. _h_inf: h_inf.html


