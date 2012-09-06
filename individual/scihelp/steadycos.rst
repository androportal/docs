


steadycos
=========

Finds an equilibrium state of a general dynamical system described by
a xcos diagram



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [X,U,Y,XP]=steadycos(scs_m,X,U,Y,Indx,Indu,Indy [,Indxp [,param ] ])




Module
~~~~~~


+ `xcos`_




Description
~~~~~~~~~~~

This function finds the steady state for a given system described by a
xcos diagram or `sub-diagram`_. The diagram should have `inputs`_ and
`outputs`_.The steady state concern only the continuous-time dynamics.




::

    // loading data
    `exec`_("SCI/modules/xcos/tests/unit_tests/PENDULUM_ANIM.sci");
    `exec`_("SCI/modules/xcos/tests/unit_tests/anim_pen.sci");
    `importXcosDiagram`_("SCI/modules/xcos/tests/unit_tests/pendulum_anim45.xcos");
    
    // configure the context
    M  = 10;
    m  = 3;
    l  = 3;
    ph = 0.1;
    
    // look for the specific sub-diagram to work on
    for i=1:`length`_(scs_m.objs)
        if `typeof`_(scs_m.objs(i))=="Block" & scs_m.objs(i).gui=="SUPER_f" then
            scs_m = scs_m.objs(i).model.rpar;
            break;
        end
    end
    
    [X,U,Y,XP] = steadycos(scs_m,[],[],[],[],1,1:$);




Arguments
~~~~~~~~~


+ **scs_m :** a xcos data structure
+ **X:** column vector. Continuous state. Can be set to [] if zero.
+ **U:** column vector. Input. Can be set to [] if zero.
+ **Y:** column vector. Output. Can be set to [] if zero.
+ **Indx :** index of entries of X that are not fixed. If all can
  vary, set to 1:$
+ **Indu :** index of entries of U that are not fixed. If all can
  vary, set to 1:$
+ **Indy :** index of entries of Y that are not fixed. If all can
  vary, set to 1:$
+ **Indxp :** index of entries of XP (derivative of x) that need not
  be zero. If all can vary, set to 1:$. Default [].
+ **param :** list with two elements (default list(1.d-6,0)).
  param(1): scalar. Perturbation level for linearization; the following
  variation is used del([x;u])_i = param(1)+param(1)*1d-4*abs([x;u])_i.
  param(2): scalar. Time t.
+ **X:** steady state X
+ **U:** stationary input U
+ **Y:** output corresponding to steady state found
+ **XP :** derivative of the state corresponding to steady state found




File content
~~~~~~~~~~~~


+ SCI/modules/scicos/macros/scicos_auto/steadycos.sci




See Also
~~~~~~~~


+ `lincos - Constructs by linearization a linear state-space model
  from a general dynamical system described by a xcos diagram (Scilab
  Function)`_
+ `scicos_simulate - Function for running xcos simulation in batch
  mode (Scilab Function)`_
+ `xcos - Block diagram editor and GUI for the hybrid simulator
  (Scilab Function)`_


.. _scicos_simulate - Function for running xcos simulation in batch mode (Scilab Function): scicos_simulate.html
.. _inputs: IN_f.html
.. _sub-diagram: SUPER_f.html
.. _lincos - Constructs by linearization a linear state-space model from a general dynamical system described by a xcos diagram (Scilab Function): lincos.html
.. _outputs: OUT_f.html
.. _xcos - Block diagram editor and GUI for the hybrid simulator (Scilab Function): xcos.html


