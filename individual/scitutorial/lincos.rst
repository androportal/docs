


lincos
======

Constructs by linearization a linear state-space model from a general
dynamical system described by a xcos diagram



Calling Sequence
~~~~~~~~~~~~~~~~


::

    sys= lincos(scs_m [,x0,u0 [,param] ])




Module
~~~~~~


+ `xcos`_




Description
~~~~~~~~~~~

Construct a linear state-space system by linearizing a model given as
an xcos diagram. The idea is to transform a `sub-diagram`_ to a linear
state-space model. The sub-diagram should have `inputs`_ and
`outputs`_.

The output is a Scilab data structure of type continuous-time state-
space linear system.




::

    // loading data
    `exec`_("SCI/modules/xcos/tests/unit_tests/PENDULUM_ANIM.sci");
    `exec`_("SCI/modules/xcos/tests/unit_tests/anim_pen.sci");
    
    `loadXcosLibs`_(); `loadScicos`_();
    `importXcosDiagram`_("SCI/modules/xcos/tests/unit_tests/pendulum_anim45.xcos");
    
    // specific context data
    M  = 10;
    m  = 3;
    l  = 3;
    ph = 0.1;
    
    // looking for the Superblock to linearize
    for i=1:`length`_(scs_m.objs)
        if `typeof`_(scs_m.objs(i))=="Block" & scs_m.objs(i).gui=="SUPER_f" then
            scs_m = scs_m.objs(i).model.rpar;
            break;
        end
    end
    
    sys = lincos(scs_m);
    
    `bode`_(sys);




Arguments
~~~~~~~~~


+ **scs_m :** a xcos data structure
+ **x0 :** column vector. Continuous state around which linearization
  to be done (default 0)
+ **u0 :** column vector. Input around which linearization to be done
  (default 0)
+ **param :** param: list with two elements (default list(1.d-6,0))
  param(1): scalar. Perturbation level for linearization; the following
  variation is used del([x;u])_i = param(1)+param(1)*1d-4*abs([x;u])_i.
  param(2): scalar. Time t.
+ **sys :** state-space system




See Also
~~~~~~~~


+ `steadycos - Finds an equilibrium state of a general dynamical
  system described by a xcos diagram (Scilab Function)`_
+ `scicos_simulate - Function for running xcos simulation in batch
  mode (Scilab Function)`_


.. _scicos_simulate - Function for running xcos simulation in batch mode (Scilab Function): scicos_simulate.html
.. _inputs: IN_f.html
.. _sub-diagram: SUPER_f.html
.. _outputs: OUT_f.html
.. _xcos: xcos.html
.. _steadycos - Finds an equilibrium state of a general dynamical system described by a xcos diagram (Scilab Function): steadycos.html


