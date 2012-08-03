====
"pvm_tasks"
====

Scilab function Last update : May 1998
**pvm_tasks** - information about the tasks running on the virtual
machine.



Calling Sequence
~~~~~~~~~~~~~~~~

res = pvm_tasks([where])




Parameters
~~~~~~~~~~


+ **where** : (optional) integer, specifying what tasks to return
  information about. The options are:

::

    
    
     0(default) for all the tasks on the virtual machine
     pvmd tid for all tasks on a given host
       tid  for a specific task
       
              


+ **res** : list of 7 elements such that:

    + **res(1) ** : integer returning task ID of one task
    + **res(2) ** : integer returning parent task ID
    + **res(3) ** : integer returning pvmd task ID of host task is on
    + **res(4) ** : integer returning status of task
    + **res(5) ** : string returning the name of spawned task. Manually
      started tasks return blank.
    + **res(6) ** : integer returning the number of tasks being reported
      on.
    + **res(7) ** : integer status code returned by the routine.





Description
~~~~~~~~~~~

**pvm_tasks** returns information about tasks presently running on the
virtual machine. The information returned is the same as that
available from the console command

The **pvm_tasks** function returns information about the entire
virtual machine in one call.

If pvm_tasks is successful,

will be 0. If some error occurs then

will be < 0.

for example:


::

    
    
    -->res = pvm_tasks()
     res  =
     
           res(1)
     
    !   262148.    262151.    262152. !
     
           res(2)
     
    !   262147.    0.    262151. !
     
           res(3)
     
    !   262144.    262144.    262144. !
     
           res(4)
     
    !   6.    4.    6. !
     
           res(5)
     
    !pvmgs    /home/ubeda/SCILAB/scilab-2.4/bin/scilex  !
     
           res(6)
     
        3.  
     
           res(7)
     
        0. 
       
        




See Also
~~~~~~~~

` **pvm_config** `_,` **pvm_tidtohost** `_,

.. _
      : ://./pvm/pvm_tidtohost.htm
.. _
      : ://./pvm/pvm_config.htm


