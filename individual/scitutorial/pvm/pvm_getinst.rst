====
"pvm_getinst"
====

Scilab function Last update : 13/07/2005
**pvm_getinst** - returns the instance number in a group of a PVM
process.



Calling Sequence
~~~~~~~~~~~~~~~~

[inum] = pvm_getinst(group, tid)




Parameters
~~~~~~~~~~


+ **group** : string, string group name of an existing group.
+ **tid** : integer, task identifier of a PVM process.
+ **inum** : integer, instance number returned by the routine.




Description
~~~~~~~~~~~

**pvm_getinst** takes a group name **group** and a PVM task identifier
**tid** and returns the unique instance number that corresponds to the
input. It can be called by any task whether in the group or not.

The returned value **inum** will be >= 0 if the call is successful and
will be will be < 0 if some error occurs.



See Also
~~~~~~~~

` **pvm_joingroup** `_,` **pvm_gettid** `_,

.. _
      : ://./pvm/pvm_gettid.htm
.. _
      : ://./pvm/pvm_joingroup.htm


