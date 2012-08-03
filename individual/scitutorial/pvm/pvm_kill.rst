====
"pvm_kill"
====

Scilab function Last update : 13/07/2005
**pvm_kill** - Terminates a specified PVM process.



Calling Sequence
~~~~~~~~~~~~~~~~

[infos] = pvm_kill(tids)




Parameters
~~~~~~~~~~


+ **tids** : row of integer, task identifier of the PVM process to be
  killed (not yourself).
+ **infos** : row of integer, status code returned by the routine.
  Values less than zero indicate an error.




Description
~~~~~~~~~~~

**pvm_kill** sends a terminate ( **SIGTERM** ) signal to the PVM
process identified by **tids** .

In the case of multiprocessors the terminate signal is replaced with a
host dependent method for killing a process.

The array **infos** can be checked to determine the status for each
process. Values less than zero indicate an error, while zero values
indicate a success.

**pvm_kill** is not designed to kill the calling process. To kill
yourself in C call **pvm_exit()** followed by **quit()** .



See Also
~~~~~~~~

` **pvm_exit** `_,

.. _
      : ://./pvm/pvm_exit.htm


