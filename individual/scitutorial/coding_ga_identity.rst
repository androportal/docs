


coding_ga_identity
==================

A "no-operation" conversion function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    pop_out = coding_ga_identity(pop_in,direction,param)




Arguments
~~~~~~~~~

:pop_in the population to be converted.
: :direction "code" or "decode". This value has no influence of the
  state of pop_in.
: :param a parameter list. For this function, there are no useful
  parameters set.
: :pop_out a population identical to pop_in.
:



Description
~~~~~~~~~~~

This function is a do-nothing function. It is essentially useful to
implement an evolutionnary algorithm. In an evolutionnary algorithm,
we work directly on the variable and not on a binary code.



See Also
~~~~~~~~


+ `mutation_ga_default`_ A continuous variable mutation function
+ `crossover_ga_default`_ A crossover function for continuous variable
  functions
+ `init_ga_default`_ A function a initialize a population
+ `optim_ga`_ A flexible genetic algorithm


.. _crossover_ga_default: crossover_ga_default.html
.. _mutation_ga_default: mutation_ga_default.html
.. _init_ga_default: init_ga_default.html
.. _optim_ga: optim_ga.html


