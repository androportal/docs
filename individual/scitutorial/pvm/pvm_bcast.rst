====
"pvm_bcast"
====

Scilab function Last update : 13/07/2005
**pvm_bcast** - broacasts a message to all members of a group



Calling Sequence
~~~~~~~~~~~~~~~~

[info] = pvm_bcast(group, buff, msgtag)




Parameters
~~~~~~~~~~


+ **group** : string, string group name of an existing group.
+ **buff** : data to be send (any Scilab object).
+ **msgtag** : integer, message tag supplied by the user.
+ **info** : integer,




Description
~~~~~~~~~~~

**pvm_bcast** broadcasts a message to all the members of the group
named **group** .

In PVM 3.2 and later the broadcast message is not sent back to the
sender. Any PVM task can call **pvm_bcast()** , it need not be a
member of the group. The content of the message can be distinguished
by its tag **msgtag**

The returned value **info** will be zero if **pvm_bcast** is
successful and will be will be < 0 if some error occurs.

pvm_bcast is asynchronous. Computation on the sending processor
resumes as soon as the message is safely on its way to the receiving
processors. This is in contrast to synchronous communication, during
which computation on the sending processor halts until a matching
receive is executed by all the receiving processors.

pvm_bcast first determines the tids of the group members by checking a
group data base. A multicast is performed to these tids. If the group
is changed during a broadcast the change will not be reflected in the
broadcast. Multicasting is not supported by most multiprocessor
vendors. Typically their native calls only support broadcasting to
**all** the user's processes on a multiprocessor. Because of this
omission, pvm_bcast may not be an efficient communication method on
some multiprocessors.



See Also
~~~~~~~~

` **pvm_joingroup** `_,

.. _
      : ://./pvm/pvm_joingroup.htm


