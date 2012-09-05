


set_blockerror
==============

set the block error number



Calling Sequence
~~~~~~~~~~~~~~~~


::

    set_blockerror(n)




Module
~~~~~~


+ `xcos`_




Description
~~~~~~~~~~~

Function to set a specific error during the simulation for the current
block. If it is used, then after the execution of the computational
function of the block, the simulator will end and will return an error
message associated to the number given in argument.




::

    set_blockerror(n)




Arguments
~~~~~~~~~


+ **n** : an error number. The following calls are allowed :

    + **set_blockerror(-1)** the block has been called with input out of
      its domain
    + **set_blockerror(-2)** singularity in a block
    + **set_blockerror(-3)** block produces an internal error
    + **set_blockerror(-16)** cannot allocate memory in block



.. _xcos: xcos.html


