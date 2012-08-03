====
"pvm_tidtohost"
====

Scilab function Last update : 13/07/2005
**pvm_tidtohost** - returns the host of the specified PVM process.



Calling Sequence
~~~~~~~~~~~~~~~~

[dtid] = pvm_tidtohost(tid)




Parameters
~~~~~~~~~~


+ **tid** : integer, task identifier of the PVM process in question.
+ **dtid** : integer, the tid of the host's pvmd3 or a negative value
  if an error.




Description
~~~~~~~~~~~

**pvm_tidtohost** returns the host id on which the process identified
by **tid** is running.

The returned value **dtid** will be >= 0 if the call is successful and
will be will be < 0 if some error occurs.



See Also
~~~~~~~~

` **pvm_config** `_,` **pvm_tasks** `_,

.. _
      : ://./pvm/pvm_tasks.htm
.. _
      : ://./pvm/pvm_config.htm


