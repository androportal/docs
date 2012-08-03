====
"IFTHEL_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type -1)`_







If-Then-Else
------------



Library
~~~~~~~
Events


Description
~~~~~~~~~~~
One event is generated on one of the output event ports when an input
event arrives. Depending on the sign of the regular input, the event
is generated on the first or second output. This is a synchro block,
*i.e.*, input and output event are synchronized.


Dialog Box
~~~~~~~~~~
Set parameters Inherit (1: no, 0: yes) 1 zero-crossing (0: no, 1: yes)
1

+ Inherit : 0 or 1; if zero, block has no input activation port.
+ zero-crossing : use zero-crossing if active continuously




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: yes
+ mode: yes
+ number/sizes of inputs: 1 / 1
+ number/sizes of outputs: 0 /
+ number/sizes of activation inputs: 1 / 1
+ number/sizes of activation outputs: 2 / 1 1
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *ifthel*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/events/IFTHEL_f.sci


Computational function (type -1)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~




Ramine Nikoukhah 2004-06-22
.. _Dialog Box: ://./scicos/IFTHEL_f.htm#SECTION00556300000000000000
.. _Computational function (type -1): ://./scicos/IFTHEL_f.htm#SECTION00556600000000000000
.. _Description: ://./scicos/IFTHEL_f.htm#SECTION00556200000000000000
.. _Interfacing function: ://./scicos/IFTHEL_f.htm#SECTION00556500000000000000
.. _Library: ://./scicos/IFTHEL_f.htm#SECTION00556100000000000000
.. _Default properties: ://./scicos/IFTHEL_f.htm#SECTION00556400000000000000


