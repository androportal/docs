


h_norm
======

H-infinity norm



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [hinfnorm [,frequency]]=h_norm(sl [,rerr])




Arguments
~~~~~~~~~

:sl the state space system ( `syslin` list)
: :rerr max. relative error, default value `1e-8`
: :hinfnorm the infinity norm of `Sl`
: :frequency frequency at which maximum is achieved
:



Description
~~~~~~~~~~~

produces the infinity norm of a state-space system (the maximum over
all frequencies of the maximum singular value).



See Also
~~~~~~~~


+ `linfn`_ infinity norm
+ `linf`_ infinity norm
+ `svplot`_ singular-value sigma-plot


.. _svplot: svplot.html
.. _linf: linf.html
.. _linfn: linfn.html


