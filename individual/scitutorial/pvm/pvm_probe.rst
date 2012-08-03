====
"pvm_probe"
====

Scilab function Last update : May 1998
**pvm_probe** - Check if message has arrived.



Calling Sequence
~~~~~~~~~~~~~~~~

[buffid] = pvm_probe(tid, msgtag)




Parameters
~~~~~~~~~~


+ **tid** : integer, task identifier of sending process supplied by
  the user.
+ **msgtag : integer, message tag supplied by the user. msgtag should
  be** >= 0.
+ **buffid** : integer, returning the value of the new active receive
  buffer identifier. Values less than zero indicate an error.




Description
~~~~~~~~~~~

**pvm_probe** checks to see if a message with label **msgtag** has
arrived from **tid** . If a matching message has arrived **pvm_probe**
returns a buffer identifier in **bufid** . This bufid can be used in a
pvm_bufinfo call to determine infor- mation about the message such as
its source and length.

If the requested message has not arrived, then pvm_probe returns with
a 0 in bufid. If some error occurs bufid will be < 0.

A -1 in msgtag or tid matches anything. This allows the user the
following options. If tid = -1 and msgtag is defined by the user, then
pvm_probe will accept a message from any process which has a matching
msgtag. If msgtag = -1 and tid is defined by the user, then pvm_probe
will accept any message that is sent from process tid. If tid = -1 and
msgtag = -1, then pvm_probe will accept any message from any process.

pvm_probe can be called multiple times to check if a given message has
arrived yet. After the message has arrived, pvm_recv must be called
before the message can be unpacked into the user's memory using the
unpack routines.

For example


::

    
    
    arrived = pvm_probe( tid, msgtag );
    if (arrived >= 0) then [bytes, msgtag, tid, info] = pvm_info(arrived); end
       
        




See Also
~~~~~~~~

` **pvm_recv** `_,

.. _
      : ://./pvm/pvm_recv.htm


