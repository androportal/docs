====
"VVsourceAC"
====


Scicos Block
`fr`_ - `eng`_



Variable AC voltage source
--------------------------




Contents
~~~~~~~~


+ `Variable AC voltage source`_

    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Modelica model`_




Description
~~~~~~~~~~~

The variable voltage source block is a model for a controlled AC
voltage source. This component provides a sinosoid voltage across its
ports. The amplitude of the output voltage is governed by the explicit
input and the frequency is defined by the user. The ohmic resistance
of the block is zero.


Dialog box
~~~~~~~~~~
Set voltage source parameter Frequency (Hz) 50


+ **Frequency (Hz) ** : Type 'vec' of size -1. Frequency of the output
  sinosoid voltage




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
+ **name of modelica function:** *VVsourceAC*




Interfacing function
~~~~~~~~~~~~~~~~~~~~
VVsourceAC.sci


Modelica model
~~~~~~~~~~~~~~


::

    class VVsourceAC "Sin-wave voltage source"
    	Pin p, n;
    	Real v;
    	Real VA "voltage";
    	parameter Real f = 50 "Frequency";
    	parameter Real PI=3.141592653589793;
    equation
    	v = VA*Modelica.Math.sin(2*PI*f*time);
    	v = p.v - n.v;
    	0 = p.i + n.i;
    end VVsourceAC;






.. _Modelica model: ://./scicos/VVsourceAC.htm#SECTION00025000000000000000
.. _Variable AC voltage source: ://./scicos/VVsourceAC.htm#SECTION00010000000000000000
.. _Dialog box: ://./scicos/VVsourceAC.htm#SECTION00022000000000000000
.. _Description: ://./scicos/VVsourceAC.htm#SECTION00021000000000000000
.. _Interfacing function: ://./scicos/VVsourceAC.htm#SECTION00024000000000000000
.. _Default properties: ://./scicos/VVsourceAC.htm#SECTION00023000000000000000
.. _fr: ://./scicos/../../fr/scicos/VVsourceAC.htm
.. _eng: ://./scicos/./VVsourceAC.htm


