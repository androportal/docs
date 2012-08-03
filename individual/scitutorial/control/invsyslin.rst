====
"invsyslin"
====

Scilab Function Last update : April 1993
**invsyslin** - system inversion



Calling Sequence
~~~~~~~~~~~~~~~~

[sl2]=invsyslin(sl1)




Parameters
~~~~~~~~~~


+ **sl1,sl2** : **syslin** lists (linear systems in state space
  representation)




Description
~~~~~~~~~~~

Utility function. Computes the state form of the inverse **sl2** of
the linear system **sl1** (which is also given in state form).

The **D** -matrix is supposed to be full rank. Old stuff used by
**inv(S)** when **S** is a **syslin** list.



See Also
~~~~~~~~

` **rowregul** `_,` **inv** `_,

.. _
      : ://./control/../linear/inv.htm
.. _
      : ://./control/rowregul.htm


