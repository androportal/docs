====
"pvm_gsize"
====

Scilab function Last update : 13/07/2005
**pvm_gsize** - returns the number of members presently in the named
group.



Calling Sequence
~~~~~~~~~~~~~~~~

[nb] = pvm_gsize(group)




Parameters
~~~~~~~~~~


+ **group** : string, string group name of an existing group.
+ **nb** : integer, returning the number of members presently in the
  group.




Description
~~~~~~~~~~~

**pvm_gsize** returns the size of the group named **group**

The returned value **nb** will be >= 0 if the call is successful and
will be will be < 0 if some error occurs.

Since groups can change dynamically in PVM 3.0, this routine can only
guarantee to return the instantaneous size of a given group.



See Also
~~~~~~~~

` **pvm_joingroup** `_,

.. _
      : ://./pvm/pvm_joingroup.htm


