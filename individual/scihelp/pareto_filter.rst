


pareto_filter
=============

A function which extracts non dominated solution from a set



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [F_out,X_out,Ind_out] = pareto_filter(F_in,X_in)




Arguments
~~~~~~~~~

:F_in the set of multi-objective function values from which we want to
  extract the non dominated solutions.
: :X_in the associated values in the parameters space.
: :F_out the set of non dominated multi-objective function values.
: :X_out the associated values in the parameters space.
: :Ind_out the set of indexes of the non dominated individuals
  selected from the set X_in.
:



Description
~~~~~~~~~~~


+ This function applies a Pareto filter to extract non dominated
  solutions from a set of values.




See Also
~~~~~~~~


+ `optim_moga`_ multi-objective genetic algorithm
+ `optim_nsga`_ A multi-objective Niched Sharing Genetic Algorithm
+ `optim_nsga2`_ A multi-objective Niched Sharing Genetic Algorithm
  version 2


.. _optim_nsga2: optim_nsga2.html
.. _optim_nsga: optim_nsga.html
.. _optim_moga: optim_moga.html


