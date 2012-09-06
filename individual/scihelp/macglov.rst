


macglov
=======

Continuous time dynamical systems Mac Farlane Glover problem



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [P,r]=macglov(Sl)




Arguments
~~~~~~~~~

:Sl a continuous time linear dynamical system
: :P a continuous time linear dynamical system, the "augmented" plant
: :r 1x2 vector, dimension of `P22`
:



Description
~~~~~~~~~~~

`[P,r]=macglov(Sl)` returns the standard plant `P` for the Glover-
McFarlane problem.

For this problem `ro_optimal = 1-hankel_norm([N,M]`) with
`[N,M]=lcf(sl)` (Normalized coprime factorization) i.e.

`gama_optimal = 1/sqrt(ro_optimal)`

`P` is returned in the same representation (transfer function or
state-space) than `Sl`.



Examples
~~~~~~~~
MAC-FARLANE PROBLEM for G=1/s^3;

::

    G=`syslin`_("c",1/%s^3);
    [P,r]=macglov(G);
    
    //K Optimal controller , ro = gamaopt^-2;
    [K,ro]=`h_inf`_(P,r,0,1,30);




Authors
~~~~~~~

F. Delebecque INRIA



History
~~~~~~~
Version Description 5.4.0 `Sl` is now checked for continuous time
linear dynamical system. This modification has been introduced by this
`commit`_
.. _commit: http://gitweb.scilab.org/?p=scilab.git;a=commit;h=3d7083daae3339813ba747c8adcda1f9599bb80d


