====
"h_norm"
====

Scilab Function Last update : April 1993
**h_norm** - H-infinity norm



Calling Sequence
~~~~~~~~~~~~~~~~

[hinfnorm [,frequency]]=h_norm(sl [,rerr])




Parameters
~~~~~~~~~~


+ **sl** : the state space system ( **syslin** list)
+ **rerr** : max. relative error, default value **1e-8**
+ **hinfnorm** : the infinity norm of **Sl**
+ **frequency** : frequency at which maximum is achieved




Description
~~~~~~~~~~~

produces the infinity norm of a state-space system (the maximum over
all frequencies of the maximum singular value).



See Also
~~~~~~~~

` **linfn** `_,` **linf** `_,` **svplot** `_,

.. _
      : ://./robust/linf.htm
.. _
      : ://./robust/linfn.htm
.. _
      : ://./robust/../control/svplot.htm


