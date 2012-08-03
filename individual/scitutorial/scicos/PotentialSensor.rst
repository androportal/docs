====
"PotentialSensor"
====


Scicos Block
`fr`_ - `eng`_



Potential sensor
----------------




Contents
~~~~~~~~


+ `Potential sensor`_

    + `Description`_
    + `Default properties`_
    + `Interfacing function`_
    + `Modelica model`_




Description
~~~~~~~~~~~


This block is used to measure the voltage with respect to the
reference voltage ( **Ground** block) in an electircal circuit. The
voltage is given to the explicit part of the model via an explicit
output port.


Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **number/sizes of inputs:** 1 / 1
+ **number/sizes of outputs:** 1 / 1
+ **number/sizes of activation inputs:** 0 /
+ **number/sizes of activation outputs:** 0 /
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **name of modelica function:** *PotentialSensor*




Interfacing function
~~~~~~~~~~~~~~~~~~~~
PotentialSensor.sci


Modelica model
~~~~~~~~~~~~~~


::

     class PotentialSensor 
      Pin p;
      Real v;
     equation
        p.i = 0;
        v = p.v;
     end PotentialSensor;






.. _Potential sensor: ://./scicos/PotentialSensor.htm#SECTION00010000000000000000
.. _Interfacing function: ://./scicos/PotentialSensor.htm#SECTION00023000000000000000
.. _Description: ://./scicos/PotentialSensor.htm#SECTION00021000000000000000
.. _Modelica model: ://./scicos/PotentialSensor.htm#SECTION00024000000000000000
.. _eng: ://./scicos/./PotentialSensor.htm
.. _fr: ://./scicos/../../fr/scicos/PotentialSensor.htm
.. _Default properties: ://./scicos/PotentialSensor.htm#SECTION00022000000000000000


