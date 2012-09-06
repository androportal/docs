


phase_simulation
================

Get the current simulation phase



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [psim]=phase_simulation()




Module
~~~~~~


+ `xcos`_




Description
~~~~~~~~~~~

That function says if the Scicos simulator is realizing the time
domain integration.




::

    [psim]=phase_simulation()




Arguments
~~~~~~~~~


+ **psim :** get the current phase of the simulation

    + **1 :** The simulator is on a discrete activation time.
    + **2 :** The simulator is realizing a continuous time domain
      integration.



.. _xcos: xcos.html


