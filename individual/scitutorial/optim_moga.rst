


optim_moga
==========

multi-objective genetic algorithm



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [pop_opt,fobj_pop_opt,pop_init,fobj_pop_init] = optim_moga(ga_f,pop_size,nb_generation,p_mut,p_cross,Log,param)




Arguments
~~~~~~~~~

:ga_f the function to be optimized. The header of the function is the
following :

::

    y = f(x)

or

::

    y = `list`_(f,p1,p2,...)


: :pop_size the size of the population of individuals (default value:
  100).
: :nb_generation the number of generations (equivalent to the number
  of iterations in classical optimization) to be computed (default
  value: 10).
: :p_mut the mutation probability (default value: 0.1).
: :p_cross the crossover probability (default value: 0.7).
: :Log if %T, we will display to information message during the run of
  the genetic algorithm.
: :param a list of parameters.

    + 'codage_func': the function which will perform the coding and
      decoding of individuals (default function: codage_identity).
    + 'init_func': the function which will perform the initialization of
      the population (default function: init_ga_default).
    + 'crossover_func': the function which will perform the crossover
      between two individuals (default function: crossover_ga_default).
    + 'mutation_func': the function which will perform the mutation of one
      individual (default function: mutation_ga_default).
    + 'selection_func': the function whcih will perform the selection of
      individuals at the end of a generation (default function:
      selection_ga_elitist).
    + 'nb_couples': the number of couples which will be selected so as to
      perform the crossover and mutation (default value: 100).
    + 'pressure': the value the efficiency of the worst individual
      (default value: 0.05).

: :pop_opt the population of optimal individuals.
: :fobj_pop_opt the set of multi-objective function values associated
  to pop_opt (optional).
: :pop_init the initial population of individuals (optional).
: :fobj_pop_init the set of multi-objective function values associated
  to pop_init (optional).
:



Description
~~~~~~~~~~~


+ This function implements the classical "Multi-Objective Genetic
  Algorithm". For a demonstration: see
  SCI/modules/genetic_algorithms/examples/MOGAdemo.sce.




See Also
~~~~~~~~


+ `optim_ga`_ A flexible genetic algorithm
+ `optim_nsga`_ A multi-objective Niched Sharing Genetic Algorithm
+ `optim_nsga2`_ A multi-objective Niched Sharing Genetic Algorithm
  version 2


.. _optim_ga: optim_ga.html
.. _optim_nsga: optim_nsga.html
.. _optim_nsga2: optim_nsga2.html


