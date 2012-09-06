


neigh_func_fsa
==============

The Fast Simulated Annealing neghborhood relationship



Calling Sequence
~~~~~~~~~~~~~~~~


::

    x_neigh = neigh_func_fsa(x_current,T,param)




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


+ This function computes the FSA neighborhood of a given point. The
  corresponding distribution is a Cauchy distribution which is more and
  more peaked as the temperature decrease.




See Also
~~~~~~~~


+ `optim_sa`_ A Simulated Annealing optimization method
+ `temp_law_fsa`_ The Szu and Hartley Fast simulated annealing
+ `neigh_func_default`_ A SA function which computes a neighbor of a
  given point


.. _optim_sa: optim_sa.html
.. _neigh_func_default: neigh_func_default.html
.. _temp_law_fsa: temp_law_fsa.html


