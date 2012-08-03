====
"pvm_start"
====

Scilab function Last update : May 1998
**pvm_start** - Start the PVM daemon



Calling Sequence
~~~~~~~~~~~~~~~~

[info] = pvm_start(["hostfile"])




Parameters
~~~~~~~~~~


+ **hostfile** : name of the hostfile describing the configuration for
  each host of the virtual machine.
+ **info** : integer, status code returned by the routine. Values less
  than zero indicate an error.




Description
~~~~~~~~~~~

**pvm_start** starts the **Pvmd3** daemon process which coordinates
unix hosts in a virtual machine. One pvmd3 must run on each host
component of the virtual machine. They provide the communication and
process control functions needed by the user's PVM processes. The
local and remote pvmds can also be started from the PVM console
program pvm.

The optional parameter is the name of a host file. See pvmd3 for more
details on the host file format. If no argument is given to
**pvm_start** , but the variable PVM_ROOT is set, scilab will try to
load the file $HOME/.pvmd.conf. If this file does not exist, or the
variable PVM_ROOT is not set, scilab will try to load the default file
$SCI/.pvmd.conf. In all other cases, scilab will supposed that PVM and
scilab are in standard place on your net.

Note that, to be able to start a PVM daemon, scilex must know the
place to find both scilex and pvmd. Normally, scilex will start a new
PVM daemon by using rsh. See the help on pvmd3 and pvm for more detail
on how to start/stop pvm.

For example:


::

    
    
    pvm_start()
     ans  =
     
        0. 
    -->pvm_start()
     ans  =
     
      - 28.  
       
        


Error -28 means: pvm_start_pvmd(): Duplicate host



See Also
~~~~~~~~

` **pvmd3** `_,` **pvm_halt** `_,` **pvm_addhosts** `_,`
**pvm_config** `_,

.. _
      : ://./pvm/pvm_addhosts.htm
.. _
      : ://./pvm/pvm_halt.htm
.. _
      : ://./pvm/pvmd3.htm
.. _
      : ://./pvm/pvm_config.htm


