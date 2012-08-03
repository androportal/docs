====
"pvm_joingroup"
====

Scilab function Last update : 13/07/2005
**pvm_joingroup** - enrolls the calling process in a named group.



Calling Sequence
~~~~~~~~~~~~~~~~

[inum] = pvm_joingroup(group)




Parameters
~~~~~~~~~~


+ **group** : string, string group name of an existing group.
+ **inum** : integer, instance number returned by the routine.




Description
~~~~~~~~~~~

**pvm_joingroup** enrolls the calling task in the group named
**group** and returns the instance number of this task in this group.

The returned value will be >= 0 if the call is successful and will be
will be < 0 if some error occurs.

Instance numbers start at 0 and count up. When using groups a (group,
inum) pair uniquely identifies a PVM process. This is consistent with
the PVM 2.4 naming schemes. If a task leaves a group by calling
pvm_lvgroup and later rejoins the same group, the task is not
guaranteed to get the same instance number. PVM attempts to reuse old
instance numbers, so when a task joins a group it will get the lowest
available instance number. A task can be a member of multiple groups
simultaneously.



See Also
~~~~~~~~

` **pvm_lvgroup** `_,

.. _
      : ://./pvm/pvm_lvgroup.htm


