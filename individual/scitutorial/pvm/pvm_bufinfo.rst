====
"pvm_bufinfo"
====

Scilab function Last update : May 1998
**pvm_bufinfo** - Returns information about a message buffer.



Calling Sequence
~~~~~~~~~~~~~~~~

[bytes, msgtag, tid, info] = pvm_bufinfo(bufid)




Parameters
~~~~~~~~~~


+ **bufid** : integer, specifying a particular message buffer
  identifier.
+ **bytes** : integer, size of the message in bytes (not very useful
  inside scilab).
+ **msgtag** : integer, label of the message. Useful when the message
  was received with a wildcard msgtag.
+ **tid** : integer, task ID of the source of the message.
+ **info** : integer, status code returned by the routine. Values less
  than zero indicate an error.




Description
~~~~~~~~~~~

**pvm_bufinfo** returns information about the requested message
buffer. Typically it is used to determine facts about the last
received message such as its size or source. **pvm_bufinfo** is
especially useful when an application is able to receive any incoming
message, and the action taken depends on the source tid and the msgtag
associated with the message that comes in first.

The returned value **info** will be zero if **pvm_bufinfo** is
successful and will be will be < 0 if some error occurs.



See Also
~~~~~~~~

` **pvm_recv** `_,

.. _
      : ://./pvm/pvm_recv.htm


