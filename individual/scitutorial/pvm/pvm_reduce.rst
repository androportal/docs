====
"pvm_reduce"
====

Scilab function Last update : 13/07/2005
**pvm_reduce** - Performs a reduce operation over members of the
specified group



Calling Sequence
~~~~~~~~~~~~~~~~

[buff, info] = pvm_reduce(func, buff, msgtag, group, rootginst)




Parameters
~~~~~~~~~~


+ **func : string, defines the operation performed on the global**
  data. Should be : Max, Min, Sum or Pro.
+ **buff : scalar, local scilab variable. On return, the data array
  on** the root will be overwritten with the result of the reduce
  operation over the group.
+ **msgtag : integer, message tag supplied by the user. msgtag**
  should be >= 0. It allows the user's program to distinguish between
  different kinds of messages.
+ **group** : string, group name of an existing group.
+ **rootginst : integer, instance number of group member who gets
  the** result.
+ **info : integer, status code returned by the routine. Values** less
  than zero indicate an error.




Description
~~~~~~~~~~~

**pvm_reduce** performs global operations such as max, min, sum or
product over all the tasks in a group. All group members call
pvm_reduce with their local data, and the result of the reduction
operation appears on the user specified root task root. The root task
is identified by its instance number in the group.

Max and Min are implemented for scalar datatypes (double, complex).
For complex values the minimum [maximum] is that complex pair with the
minimum [maximum] modulus. Sum and Product are implemented for scalar
datatypes.

Note: pvm_reduce does not block. If a task calls pvm_reduce and then
leaves the group before the root has called pvm_reduce an error may
occur.



See Also
~~~~~~~~

` **pvm_bcast** `_,` **pvm_barrier** `_,` **pvm_send** `_,`
**pvm_getinst** `_,` **pvm_gsize** `_,` **pvm_joingroup** `_,`
**pvm_lvgroup** `_,

.. _
      : ://./pvm/pvm_getinst.htm
.. _
      : ://./pvm/pvm_send.htm
.. _
      : ://./pvm/pvm_bcast.htm
.. _
      : ://./pvm/pvm_lvgroup.htm
.. _
      : ://./pvm/pvm_joingroup.htm
.. _
      : ://./pvm/pvm_barrier.htm
.. _
      : ://./pvm/pvm_gsize.htm


