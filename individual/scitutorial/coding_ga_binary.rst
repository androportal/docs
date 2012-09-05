


coding_ga_binary
================

A function which performs conversion between binary and continuous
representation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    pop_out = coding_ga_binary(pop_in,direction,param)




Arguments
~~~~~~~~~

:pop_in a list which contains all the individuals in the current
  population.
: :direction 'code' or 'decode'. If direction == 'code' then we
  perform a continuous to binary encoding. Else, we convert from binary
  to continuous.
: :param a parameter list.

    + 'binary_length': the number of bits by variables. If binary_length =
      8 and the variable X is of dimension 2 then the binary code will be 16
      bits length.
    + 'minboun': a vector of minimum bounds for the variable X.
    + 'maxbound': a vector of maximum bounds for the variable X.

: :pop_out the population coded to binary or decoded to continuous
  values.
:



Description
~~~~~~~~~~~


+ This function allows to code or decode a population of individuals
  from (resp. to) continuous variables to (resp. from) binary.




See Also
~~~~~~~~


+ `optim_ga`_ A flexible genetic algorithm
+ `mutation_ga_binary`_ A function which performs binary mutation
+ `crossover_ga_binary`_ A crossover function for binary code


.. _crossover_ga_binary: crossover_ga_binary.html
.. _optim_ga: optim_ga.html
.. _mutation_ga_binary: mutation_ga_binary.html


