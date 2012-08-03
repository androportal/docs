====
"CurrentSensor"
====


Scicos Block
`fr`_ - `eng`_



Electrical current sensor
-------------------------




Contents
~~~~~~~~


+ `Electrical current sensor`_

    + `Description`_
    + `Default properties`_
    + `Interfacing function`_
    + `Modelica model`_




Description
~~~~~~~~~~~

This block is inserted in series in an electrical circuit to measure
the current passing through the coponent. The measure is given to the
explicit part of the model via an explicit pout. Conventionally,
current flowing into the black port is consiered positive. The ohmic
resistance of this block is zero.


Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **number/sizes of inputs:** 1 / 1
+ **number/sizes of outputs:** 2 / 1 1
+ **number/sizes of activation inputs:** 0 /
+ **number/sizes of activation outputs:** 0 /
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **name of modelica function:** *CurrentSensor*




Interfacing function
~~~~~~~~~~~~~~~~~~~~
CurrentSensor.sci


Modelica model
~~~~~~~~~~~~~~


::

     class CurrentSensor 
      Pin p;
      Pin n;
      Real i;
     equation
        p.v = n.v;
        p.i = i;
        n.i = -i;
     end CurrentSensor; 





.. _eng: ://./scicos/./CurrentSensor.htm
.. _Description: ://./scicos/CurrentSensor.htm#SECTION00021000000000000000
.. _Interfacing function: ://./scicos/CurrentSensor.htm#SECTION00023000000000000000
.. _Electrical current sensor: ://./scicos/CurrentSensor.htm#SECTION00010000000000000000
.. _Modelica model: ://./scicos/CurrentSensor.htm#SECTION00024000000000000000
.. _Default properties: ://./scicos/CurrentSensor.htm#SECTION00022000000000000000
.. _fr: ://./scicos/../../fr/scicos/CurrentSensor.htm


