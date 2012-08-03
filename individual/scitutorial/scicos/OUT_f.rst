====
"OUT_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_







Output Port
-----------



Library
~~~~~~~
Sinks


Description
~~~~~~~~~~~
This block must only be used inside Scicos Super Blocks to represent a
regular output port. In a Super Block, regular output ports must be
numbered from 1 to the number of regular output ports. size of the
output is determined by the compiler according to the connected blocks
port sizes.


Dialog Box
~~~~~~~~~~
Set Output block parameters Port number 1

+ Port number: an integer giving the port number.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / -1
+ number/sizes of outputs: 0 /
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *output*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/sinks/OUT_f.sci


Ramine Nikoukhah 2004-06-22
.. _Default properties: ://./scicos/OUT_f.htm#SECTION005210400000000000000
.. _Dialog Box: ://./scicos/OUT_f.htm#SECTION005210300000000000000
.. _Description: ://./scicos/OUT_f.htm#SECTION005210200000000000000
.. _Library: ://./scicos/OUT_f.htm#SECTION005210100000000000000
.. _Interfacing function: ://./scicos/OUT_f.htm#SECTION005210500000000000000


