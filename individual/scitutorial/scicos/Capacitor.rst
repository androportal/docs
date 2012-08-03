====
"Capacitor"
====


Scicos Block
`fr`_ - `eng`_



Electrical capacitor
--------------------




Contents
~~~~~~~~


+ `Electrical capacitor`_

    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Modelica model`_




Description
~~~~~~~~~~~


A capacitor is an electrical component that can store energy in
electrical circuits. The relationship between the voltage across a
capacitor with capacitance and the current passing through it is given
by the:



Capacitors can also be used to differentiate between high-frequency
and low-frequency signals and this makes them useful in electronic
filters. A capacitor has a hight impedence when a signal is low
frequency signals.


Dialog box
~~~~~~~~~~
Set Capacitor block parameter C (F) 0.01 Initial Voltage 0


+ **C (F) ** : Type 'vec' of size 1. Capasitance
+ **Initial Voltage ** : Type 'vec' of size 1. Initial Voltage




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
+ **name of modelica function:** *Capacitor*




Interfacing function
~~~~~~~~~~~~~~~~~~~~
Capacitor.sci


Modelica model
~~~~~~~~~~~~~~


::

    class Capacitor
    	Pin p, n;
    	Real v;
    	parameter Real C "Capacitance";
    equation
    	C*der(v) = p.i;
    	v = p.v - n.v;
    	p.i = -n.i;
    end Capacitor;







.. _Description: ://./scicos/Capacitor.htm#SECTION00021000000000000000
.. _Modelica model: ://./scicos/Capacitor.htm#SECTION00025000000000000000
.. _Interfacing function: ://./scicos/Capacitor.htm#SECTION00024000000000000000
.. _fr: ://./scicos/../../fr/scicos/Capacitor.htm
.. _Default properties: ://./scicos/Capacitor.htm#SECTION00023000000000000000
.. _Electrical capacitor: ://./scicos/Capacitor.htm#SECTION00010000000000000000
.. _Dialog box: ://./scicos/Capacitor.htm#SECTION00022000000000000000
.. _eng: ://./scicos/./Capacitor.htm


