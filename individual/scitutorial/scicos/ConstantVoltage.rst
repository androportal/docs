====
"ConstantVoltage"
====


Scicos Block
`fr`_ - `eng`_



Electrical DC voltage source
----------------------------




Contents
~~~~~~~~


+ `Electrical DC voltage source`_

    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Modelica model`_




Description
~~~~~~~~~~~

This component is a model for any device or system that produces a
constant electromotive force between its port. The output voltage of
this DC volatge source is defined by the user. The black port
indicates the positive voltage. The ohmic resistance of this DC
voltage source is zero.


Dialog box
~~~~~~~~~~
Set ConstantVoltage block parameter V (volt) 0.01


+ **V (volt) ** : Type 'vec' of size 1. Output voltage




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **number/sizes of inputs:** 1 / 1
+ **number/sizes of outputs:** 1 / 1
+ **number/sizes of activation inputs:** 0 /
+ **number/sizes of activation outputs:** 0 /
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **name of modelica function:** *ConstantVoltage*




Interfacing function
~~~~~~~~~~~~~~~~~~~~
ConstantVoltage.sci


Modelica model
~~~~~~~~~~~~~~


::

    class ConstantVoltage "Source for constant voltage"
       Pin p, n;
       parameter Real V = 1 "Volts";
    equation
       V = p.v - n.v;
       p.i + n.i = 0;
    end ConstantVoltage;






.. _Default properties: ://./scicos/ConstantVoltage.htm#SECTION00023000000000000000
.. _Modelica model: ://./scicos/ConstantVoltage.htm#SECTION00025000000000000000
.. _eng: ://./scicos/./ConstantVoltage.htm
.. _fr: ://./scicos/../../fr/scicos/ConstantVoltage.htm
.. _Interfacing function: ://./scicos/ConstantVoltage.htm#SECTION00024000000000000000
.. _Electrical DC voltage source: ://./scicos/ConstantVoltage.htm#SECTION00010000000000000000
.. _Dialog box: ://./scicos/ConstantVoltage.htm#SECTION00022000000000000000
.. _Description: ://./scicos/ConstantVoltage.htm#SECTION00021000000000000000


