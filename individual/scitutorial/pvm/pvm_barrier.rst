====
"pvm_barrier"
====

Scilab function Last update : 13/07/2005
**pvm_barrier** - blocks the calling process until all processes in a
group have called it.



Calling Sequence
~~~~~~~~~~~~~~~~

[info] = pvm_barrier(group,count)




Parameters
~~~~~~~~~~


+ **type** : string, name of an existing group.
+ **count** : integer, specifying the number of group members that
  must call pvm_barrier before they are all released.
+ **info** : integer, status code returned by the routine.




Description
~~~~~~~~~~~

**pvm_barrier** blocks the calling process until **count** members of
the **group** have called **pvm_barrier** . The **count** argument is
required because processes could be joining the given group after
other processes have called **pvm_barrier** . Thus PVM doesn't know
how many group members to wait for at any given instant. Although
**count** can be set less, it is typically the total number of members
of the group. So the logical function of the **pvm_barrier** call is
to provide a group synchronization. During any given barrier call all
participating group members must call barrier with the same count
value. Once a given barrier has been successfully passed,
**pvm_barrier** can be called again by the same group using the same
group name.

The returned value **info** will be zero if **pvm_barrier** is
successful and will be will be < 0 if some error occurs.



See Also
~~~~~~~~

` **pvm_joingroup** `_,

.. _
      : ://./pvm/pvm_joingroup.htm


