====
"pvm_recv"
====

Scilab function Last update : 28/06/2005
**pvm_recv** - receive a message.



Calling Sequence
~~~~~~~~~~~~~~~~

[buff, info, msgtid, tag] = pvm_recv(tid, msgtag)




Parameters
~~~~~~~~~~


+ **tid** : integer, task identifier of sending process supplied by
  the user.
+ **msgtag : integer, message tag supplied by the user. msgtag should
  be** >= 0.
+ **buff** : scilab variable, where the received message will be
  stored.
+ **info** : integer, status code returned by the routine. Values less
  than zero indicate an error.
+ **msgtid : integer, returning the source of the message. Useful when
  the** message was received with a wildcard tid.
+ **tag** : integer, returning the message label. Useful when the
  message was received with a wildcard msgtag.




Description
~~~~~~~~~~~

**pvm_recv** blocks the process until a message with label **msgtag**
( **-1** can be used to match all message tags) has arrived from
**tid** ( **-1** can be used to match all tids). **pvm_recv** returns
the message in **buff** .

If **tid=-1** and **msgtag** is defined by the user, then **pvm_recv**
will accept a message from any process which has a matching **msgtag**
.

If **msgtag = -1** and **tid** is defined by the user, then
**pvm_recv** will accept any message that is sent from process **tid**
. If **tid=-1** and **msgtag = -1** then **pvm_recv** will accept any
message from any process.

When wildcard are used, the application is able to receive any
incoming message. If the action taken depends on the source tid and
the msgtag associated with the message that comes in first, the
information given by msgtid and tag can be very usefull.

The PVM model guarantees the following about message order. If task 1
sends message A to task 2, then task 1 sends message B to task 2,
message A will arrive at task 2 before message B. Moreover, if both
messages arrive before task 2 does a receive, then a wildcard receive
will always return message A.

**info** will be the status code returned by the routine. If some
error occurs then it will be < 0.

pvm_recv is blocking which means the routine waits until a message
matching the user specified tid and msgtag values arrives at the local
pvmd. If the message has already arrived then pvm_recv returns
immediately with the message.

Once pvm_recv returns, the data in the message can be unpacked into
the user's memory using the unpack routines.



See Also
~~~~~~~~

` **pvm_send** `_,` **pvm_bcast** `_,

.. _
      : ://./pvm/pvm_send.htm
.. _
      : ://./pvm/pvm_bcast.htm


