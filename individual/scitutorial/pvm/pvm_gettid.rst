====
"pvm_gettid"
====

Scilab function Last update : 13/07/2005
**pvm_gettid** - returns the tid of the process identified by a group
name and instance number



Calling Sequence
~~~~~~~~~~~~~~~~

[tid] = pvm_gettid(group, inum)




Parameters
~~~~~~~~~~


+ **group** : string, string that contains the name of an existing
  group.
+ **inum** : string, instance number of the process in the group.
+ **tid** : integer




Description
~~~~~~~~~~~

**pvm_gettid** returns the tid of the PVM process identified by the
group name **group** and the instance number **inum**

The returned value **tid** will be >= 0 if the call is successful and
will be will be < 0 if some error occurs.



See Also
~~~~~~~~

` **pvm_joingroup** `_,` **pvm_getinst** `_,

.. _
      : ://./pvm/pvm_getinst.htm
.. _
      : ://./pvm/pvm_joingroup.htm


