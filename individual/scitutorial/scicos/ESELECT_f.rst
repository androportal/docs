====
"ESELECT_f"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type -2)`_







Event select
------------



Library
~~~~~~~
Events


Description
~~~~~~~~~~~
Special block similar to If-Then-Else. Input and output are
synchronized. The incoming event is directed to one of the output
event ports depending on the value of the regular input.



Dialog Box
~~~~~~~~~~
Set ESELECT block parameters number of output event ports 2 Inherit
(1: no, 0: yes) 1 zero-crossing (0: no, 1: yes) 0

+ number of output event ports: integer
+ Inherit : 0 or 1; 0 means inheritance so the block has no input
  activation port
+ zero-crossing : should zero-crossing be used if the block is
  continuously active.




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: no
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / 1
+ number/sizes of outputs: 0 /
+ number/sizes of activation inputs: 1 / 1
+ number/sizes of activation outputs: 2 / 1 1
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *eselect*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/branching/ESELECT_f.sci


Computational function (type -2)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~




Ramine Nikoukhah 2004-06-22

.. _Computational function (type -2): ://./scicos/ESELECT_f.htm#SECTION00557600000000000000
.. _Description: ://./scicos/ESELECT_f.htm#SECTION00557200000000000000
.. _Interfacing function: ://./scicos/ESELECT_f.htm#SECTION00557500000000000000
.. _Library: ://./scicos/ESELECT_f.htm#SECTION00557100000000000000
.. _Default properties: ://./scicos/ESELECT_f.htm#SECTION00557400000000000000
.. _Dialog Box: ://./scicos/ESELECT_f.htm#SECTION00557300000000000000


