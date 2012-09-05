


selection_ga_elitist
====================

An 'elitist' selection function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Pop_out,FObj_Pop_out,Efficiency,MO_Total_FObj_out] = selection_ga_elitist(Pop_in,Indiv1,Indiv2,FObj_Pop_in,FObj_Indiv1,FObj_Indiv2,MO_Total_FObj_in,MO_FObj_Indiv1,MO_FObj_Indiv2,param)




Arguments
~~~~~~~~~

:Pop_in The initial population of individuals.
: :Indiv1 a first set of children generated via crossover + mutation.
: :Indiv2 a second set of children generated via crossover + mutation.
: :FObj_Pop_in a vector of objective function values associated to
  each individuals of Pop_in.
: :FObj_Indiv1 a vector of objective function values associated to
  each individuals of Indiv1.
: :FObj_Indiv2 a vector of objective function values associated to
  each individuals of Indiv2.
: :MO_Total_FObj_in a matrix of multi-objective function values
  associated to each individuals of Pop_in.
: :MO_FObj_Indiv1 a matrix of multi-objective function values
  associated to each individuals of Indiv1.
: :MO_FObj_Indiv2 a matrix of multi-objective function values
  associated to each individuals of Indiv2.
: :param a list of parameters. - 'pressure': the selection pressure
  coefficient. Each individuals with 0 efficiency will have an
  efficiency value equal to 'pressure'.
: :Pop_out all the selected individuals in a population of size
  pop_size.
: :FObj_Pop_out all the objective function values associated to each
  individuals of Pop_out.
: :Efficiency all the efficiency values associated to each individuals
  of Pop_out.
: :MO_Total_FObj_out all the multi-objective function values
  associated to each individuals of Pop_out.
:



Description
~~~~~~~~~~~


+ This function performs the elitist selection function. We select the
  best individuals in the set of parents and children individuals.




See Also
~~~~~~~~


+ `selection_ga_random`_ A function which performs a random selection
  of individuals
+ `mutation_ga_default`_ A continuous variable mutation function
+ `crossover_ga_default`_ A crossover function for continuous variable
  functions
+ `init_ga_default`_ A function a initialize a population
+ `optim_ga`_ A flexible genetic algorithm


.. _optim_ga: optim_ga.html
.. _mutation_ga_default: mutation_ga_default.html
.. _init_ga_default: init_ga_default.html
.. _crossover_ga_default: crossover_ga_default.html
.. _selection_ga_random: selection_ga_random.html


