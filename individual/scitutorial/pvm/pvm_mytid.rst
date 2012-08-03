====
"pvm_mytid"
====

Scilab function Last update : 13/07/2005
**pvm_mytid** - returns the tid of the calling process.



Calling Sequence
~~~~~~~~~~~~~~~~

[tid] = pvm_mytid()




Parameters
~~~~~~~~~~


+ **tid** : integer, the task identifier of the calling PVM process.
  Values less than zero indicate an error.




Description
~~~~~~~~~~~

**pvm_mytid** enrolls this process into PVM on its first call. It also
generates a unique **tid**

if this process was not created by **pvm_spawn** . pvm_mytid returns
the **tid** of the calling process and can be called multiple times in
an application.

Any PVM system call (not just pvm_mytid) will enroll a task in PVM if
the task is not enrolled before the call.

The tid is a 32 bit positive integer created by the local pvmd. The 32
bits are divided into fields that encode various information about
this process such as its location in the virtual machine (i.e. local
pvmd address), the CPU number in the case where the process is on a
multiprocessor, and a process ID field. This information is used by
PVM and is not expected to be used by applications. Applications
should not attempt to predict or interpret the tid with the exception
of calling tidtohost()

If PVM has not been started before an application calls **pvm_mytid**
, the returned value will be will be < 0.



See Also
~~~~~~~~

` **pvm_tidtohost** `_,` **pvm_parent** `_,

.. _
      : ://./pvm/pvm_tidtohost.htm
.. _
      : ://./pvm/pvm_parent.htm


