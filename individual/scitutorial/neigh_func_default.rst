


neigh_func_default
==================

A SA function which computes a neighbor of a given point



Calling Sequence
~~~~~~~~~~~~~~~~


::

    x_neigh = neigh_func_default(x_current,T)
    x_neigh = neigh_func_default(x_current,T,param)




Arguments
~~~~~~~~~

:x_current the point for which we want to compute a neighbor
: :T the current temperature. This parameter is ignored but is there
  to make all the neighbour function consistent.
: :param a two columns vector. The first column correspond to the
  negative amplitude of variation and the second column corresponds to
  the positive amplitude of variation of the neighborhood. By default,
  the first column is a column of -0.1 and the second column is a column
  of 0.1.
: :x_neigh the computed neighbor
:



Description
~~~~~~~~~~~

This function computes a neighbor of a given point. For example, for a
continuous vector, a neighbor will be produced by adding some noise to
each component of the vector. For a binary string, a neighbor will be
produced by changing one bit from 0 to 1 or from 1 to 0.



Examples
~~~~~~~~


::

    function y=rastrigin(x)
      y = x(1)^2+x(2)^2-`cos`_(12*x(1))-`cos`_(18*x(2));
    endfunction
        
    x0          = [2 2];
    Proba_start = 0.7;
    It_Pre      = 100;
    It_extern   = 100;
    It_intern   = 1000;
    x_test = neigh_func_default(x0,%nan);
    
    saparams = `init_param`_();
    saparams = `add_param`_(comp_t_params,'neigh_func', neigh_func_default);
    
    T0 = `compute_initial_temp`_(x0, rastrigin, Proba_start, It_Pre, saparams);
    Log = %T;
    [x_opt, f_opt, sa_mean_list, sa_var_list] = `optim_sa`_(x0, rastrigin, It_extern, It_intern, T0, Log,saparams);
    
    `mprintf`_('optimal solution:\n'); `disp`_(x_opt);
    `mprintf`_('value of the objective function = %f\n', f_opt);




See Also
~~~~~~~~


+ `optim_sa`_ A Simulated Annealing optimization method
+ `compute_initial_temp`_ A SA function which allows to compute the
  initial temperature of the simulated annealing
+ `temp_law_default`_ A SA function which computed the temperature of
  the next temperature stage


.. _optim_sa: optim_sa.html
.. _temp_law_default: temp_law_default.html
.. _compute_initial_temp: compute_initial_temp.html


