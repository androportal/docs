====
"dtsi"
====

Scilab Function Last update : April 1993
**dtsi** - stable anti-stable decomposition



Calling Sequence
~~~~~~~~~~~~~~~~

[Ga,Gs,Gi]=dtsi(G,[tol])




Parameters
~~~~~~~~~~


+ **G** : linear system ( **syslin** list)
+ **Ga** : linear system ( **syslin** list) antistable and strictly
  proper
+ **Gs** : linear system ( **syslin** list) stable and strictly proper
+ **Gi** : real matrix (or polynomial matrix for improper systems)
+ **tol** : optional parameter for detecting stables poles. Default
  value: **100*%eps**




Description
~~~~~~~~~~~

returns the stable-antistable decomposition of **G** :

**G = Ga + Gs + Gi** , **(Gi = G(oo))**

**G** can be given in state-space form or in transfer form.



See Also
~~~~~~~~

` **syslin** `_,` **pbig** `_,` **psmall** `_,` **pfss** `_,

.. _
      : ://./robust/../linear/psmall.htm
.. _
      : ://./robust/../elementary/syslin.htm
.. _
      : ://./robust/../control/pfss.htm
.. _
      : ://./robust/../linear/pbig.htm


