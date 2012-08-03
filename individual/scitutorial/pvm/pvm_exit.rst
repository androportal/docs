====
"pvm_exit"
====

Scilab function Last update : May 1998
**pvm_exit** - tells the local pvmd that this process is leaving PVM.



Calling Sequence
~~~~~~~~~~~~~~~~

[info] = pvm_exit()




Parameters
~~~~~~~~~~


+ **info** : integer




Description
~~~~~~~~~~~

**pvm_exit** tells the local pvmd that this process is leaving PVM.
This routine does not kill the process, which can continue to perform
tasks just like any other serial process.

**pvm_exit** should be called by all PVM processes before they stop or
exit for good. It **must** be called by processes that were not
started with **pvm_spawn** .



Examples
~~~~~~~~


::

    
    
    pvm_exit()
     
      




See Also
~~~~~~~~

` **pvm** `_,

.. _
      : ://./pvm/pvm.htm


