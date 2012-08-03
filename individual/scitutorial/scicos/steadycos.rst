====
"steadycos"
====

Scilab Function
**steadycos** - Finds an equilibrium state of a general dynamical
system described by a scicos diagram



Calling Sequence
~~~~~~~~~~~~~~~~

[X,U,Y,XP]=steadycos(scs_m,X,U,Y,Indx,Indu,Indy [,Indxp [,param ] ])




Parameters
~~~~~~~~~~


+ **scs_m** : a Scicos data structure
+ **X** : column vector. Continuous state. Can be set to [] if zero.
+ **U** : column vector. Input. Can be set to [] if zero.
+ **Y** : column vector. Output. Can be set to [] if zero.
+ **Indx** : index of entries of X that are not fixed. If all can
  vary, set to 1:$
+ **Indu** : index of entries of U that are not fixed. If all can
  vary, set to 1:$
+ **Indy** : index of entries of Y that are not fixed. If all can
  vary, set to 1:$
+ **Indxp** : index of entries of XP (derivative of x) that need not
  be zero. If all can vary, set to 1:$. Default [].
+ **param** : list with two elements (default list(1.d-6,0)).
  param(1): scalar. Perturbation level for linearization; the following
  variation is used del([x;u])_i = param(1)+param(1)*1d-4*abs([x;u])_i.
  param(2): scalar. Time t.
+ **X** : steady state X
+ **U** : stationary input U
+ **Y** : output corresponding to steady state found
+ **XP** : derivative of the state corresponding to steady state found




Description
~~~~~~~~~~~

**** This function finds the steady state for a given system described
  by a Scicos diagram. The diagram consists in general of a Super block
  with input and output port blocks. The steady states concerns only the
  continuous-time dynamics.




See Also
~~~~~~~~

` ** lincos** `_,` ** scicos_simulate** `_,` ** scicos** `_,



Authors
~~~~~~~

**Ramine Nikoukhah**




Used Function
~~~~~~~~~~~~~
optim
.. _
      : ://./scicos/scicos_simulate.htm
.. _
      : ://./scicos/scicos.htm
.. _
      : ://./scicos/lincos.htm


