


neigh_func_csa
==============

The classical neighborhood relationship for the simulated annealing



Calling Sequence
~~~~~~~~~~~~~~~~


::

    x_neigh = neigh_func_csa(x_current,T,param)




Arguments
~~~~~~~~~

:x_current the point for which we want to compute a neighbor
: :T the current temperature
: :param a vector with the same size than x_current. A normalisation
  vector which allows to distort the shape of the neighborhood. This
  parameter allows to take into account the differences of interval of
  variation between variables. By default, this parameter is set to a
  vector of ones.
: :x_neigh the computed neighbor
:



Description
~~~~~~~~~~~


+ This function implements the classical neighborhood relationship for
  the simulated annealing. The neighbors distribution is a gaussian
  distribution which is more and more peaked as the temperature
  decrease.




See Also
~~~~~~~~


+ `neigh_func_default`_ A SA function which computes a neighbor of a
  given point
+ `temp_law_huang`_ The Huang temperature decrease law for the
  simulated annealing
+ `optim_sa`_ A Simulated Annealing optimization method


.. _temp_law_huang: temp_law_huang.html
.. _neigh_func_default: neigh_func_default.html
.. _optim_sa: optim_sa.html


