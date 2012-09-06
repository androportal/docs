


compute_initial_temp
====================

A SA function which allows to compute the initial temperature of the
simulated annealing



Calling Sequence
~~~~~~~~~~~~~~~~


::

    T_init = compute_initial_temp(x0,f,proba_init, ItMX [, param] )




Arguments
~~~~~~~~~

:x0 the starting point
: :f the objective function which will be send to the simulated
  annealing for optimization
: :proba_init the initial probability of accepting a bad solution
  (usually around 0.7)
: :ItMX the number of iterations of random walk (usually around 100)
: :param optional, a data structure managed with the parameters
module. The `optim_sa` function is sensitive to the following fields.
    :"neigh_func" a function which computes a neighbor of a given point.
      The default neighbourhood function is `neigh_func_default`.
    : :"type_accept" the type of acceptation function. If the type is
      equal to "sa", then the initial temperature is computed from `T_init =
      - f_sum ./ log(proba_init)`. If the type is equal to "vfsa", it is
      computed from `T_init = abs(f_sum / log(1/proba_init - 1))`.
    :

: :T_init The initial temperature corresponding to the given
  probability of accepting a bad solution
:



Description
~~~~~~~~~~~

This function computes an initial temperature given an initial
probability of accepting a bad solution. This computation is based on
some iterations of random walk.



Examples
~~~~~~~~


::

    `deff`_('y=f(x)','y=sum(x.^2)');
        
    x0 = [2 2];
    Proba_start = 0.7;
    It_Pre = 100;
    x_test = `neigh_func_default`_(x0);
    
    saparams = `init_param`_();
    saparams = `add_param`_(comp_t_params,'neigh_func', `neigh_func_default`_);
    
    T0 = compute_initial_temp(x0, rastrigin, Proba_start, It_Pre, saparams);




See Also
~~~~~~~~


+ `optim_sa`_ A Simulated Annealing optimization method
+ `neigh_func_default`_ A SA function which computes a neighbor of a
  given point
+ `temp_law_default`_ A SA function which computed the temperature of
  the next temperature stage


.. _optim_sa: optim_sa.html
.. _neigh_func_default: neigh_func_default.html
.. _temp_law_default: temp_law_default.html


