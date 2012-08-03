====
"syssize"
====

Scilab Function Last update : April 1993
**syssize** - size of state-space system



Calling Sequence
~~~~~~~~~~~~~~~~

[r,nx]=syssize(Sl)




Parameters
~~~~~~~~~~


+ **Sl** : linear system ( **syslin** list) in state-space
+ **r** : 1 x 2 real vector
+ **nx** : integer




Description
~~~~~~~~~~~

returns in **r** the vector [number of outputs, number of inputs] of
the linear system **Sl** . **nx** is the number of states of **Sl** .



See Also
~~~~~~~~

` **size** `_,

.. _
      : ://./control/../elementary/size.htm


