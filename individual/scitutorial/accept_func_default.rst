


accept_func_default
===================

The default Simulated Annealing acceptation function.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    Level = accept_func_default(F_current, F_neigh, T)




Arguments
~~~~~~~~~

:F_current the current function value
: :F_neigh the function value of the neighbour
: :T the current temperature
: :Level the level of acceptation, in the interval [0,1].
:



Description
~~~~~~~~~~~

The `accept_func_default` provides the default Simulated Annealing
acceptation function.

If the level computed by the acceptation function is higher than the
generated uniform random number in the interval [0,1], then the
neighbour is accepted.

The formula used in the implementation is the following.


::

    Level = `exp`_(-(F_neigh - F_current)/`max`_(T,%eps));




See Also
~~~~~~~~


+ `accept_func_vfsa`_ The Very Fast Simulated Annealing acceptation
  function.


.. _accept_func_vfsa: accept_func_vfsa.html


