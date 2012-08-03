====
"VsourceAC"
====


Scicos Block
`fr`_ - `eng`_



Electrical AC voltage source
----------------------------




Contents
~~~~~~~~


+ `Electrical AC voltage source`_

    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Modelica model`_




Description
~~~~~~~~~~~

This component is an AC voltage source with sinosoid output voltage.
The amplitude and the frequency of the output voltage is set by the
user. The ohmic resistance of this block is zero.


Dialog box
~~~~~~~~~~
Set voltage source parameter Amplitude (Volt) 220 Frequency (Hz) 50


+ **Amplitude (Volt) ** : Type 'vec' of size -1. Amplitude of the
  output sinosoid voltage
+ **Frequency (Hz) ** : Type 'vec' of size -1. Frequency of the output
  sinosoid voltage




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
+ **name of modelica function:** *VsourceAC*




Interfacing function
~~~~~~~~~~~~~~~~~~~~
VsourceAC.sci


Modelica model
~~~~~~~~~~~~~~


::

    class VsourceAC "Sin-wave voltage source"
    	Pin p, n;
    	Real v;
    	parameter Real VA = 220 "Amplitude";
    	parameter Real f = 50 "Frequency";
    	parameter Real PI=3.141592653589793;
    equation
    	v = VA*Modelica.Math.sin(2*PI*f*time);
    	v = p.v - n.v;
    	0 = p.i + n.i;
    end VsourceAC;






.. _Interfacing function: ://./scicos/VsourceAC.htm#SECTION00024000000000000000
.. _Dialog box: ://./scicos/VsourceAC.htm#SECTION00022000000000000000
.. _Default properties: ://./scicos/VsourceAC.htm#SECTION00023000000000000000
.. _Electrical AC voltage source: ://./scicos/VsourceAC.htm#SECTION00010000000000000000
.. _fr: ://./scicos/../../fr/scicos/VsourceAC.htm
.. _Modelica model: ://./scicos/VsourceAC.htm#SECTION00025000000000000000
.. _Description: ://./scicos/VsourceAC.htm#SECTION00021000000000000000
.. _eng: ://./scicos/./VsourceAC.htm


