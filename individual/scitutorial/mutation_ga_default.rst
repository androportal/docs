


mutation_ga_default
===================

A continuous variable mutation function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    Mut_Indiv = mutation_ga_default(Indiv,param)




Arguments
~~~~~~~~~

:Indiv The individual to be mutated.
: :param a list of parameters.

    + 'delta': a random perturbation will be sampled via an uniform
      distribution between -delta and + delta.
    + 'minbound': a vector of minimum bound for the variable X.
    + 'maxbound': a vector of maximum bound for the variable X.

: :Mut_Indiv The resulting mutated individual.
:



Description
~~~~~~~~~~~


+ This function performs the classical continuous variable mutation
  function.




See Also
~~~~~~~~


+ `mutation_ga_binary`_ A function which performs binary mutation
+ `crossover_ga_default`_ A crossover function for continuous variable
  functions
+ `init_ga_default`_ A function a initialize a population
+ `optim_ga`_ A flexible genetic algorithm


.. _crossover_ga_default: crossover_ga_default.html
.. _init_ga_default: init_ga_default.html
.. _mutation_ga_binary: mutation_ga_binary.html
.. _optim_ga: optim_ga.html


