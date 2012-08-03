====
"pvm_delhosts"
====

Scilab function Last update : 13/07/2005
**pvm_delhosts** - deletes hosts from the virtual machine.



Calling Sequence
~~~~~~~~~~~~~~~~

infos = pvm_delhosts(hosts)




Parameters
~~~~~~~~~~


+ **hosts** : row of strings, containing the names of the machines to
  be deleted.
+ **infos** : row of integers, contains the status code returned by
  the routine for the individual hosts.




Description
~~~~~~~~~~~

**pvm_delhosts** deletes the computers named in **hosts** from the
existing configuration of computers making up the virtual machine. All
PVM processes and the pvmd running on these computers are killed as
the computer is deleted. The array **info** can be checked to
determine the status of each host. Values less than zero indicate an
error, while zero values indicate a success.

If a host fails, the PVM system will continue to work and will
automatically delete the failing host from the virtual machine. It is
the responsibility of the application developer to make his
application tolerant of host failure.



See Also
~~~~~~~~

` **pvm_addhosts** `_,

.. _
      : ://./pvm/pvm_addhosts.htm


