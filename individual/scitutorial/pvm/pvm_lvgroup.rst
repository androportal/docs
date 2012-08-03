====
"pvm_lvgroup"
====

Scilab function Last update : 13/07/2005
**pvm_lvgroup** - Unenrolls the calling process from a named group.



Calling Sequence
~~~~~~~~~~~~~~~~

[info] = pvm_lvgroup(group)




Parameters
~~~~~~~~~~


+ **group** : string, group name of an existing group.
+ **info** : integer, status code returned by the routine.




Description
~~~~~~~~~~~

**pvm_lvgroup** unenrolls the calling process from the group named
**group**

The returned value will be >= 0 if the call is successful and will be
will be < 0 if some error occurs.

If a process leaves a group by calling either pvm_lvgroup or pvm_exit,
and later rejoins the same group, the process may be assigned a new
instance number. Old instance numbers are reassigned to processes
calling pvm_joingroup.



See Also
~~~~~~~~

` **pvm_joingroup** `_,

.. _
      : ://./pvm/pvm_joingroup.htm


