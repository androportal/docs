====
"lincos"
====

Scilab Function
**lincos** - Constructs by linearization a linear state-space model
from a general dynamical system described by a scicos diagram



Calling Sequence
~~~~~~~~~~~~~~~~

sys= lincos(scs_m [,x0,u0 [,param] ])




Parameters
~~~~~~~~~~


+ **scs_m** : a Scicos data structure
+ **x0** : column vector. Continuous state around which linearization
  to be done (default 0)
+ **u0** : column vector. Input around which linearization to be done
  (default 0)
+ **param** : param: list with two elements (default list(1.d-6,0))
  param(1): scalar. Perturbation level for linearization; the following
  variation is used del([x;u])_i = param(1)+param(1)*1d-4*abs([x;u])_i.
  param(2): scalar. Time t.
+ **sys** : state-space system




Description
~~~~~~~~~~~

**** Construct a linear state-space system by linearizing a model
  given as a Scicos diagram.
**** The output is a Scilab data structure of type continuous-time
  state-space linear system.




See Also
~~~~~~~~

` ** steadycos** `_,` ** scicos_simulate** `_,



Authors
~~~~~~~

**Ramine Nikoukhah**


.. _
      : ://./scicos/steadycos.htm
.. _
      : ://./scicos/scicos_simulate.htm


