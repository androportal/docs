====
"pvm_parent"
====

Scilab function Last update : 13/07/2005
**pvm_parent** - tid of the process that spawned the calling process.



Calling Sequence
~~~~~~~~~~~~~~~~

tid = pvm_parrent()




Parameters
~~~~~~~~~~


+ **tid** : integer, the task identifier of the parent of the calling
  process.




Description
~~~~~~~~~~~

**pvm_parent** returns the **tid** of the process that spawned the
calling process. If the calling process was not created with
**pvm_spawn** , then **tid** is set to **PvmNoParent=-23**



See Also
~~~~~~~~

` **pvm_spawn** `_,

.. _
      : ://./pvm/pvm_spawn.htm


