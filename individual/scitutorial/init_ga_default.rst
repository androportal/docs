


init_ga_default
===============

A function a initialize a population



Calling Sequence
~~~~~~~~~~~~~~~~


::

    Pop_init = init_ga_default(popsize,param)




Arguments
~~~~~~~~~

:popsize the number of individuals to generate.
: :param a list of parameters.

    + "dimension": the size of the vector X. Default dimension=2.
    + "minbound": a vector of minimum bounds for the variable X. Default
      minbound = -2*ones(1,dimension).
    + "maxbound": a vector of maximum bounds for the variable X. Default
      maxbound=2*ones(1,dimension).

: :Pop_init a list which contains the initial population of
  individuals.
:



Description
~~~~~~~~~~~

This function generate an initial population containing pop_size
individuals. It uses the rand function to generate the points
uniformly distributed in the bounds. As a side effect, it modifies the
state of the random generator of the rand function. Other initial
populations might be generated from the grand function, or any other
uniform random generator (including low discrepancy sequences). In the
case were we want to compute another initial population, we might
define our own init function: in this case, we may use the
init_ga_default function as a template and plug our customized
population generator.



Examples
~~~~~~~~


::

    // Generate 10 points in 2 dimensions, in the 
    // interval [-2,2]^2.
    popsize = 10;
    ga_params = `init_param`_();
    ga_params = `add_param`_(ga_params,"dimension",2);
    ga_params = `add_param`_(ga_params,"minbound",[-2; -2]);
    ga_params = `add_param`_(ga_params,"maxbound",[2; 2]);
    Pop_init = init_ga_default(popsize,ga_params);
    for k = 1 : popsize
      x = Pop_init(k);
      xstr = `strcat`_(`string`_(x)," ");
      `mprintf`_("x[%d]=[%s]\n",k,xstr);
    end




See Also
~~~~~~~~


+ `crossover_ga_default`_ A crossover function for continuous variable
  functions
+ `mutation_ga_default`_ A continuous variable mutation function
+ `mutation_ga_binary`_ A function which performs binary mutation
+ `optim_ga`_ A flexible genetic algorithm


.. _crossover_ga_default: crossover_ga_default.html
.. _mutation_ga_default: mutation_ga_default.html
.. _optim_ga: optim_ga.html
.. _mutation_ga_binary: mutation_ga_binary.html


