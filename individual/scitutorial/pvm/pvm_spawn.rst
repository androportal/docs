====
"pvm_spawn"
====

Scilab function Last update : 13/07/2005
**pvm_spawn** - Starts new Scilab processes.



Calling Sequence
~~~~~~~~~~~~~~~~

[tids, numt] = pvm_spawn(task, ntask, [nw], [where])




Parameters
~~~~~~~~~~


+ **task : string, which is the file name of the scilab script (see
  exec) to be** started. The Scilab script must already reside on the
  host on which it is to be started. The name must an absolute path.
+ **ntask** : integer, specifying the number of copies of the scilab
  script to start.
+ **win** : string (optional). If win is equal to ``nw'' the Scilab
  process will be spawned in background with out any window coming up.
+ **where** : string (optional), can be a host name such as ``tequila
  .ens-lyon.fr'' or a PVM architecture class such as ``SUN4''.
+ **numt** : integer, the actual number of tasks started. Values less
  than zero indicate a system error.
+ **tids** row of integers, array of the tids of the PVM processes
  started by this pvm_spawn call.




Description
~~~~~~~~~~~

**pvm_spawn** starts **ntask** copies of the scilab script **task** .

On systems that support environment, **pvm_spawn** passes selected
variables from parent environment to children tasks. If set, the envar
**PVM_EXPORT** is passed. If **PVM_EXPORT** contains other names
(separated by ':') they will be passed too. This is useful for e.g.:


::

    
    
    
     setenv DISPLAY myworkstation:0.0
     setenv MYSTERYVAR 13
     setenv PVM_EXPORT DISPLAY:MYSTERYVAR
       
        


The hosts on which the PVM processes are started are determined by the
**where** arguments. On return the array **tids** contains the PVM
task identifiers for each process started.

If **pvm_spawn** starts one or more tasks, **numt** will be the actual
number of tasks started. If a system error occurs then **numt** will
be < 0.

If **numt** is less than **ntask** then some executables have failed
to start and the user should check the last locations in the **tids**
array which will contain error codes (see below for meaning). The
first **numt** tids in the array are always valid.

When the argument **where** is omitted an heuristic (round-robin
assignment) is used to distribute the **ntask** processes across the
virtual machine.

In the special case where a multiprocessor is specified by **where**
**pvm_spawn** will start all copies on this single machine using the
vendor's underlying routines.



See Also
~~~~~~~~

` **pvm** `_,` **pvm_spawn_independent** `_,

.. _
      : ://./pvm/pvm_spawn_independent.htm
.. _
      : ://./pvm/pvm.htm


