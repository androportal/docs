====
"CLOCK_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Compiled Super Block content`_







Activation clock
----------------



Library
~~~~~~~
Events


Description
~~~~~~~~~~~

This block is a Super Block constructed by feeding back the output of
an event delay block into its input event port. The unique output of
this block generates a regular train of events.



Dialog Box
~~~~~~~~~~
Set Clock block parameters Period 0.1 Init time 0.1

+ Period: scalar. One over the frequency of the clock. Period is the
  time that separates two output events.
+ Init time: scalar. Starting date. if negative the clock never
  starts.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 0 /
+ number/sizes of outputs: 0 /
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 1 / 1
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *csuper*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/sources/CLOCK_f.sci


Compiled Super Block content
~~~~~~~~~~~~~~~~~~~~~~~~~~~~



Ramine Nikoukhah 2004-06-22


.. _Compiled Super Block content: ://./scicos/CLOCK_f.htm#SECTION005112600000000000000
.. _Description: ://./scicos/CLOCK_f.htm#SECTION005112200000000000000
.. _Dialog Box: ://./scicos/CLOCK_f.htm#SECTION005112300000000000000
.. _Default properties: ://./scicos/CLOCK_f.htm#SECTION005112400000000000000
.. _Interfacing function: ://./scicos/CLOCK_f.htm#SECTION005112500000000000000
.. _Library: ://./scicos/CLOCK_f.htm#SECTION005112100000000000000


