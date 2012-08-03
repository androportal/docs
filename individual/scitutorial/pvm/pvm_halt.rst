====
"pvm_halt"
====

Scilab function Last update : May 1998
**pvm_halt** - stops the PVM daemon



Calling Sequence
~~~~~~~~~~~~~~~~

[info] = pvm_halt()




Parameters
~~~~~~~~~~


+ **info** : integer, status code returned by the routine. Values less
  than zero indicate an error.




Description
~~~~~~~~~~~

**pvm_halt** kills all PVM tasks, all the remote daemons, and the
local daemon. If the master pvmd is killed manually it should be sent
a **SIGTERM** signal to allow it to kill the remote pvmds and clean up
various files.

The pvmd can be killed in a manner that leaves the file
**/tmp/pvmd.uid** behind on one or more hosts (the **uid** suffix is
the numeric user ID from **/etc/passwd** ) of the user. This will
prevent PVM from restarting on that host. Deletion of this file will
fix this problem and it can be done as follows: ** rm `( grep $user
/etc/passwd || ypmatch $user passwd )** ** | awk -F: '{print
"/tmp/pvmd.";$3;exit}'`**

For example:


::

    
    
    -->pvm_halt()
     ans  =
     
        0.  
     
    -->pvm_halt()
     ans  =
     
      - 14.  
       
        


Error -14 means: pvm_halt(): Can't contact local daemon



See Also
~~~~~~~~

` **pvm_start** `_,` **pvm_addhosts** `_,` **pvm_config** `_,

.. _
      : ://./pvm/pvm_addhosts.htm
.. _
      : ://./pvm/pvm_start.htm
.. _
      : ://./pvm/pvm_config.htm


