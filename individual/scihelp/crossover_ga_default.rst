


crossover_ga_default
====================

A crossover function for continuous variable functions



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Crossed_Indiv1,Crossed_Indiv2] = crossover_ga_default(Indiv1,Indiv2,param)




Arguments
~~~~~~~~~

:Indiv1 The first individual to be crossed-over.
: :Indiv2 The second individual to be crossed-over.
: :param a list of parameters.

    + 'beta': the range of the random generator. A random value will be
      sampled between -beta and 1+beta. This sampled value will be used to
      perform a convex combination between Indiv1 and Indiv2.
    + 'minbound': a vector of minimum bounds for the variable X.
    + 'maxbound': a vector of maximum bounds for the variable X.

: :Crossed_Indiv1 The first individual resulting from the crossover.
: :Crossed_Indiv2 The second individual resulting from the crossover.
:



Description
~~~~~~~~~~~

crossover_ga_default is a crossover function for functions with
continuous variables. This crossover function is an extension of a
convexe combination. The crossed individuals are computed with the
following equations :


::

    mix = (1 + 2*Beta)*`rand`_(1,1) - Beta;
    Crossed_Indiv1 =     mix*Indiv1 + (1-mix)*Indiv2;
    Crossed_Indiv2 = (1-mix)*Indiv1 +     mix*Indiv2;


The Beta parameter should be set to a positive value. If Beta is set
to 0, the resulting crossover is a simple convexe combination between
the two parents. That may lead to a too fast convergence of the
genetic algorithm and may decrease the diversity of the individuals of
the population. If Beta is chosen strictly positive, that may allow
children to explore the domain beyond the domain explored by their
parents.



See Also
~~~~~~~~


+ `crossover_ga_binary`_ A crossover function for binary code
+ `mutation_ga_default`_ A continuous variable mutation function
+ `init_ga_default`_ A function a initialize a population
+ `optim_ga`_ A flexible genetic algorithm




References
~~~~~~~~~~
Michalewicz, Zbigniew


Genetic Algorithms + Data Structures = Evolution Programs
.. _init_ga_default: init_ga_default.html
.. _mutation_ga_default: mutation_ga_default.html
.. _crossover_ga_binary: crossover_ga_binary.html
.. _optim_ga: optim_ga.html


