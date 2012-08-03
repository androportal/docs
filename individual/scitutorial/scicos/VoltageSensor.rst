====
"VoltageSensor"
====


Scicos Block
`fr`_ - `eng`_



Electrical voltage sensor
-------------------------




Contents
~~~~~~~~


+ `Electrical voltage sensor`_

    + `Description`_
    + `Default properties`_
    + `Interfacing function`_
    + `Modelica model`_




Description
~~~~~~~~~~~


This component is used to measure the voltage difference between two
nodes in an electircal circuit. The output signal is the difference
between the voltages of the black port and the white port, i.e. ,





The ohmic conductance of this block is zero.



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
+ **name of modelica function:** *VoltageSensor*




Interfacing function
~~~~~~~~~~~~~~~~~~~~
VoltageSensor.sci


Modelica model
~~~~~~~~~~~~~~


::

     class VoltageSensor 
      Pin p;
      Pin n;
      Real v;
     equation
        p.i = 0;
        n.i = 0;
        v = p.v - n.v;
     end VoltageSensor;









.. _Modelica model: ://./scicos/VoltageSensor.htm#SECTION00024000000000000000
.. _fr: ://./scicos/../../fr/scicos/VoltageSensor.htm
.. _Description: ://./scicos/VoltageSensor.htm#SECTION00021000000000000000
.. _Default properties: ://./scicos/VoltageSensor.htm#SECTION00022000000000000000
.. _eng: ://./scicos/./VoltageSensor.htm
.. _Interfacing function: ://./scicos/VoltageSensor.htm#SECTION00023000000000000000
.. _Electrical voltage sensor: ://./scicos/VoltageSensor.htm#SECTION00010000000000000000


