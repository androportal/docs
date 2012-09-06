


optim_nsga
==========

A multi-objective Niched Sharing Genetic Algorithm



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [pop_opt,fobj_pop_opt,pop_init,fobj_pop_init] = optim_nsga(ga_f,pop_size,nb_generation,p_mut,p_cross,Log,param,sigma,pow)




Arguments
~~~~~~~~~

:ga_f the function to be optimized. The prototype if y = f(x) or y =
  list(f,p1,p2,...).
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

: :sigma the radius of the sharing area.
: :pow the power coefficient of the penalty formula.
: :pop_opt the population of optimal individuals.
: :fobj_pop_opt the set of objective function values associated to
  pop_opt (optional).
: :pop_init the initial population of individuals (optional).
: :fobj_pop_init the set of objective function values associated to
  pop_init (optional).
:



Description
~~~~~~~~~~~


+ This function implements the classical "Niched Sharing Genetic
  Algorithm". For a demonstration, see
  SCI/modules/genetic_algorithms/examples/NSGAdemo.sce.




See Also
~~~~~~~~


+ `optim_moga`_ multi-objective genetic algorithm
+ `optim_ga`_ A flexible genetic algorithm
+ `optim_nsga2`_ A multi-objective Niched Sharing Genetic Algorithm
  version 2


.. _optim_ga: optim_ga.html
.. _optim_nsga2: optim_nsga2.html
.. _optim_moga: optim_moga.html


