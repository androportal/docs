


temp_law_vfsa
=============

This function implements the Very Fast Simulated Annealing from L.
Ingber



Calling Sequence
~~~~~~~~~~~~~~~~


::

    T_out = temp_law_vfsa(T_in,step_mean,step_var,temp_stage,n, param)




Arguments
~~~~~~~~~

:T_in the temperature at the current stage
: :step_mean the mean value of the objective function computed during
  the current stage
: :step_var the variance value of the objective function computed
  during the current stage
: :temp_stage the index of the current temperature stage
: :n the dimension of the decision variable (the x in f(x))
: :param a float: the 'c' parameter of the VFSA method (0.01 by
  default)
: :T_out the temperature for the temperature stage to come
:



Description
~~~~~~~~~~~

This function implements the Very Fast Simulated Annealing from L.
Ingber.



Examples
~~~~~~~~


::

    function y=rastrigin(x)
      y = x(1)^2+x(2)^2-`cos`_(12*x(1))-`cos`_(18*x(2));
    endfunction
    
    x0 = [-1, -1];
    Proba_start = 0.8;
    It_intern = 1000;
    It_extern = 30;
    It_Pre    = 100;
    
    `mprintf`_('SA: the VFSA algorithm\n');
    
    T0 = `compute_initial_temp`_(x0, rastrigin, Proba_start, It_Pre, `neigh_func_default`_);
    `mprintf`_('Initial temperatore T0 = %f\n', T0);
    
    Log = %T;
    [x_opt, f_opt, sa_mean_list, sa_var_list, temp_list] = `optim_sa`_(x0, rastrigin, It_extern, It_intern, T0, Log);
    
    `mprintf`_('optimal solution:\n'); `disp`_(x_opt);
    `mprintf`_('value of the objective function = %f\n', f_opt);
    
    `scf`_();
    `subplot`_(2,1,1);
    `xtitle`_('VFSA simulated annealing','Iteration','Mean / Variance');
    t = 1:`length`_(sa_mean_list);
    `plot`_(t,sa_mean_list,'r',t,sa_var_list,'g');
    `legend`_(['Mean','Variance']);
    `subplot`_(2,1,2);
    `xtitle`_('Temperature evolution','Iteration','Temperature');
    `plot`_(t,temp_list,'k-');




See Also
~~~~~~~~


+ `optim_sa`_ A Simulated Annealing optimization method
+ `neigh_func_vfsa`_ The Very Fast Simulated Annealing neighborhood
  relationship
+ `temp_law_huang`_ The Huang temperature decrease law for the
  simulated annealing


.. _optim_sa: optim_sa.html
.. _neigh_func_vfsa: neigh_func_vfsa.html
.. _temp_law_huang: temp_law_huang.html


