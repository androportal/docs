


accept_func_vfsa
================

The Very Fast Simulated Annealing acceptation function.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    Level = accept_func_vfsa(F_current, F_neigh, T)




Arguments
~~~~~~~~~

:F_current the current function value
: :F_neigh the function value of the neighbour
: :T the current temperature
: :Level the level of acceptation, in the interval [0,1].
:



Description
~~~~~~~~~~~

The `accept_func_vfsa` provides the Very Fast Simulated Annealing
acceptation function.

If the level computed by the acceptation function is higher than the
generated uniform random number in the interval [0,1], then the
neighbour is accepted.

The formula used in the implementation is the following.


::

    Level = 1 / (1 + `exp`_(-(F_current - F_neigh)/`max`_(T,%eps)));




See Also
~~~~~~~~


+ `accept_func_default`_ The default Simulated Annealing acceptation
  function.


.. _accept_func_default: accept_func_default.html


