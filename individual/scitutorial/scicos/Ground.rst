====
"Ground"
====


Scicos Block
`fr`_ - `eng`_



Ground (zero potential reference)
---------------------------------




Contents
~~~~~~~~


+ `Ground (zero potential reference)`_

    + `Description`_
    + `Default properties`_
    + `Interfacing function`_
    + `Modelica model`_




Description
~~~~~~~~~~~

The Ground element is a single port component providing a reference
voltage in electrical circuits. The potential at the ground node is
zero. Every electrical circuit has to contain at least one ground
element.


Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **number/sizes of inputs:** 1 / 1
+ **number/sizes of outputs:** 0 /
+ **number/sizes of activation inputs:** 0 /
+ **number/sizes of activation outputs:** 0 /
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **name of modelica function:** *Ground*




Interfacing function
~~~~~~~~~~~~~~~~~~~~
Ground.sci


Modelica model
~~~~~~~~~~~~~~


::

    class Ground "Ground"
    	Pin p;
    equation
    	p.v = 0;
    end Ground;





.. _Default properties: ://./scicos/Ground.htm#SECTION00022000000000000000
.. _Modelica model: ://./scicos/Ground.htm#SECTION00024000000000000000
.. _eng: ://./scicos/./Ground.htm
.. _Ground (zero potential reference): ://./scicos/Ground.htm#SECTION00010000000000000000
.. _Interfacing function: ://./scicos/Ground.htm#SECTION00023000000000000000
.. _fr: ://./scicos/../../fr/scicos/Ground.htm
.. _Description: ://./scicos/Ground.htm#SECTION00021000000000000000


