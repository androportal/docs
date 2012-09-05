


mutation_ga_binary
==================

A function which performs binary mutation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    Mut_Indiv = mutation_ga_binary(Indiv,param)




Arguments
~~~~~~~~~

:Indiv the individual on which we will perform the mutation.
: :param a list of parameters.

    + "binary_length": the size of the binary code.
    + "multi_mut": a boolean. If %T, several random bits will be flipped.
    + "multi_mut_nd": the number of bits to be flipped. Works only when
      multi_mut is set to %T.

: :Mut_Indiv The mutated individual.
:



Description
~~~~~~~~~~~

This function performs a classical multi-bits binary mutation.



See Also
~~~~~~~~


+ `mutation_ga_default`_ A continuous variable mutation function
+ `crossover_ga_binary`_ A crossover function for binary code
+ `init_ga_default`_ A function a initialize a population
+ `optim_ga`_ A flexible genetic algorithm


.. _init_ga_default: init_ga_default.html
.. _mutation_ga_default: mutation_ga_default.html
.. _crossover_ga_binary: crossover_ga_binary.html
.. _optim_ga: optim_ga.html


