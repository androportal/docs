====
"VariableResistor"
====


Scicos Block
`fr`_ - `eng`_



Electrical variable resistor
----------------------------




Contents
~~~~~~~~


+ `Electrical variable resistor`_

    + `Description`_
    + `Default properties`_
    + `Interfacing function`_
    + `Modelica model`_




Description
~~~~~~~~~~~


This component represents a variable ohmic resistor. The resistance (
) is controlled via an explicit input port.







Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **number/sizes of inputs:** 2 / 1 1
+ **number/sizes of outputs:** 1 / 1
+ **number/sizes of activation inputs:** 0 /
+ **number/sizes of activation outputs:** 0 /
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **name of modelica function:** *VariableResistor*




Interfacing function
~~~~~~~~~~~~~~~~~~~~
VariableResistor.sci


Modelica model
~~~~~~~~~~~~~~


::

    class VariableResistor
    	Pin p, n;
    	Real R "Resistance";
    equation
    	R*p.i = p.v - n.v;
    	p.i = -n.i;
    end VariableResistor;







.. _Modelica model: ://./scicos/VariableResistor.htm#SECTION00024000000000000000
.. _Description: ://./scicos/VariableResistor.htm#SECTION00021000000000000000
.. _Interfacing function: ://./scicos/VariableResistor.htm#SECTION00023000000000000000
.. _eng: ://./scicos/./VariableResistor.htm
.. _Electrical variable resistor: ://./scicos/VariableResistor.htm#SECTION00010000000000000000
.. _fr: ://./scicos/../../fr/scicos/VariableResistor.htm
.. _Default properties: ://./scicos/VariableResistor.htm#SECTION00022000000000000000


