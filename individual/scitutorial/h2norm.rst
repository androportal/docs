


h2norm
======

H2 norm of a continuous time proper dynamical system



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [n]=h2norm(Sl [,tol])




Arguments
~~~~~~~~~

:Sl continuous time proper linear dynamical system
: :n real scalar
:



Description
~~~~~~~~~~~

produces the H2 norm of a linear continuous time system `Sl`.

(For `Sl` in state-space form `h2norm` uses the observability gramian
and for `Sl` in transfer form `h2norm` uses a residue method)



Examples
~~~~~~~~


::

    h=`syslin`_('c',(2*0.9*10*s+100)/(s^2+2*0.3*10.1*s+102.01));
    h2norm(h)




History
~~~~~~~
Version Description 5.4.0 `Sl` is now checked for continuous time
linear dynamical system. This modification has been introduced by this
`commit`_
.. _commit: http://gitweb.scilab.org/?p=scilab.git;a=commit;h=3d7083daae3339813ba747c8adcda1f9599bb80d


