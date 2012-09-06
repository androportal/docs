


temp_law_default
================

A SA function which computed the temperature of the next temperature
stage



Calling Sequence
~~~~~~~~~~~~~~~~


::

    T_next = temp_law_default(T,step_mean,step_var,temp_stage,n,param)




Arguments
~~~~~~~~~

:T the temperature applied during the last temperature stage
: :step_mean the mean of the objective function values computed during
  the last temperature stage
: :step_var the variance of the obejective function values computed
  during the last temperature stage
: :temp_stage the index of the current temperature stage
: :n the dimension of the decision variable (the x in f(x))
: :param a float between 0 and 1. Corresponds to the decrease in
  temperature of the geometric law (0.9 by default)
: :T_next the new temperature to be applied for the next temperature
  stage
:



Description
~~~~~~~~~~~


+ A SA function which computed the temperature of the next temperature
  stage




Examples
~~~~~~~~


::

    // This function implements the simple geometric temperature law
    function T=temp_law_default(T, step_mean, step_var)
      _alpha = 0.9;
      T = _alpha*T;
    endfunction




See Also
~~~~~~~~


+ `optim_sa`_ A Simulated Annealing optimization method
+ `compute_initial_temp`_ A SA function which allows to compute the
  initial temperature of the simulated annealing
+ `neigh_func_default`_ A SA function which computes a neighbor of a
  given point


.. _optim_sa: optim_sa.html
.. _neigh_func_default: neigh_func_default.html
.. _compute_initial_temp: compute_initial_temp.html


