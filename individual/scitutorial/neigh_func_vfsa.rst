


neigh_func_vfsa
===============

The Very Fast Simulated Annealing neighborhood relationship



Calling Sequence
~~~~~~~~~~~~~~~~


::

    x_neigh = neigh_func_vfsa(x_current,T,param)




Arguments
~~~~~~~~~

:x_current the point for which we want to compute a neighbor
: :T the current temperature
: :param a ones column vector. The column correspond to the amplitude
  of variation of the neighborhood. By default, the column is a column
  of 0.1.
: :x_neigh the computed neighbor
:



Description
~~~~~~~~~~~


+ This function implements the Very Fast Simulated Annealing
  relationship. This distribution is more and more peaked as the
  temperature decrease.




See Also
~~~~~~~~


+ `optim_sa`_ A Simulated Annealing optimization method
+ `neigh_func_vfsa`_ The Very Fast Simulated Annealing neighborhood
  relationship
+ `temp_law_huang`_ The Huang temperature decrease law for the
  simulated annealing


.. _optim_sa: optim_sa.html
.. _neigh_func_vfsa: neigh_func_vfsa.html
.. _temp_law_huang: temp_law_huang.html


