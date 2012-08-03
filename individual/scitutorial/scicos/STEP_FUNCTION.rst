====
"STEP_FUNCTION"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Compiled Super Block content`_







Step function generator
-----------------------



Library
~~~~~~~
Sources


Description
~~~~~~~~~~~
The Step block provides a step between two definable levels at a
specified time. If the simulation time is less than the Step time
parameter value, the block's output is the Initial value parameter
value. For simulation time greater than or equal to the Step time, the
output is the Final value parameter value.


Dialog Box
~~~~~~~~~~
Set Saturation parameters Step time 1 Initial value 0 Final value 1

+ Step time:The time, in seconds, when the output jumps from the
  Initial value parameter to the Final value parameter.
+ Initial value: The block output until the simulation time reaches
  the Step time parameter.
+ Final value: The block output when the simulation time reaches and
  exceeds the Step time parameter.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 0 /
+ number/sizes of outputs: 1 / -1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *csuper*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/sources/STEP_FUNCTION.sci


Compiled Super Block content
~~~~~~~~~~~~~~~~~~~~~~~~~~~~



Ramine Nikoukhah 2004-06-22
.. _Dialog Box: ://./scicos/STEP_FUNCTION.htm#SECTION005111300000000000000
.. _Default properties: ://./scicos/STEP_FUNCTION.htm#SECTION005111400000000000000
.. _Interfacing function: ://./scicos/STEP_FUNCTION.htm#SECTION005111500000000000000
.. _Library: ://./scicos/STEP_FUNCTION.htm#SECTION005111100000000000000
.. _Compiled Super Block content: ://./scicos/STEP_FUNCTION.htm#SECTION005111600000000000000
.. _Description: ://./scicos/STEP_FUNCTION.htm#SECTION005111200000000000000


