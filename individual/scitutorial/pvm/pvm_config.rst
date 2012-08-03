====
"pvm_config"
====

Scilab function Last update : 28/06/2005
**pvm_config** - sends a message



Calling Sequence
~~~~~~~~~~~~~~~~

res = pvm_config()




Parameters
~~~~~~~~~~


+ **res** list of 7 elements such that:

    + **(1)** : integer returning the number of hosts (pvmds) in the
      virtual machine.
    + **(2)** : integer returning the number of different data formats
      being used.
    + **(3)** : integer returning pvmd task ID for host.
    + **(4)** : character string returning name of host.
    + **(5)** : character string returning architecture name of host
    + **(6)** : integer returning relative speed of host. Default value is
      1000.
    + **(7)** : integer status code returned by the routine.





Description
~~~~~~~~~~~

**pvm_config** returns information about the present virtual machine.
The information returned is similar to that available from the console
command.

The **pvm_config** function returns information about the entire
virtual machine in one call.

The returned value **res(7)** will be zero if the call is successful
and will be will be < 0 if some error occurs.



Examples
~~~~~~~~


::

    
    
    if pvm_start()==0 then
        res = pvm_config()
        pvm_halt()
    end
     
      




See Also
~~~~~~~~

` **pvm_start** `_,` **pvm_tasks** `_,

.. _
      : ://./pvm/pvm_tasks.htm
.. _
      : ://./pvm/pvm_start.htm


