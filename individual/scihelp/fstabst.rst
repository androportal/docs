


fstabst
=======

Youla's parametrization of continuous time linear dynmaical systems



Calling Sequence
~~~~~~~~~~~~~~~~


::

    J = fstabst(P,r)




Arguments
~~~~~~~~~

:P a continuous time linear dynamical system.
: :r 1x2 row vector, dimension of `P22`
: :J a continuous time linear dynamical system (with same
  representation as `P`.
:



Description
~~~~~~~~~~~

Parameterization of all stabilizing feedbacks.

`P` is partitioned as follows:


::

    P=[ P11 P12;
        P21 P22]


(in state-space or transfer form: automatic conversion in state-space
is done for the computations)

`r` = size of `P22` subsystem, (2,2) block of `P`


::

    J =[J11 J12;
        J21 J22]


`K` is a stabilizing controller for `P` (i.e. `P22`) iff
`K=lft(J,r,Q)` with `Q` stable.

The central part of `J` , `J11` is the lqg regulator for `P`

This `J` is such that defining `T` as the 2-port `lft` of `P` and `J`
: `[T,rt]=lft(P,r,J,r)` one has that `T12` is inner and `T21` is co-
inner.



Examples
~~~~~~~~


::

    ny=2;nu=3;nx=4;
    P22=`ssrand`_(ny,nu,nx);
    bigQ=`rand`_(nx+nu,nx+nu);bigQ=bigQ*bigQ';
    bigR=`rand`_(nx+ny,nx+ny);bigR=bigR*bigR';
    [P,r]=`lqg2stan`_(P22,bigQ,bigR);
    J=fstabst(P,r);
    Q=`ssrand`_(nu,ny,1);Q('A')=-1;  //Stable Q
    K=`lft`_(J,r,Q);
    A=`h_cl`_(P,r,K); `spec`_(A)




See Also
~~~~~~~~


+ `obscont`_ observer based controller
+ `lft`_ linear fractional transformation
+ `lqg`_ LQG compensator
+ `lqg2stan`_ LQG to standard problem




History
~~~~~~~
Version Description 5.4.0 `Sl` is now checked for continuous time
linear dynamical system. This modification has been introduced by this
`commit`_
.. _obscont: obscont.html
.. _lqg2stan: lqg2stan.html
.. _lft: lft.html
.. _lqg: lqg.html
.. _commit: http://gitweb.scilab.org/?p=scilab.git;a=commit;h=3d7083daae3339813ba747c8adcda1f9599bb80d


