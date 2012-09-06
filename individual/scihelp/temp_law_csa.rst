


temp_law_csa
============

The classical temperature decrease law



Calling Sequence
~~~~~~~~~~~~~~~~


::

    T_out = temp_law_csa(T_in,step_mean,step_var,temp_stage,n,param)




Arguments
~~~~~~~~~

:T_in the temperature at the current stage
: :step_mean the mean value of the objective function computed during
  the current stage
: :step_var the variance value of the objective function computed
  during the current stage
: :temp_stage the index of the current temperature stage
: :n the dimension of the decision variable (the x in f(x))
: :param not used for this temperature law
: :T_out the temperature for the temperature stage to come
:



Description
~~~~~~~~~~~


+ This function implements the classical annealing temperature
  schedule (the one for which the convergence of the simulated annealing
  has been proven).




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
    
    `mprintf`_('SA: the CSA algorithm\n');
    
    T0 = `compute_initial_temp`_(x0, rastrigin, Proba_start, It_Pre, `neigh_func_default`_);
    `mprintf`_('Initial temperatore T0 = %f\n', T0);
    
    [x_opt, f_opt, sa_mean_list, sa_var_list, temp_list] = `optim_sa`_(x0, rastrigin, It_extern, It_intern, T0, Log = %T, temp_law_csa, `neigh_func_csa`_);
    
    `mprintf`_('optimal solution:\n'); `disp`_(x_opt);
    `mprintf`_('value of the objective function = %f\n', f_opt);
    
    `scf`_();
    `subplot`_(2,1,1);
    `xtitle`_('Classical simulated annealing','Iteration','Mean / Variance');
    t = 1:`length`_(sa_mean_list);
    `plot`_(t,sa_mean_list,'r',t,sa_var_list,'g');
    `legend`_(['Mean','Variance']);
    `subplot`_(2,1,2);
    `xtitle`_('Temperature evolution','Iteration','Temperature');
    `plot`_(t,temp_list,'k-');




See Also
~~~~~~~~


+ `optim_sa`_ A Simulated Annealing optimization method
+ `temp_law_huang`_ The Huang temperature decrease law for the
  simulated annealing
+ `neigh_func_default`_ A SA function which computes a neighbor of a
  given point


.. _optim_sa: optim_sa.html
.. _neigh_func_default: neigh_func_default.html
.. _temp_law_huang: temp_law_huang.html


