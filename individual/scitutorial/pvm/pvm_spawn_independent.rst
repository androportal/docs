====
"pvm_spawn_independent"
====

Scilab function Last update : 13/07/2005
**pvm_spawn_independent** - Starts new PVM processes.



Calling Sequence
~~~~~~~~~~~~~~~~

[tids, numt] = pvm_spawn_independent(task, ntask, [where])




Parameters
~~~~~~~~~~


+ **task: ** string, which is the executable file name of the PVM
  process to be started. The executable must already reside on the host
  on which it is to be started. The name may be a file in the PVM search
  path or an absolute path. The default PVM search path is
  $HOME/pvm3/bin/$PVM_ARCH/ .
+ **ntask: ** integer, specifying the number of copies of the
  executable file to start.
+ **where: ** string (optional), can be a host name such as ``tequila
  .ens-lyon.fr'' or a PVM architecture class such as ``SUN4''.
+ **numt: ** integer, the actual number of tasks started. Values less
  than zero indicate a system error.
+ **tids** row of integers, array of the tids of the PVM processes
  started by this pvm_spawn_independent call.




Description
~~~~~~~~~~~

**pvm_spawn_independent** starts **ntask** copies of the executable
named **task** .

On systems that support environment variables,
**pvm_spawn_independent** passes selected variables from parent
environment to children tasks. If set, the envar **PVM_EXPORT** is
passed. If **PVM_EXPORT** contains other names (separated by ':') they
will be passed too. This is useful for e.g.:


::

    
    
     setenv DISPLAY myworkstation:0.0
     setenv MYSTERYVAR 13
     setenv PVM_EXPORT DISPLAY:MYSTERYVAR
       
        


The hosts on which the PVM processes are started are determined by the
**where** arguments. On return the array **tids** contains the PVM
task identifiers for each process started. If
**pvm_spawn_independent** starts one or more tasks, **numt** will be
the actual number of tasks started. If a system error occurs then
**numt** will be < 0. If **numt** is les than **ntask** then some
executables have failed to start. The last locations in the **tids**
array will contain error codes (see below for meaning). Note that the
first tids in the array are always valid.

When the argument **where** is omitted an heuristic (round-robin
assignment) is used to distribute the **ntask** processes across the
virtual machine.

In the special case where a multiprocessor is specified by **where** .
**pvm_spawn_independent** will start all copies on this single machine
using the vendor's underlying routines.



See Also
~~~~~~~~

` **pvm** `_,` **pvm_spawn** `_,

.. _
      : ://./pvm/pvm_spawn.htm
.. _
      : ://./pvm/pvm.htm


