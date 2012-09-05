


crossover_ga_binary
===================

A crossover function for binary code



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Crossed_Indiv1,Crossed_Indiv2] = crossover_ga_binary(Indiv1,Indiv2,param)




Arguments
~~~~~~~~~

:Indiv1 the first individual (here a binary code) to be crossed-over.
: :Indiv2 the second individual to be crossed-over.
: :param a list of parameters.

    + 'binary_length': the length of the binary code.
    + 'multi_cross': a boolean. If %T then we allow several cuts in the
      binary code.
    + 'multi_cross_nb': the number of cuts in the binary code. Only used
      when multi_cross is set to %T.

: :Crossed_Indiv1 The first individual obtained by the cross-over
  function.
: :Crossed_Indiv2 The second individual obtained by the cross-over
  function.
:



Description
~~~~~~~~~~~


+ This function implements a classical binary cross-over.




See Also
~~~~~~~~


+ `crossover_ga_binary`_ A crossover function for binary code
+ `crossover_ga_default`_ A crossover function for continuous variable
  functions
+ `mutation_ga_binary`_ A function which performs binary mutation
+ `optim_ga`_ A flexible genetic algorithm


.. _crossover_ga_default: crossover_ga_default.html
.. _crossover_ga_binary: crossover_ga_binary.html
.. _mutation_ga_binary: mutation_ga_binary.html
.. _optim_ga: optim_ga.html


