


scicos_debug
============

Set the level of the Scicos debugging



Calling Sequence
~~~~~~~~~~~~~~~~


::

    scicos_debug(level)
    level = scicos_debug()




Module
~~~~~~


+ `xcos`_




Description
~~~~~~~~~~~

This Scilab function is used to set the debug level of a Scicos
simulation.

One can used it in the "Calc" mode of the Scicos editor or as an
instruction in a Scilab block or in an interfacing function.




::

    scicos_debug(level)
    level=scicos_debug()




Arguments
~~~~~~~~~


+ **level :** set/get the current level of the Scicos simulation
  debugging.

    + **0:** no debugging.
    + **1:** light debugging information printout.
    + **2:** more information printout and execution of Debug Block if any
      in diagram.
    + **3:** silent debugging mode (no information printout) and execution
      of Debug Block if any in diagram.



.. _xcos: xcos.html


