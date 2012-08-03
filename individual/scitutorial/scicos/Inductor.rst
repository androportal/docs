====
"Inductor"
====


Scicos Block
`fr`_ - `eng`_



Electrical inductor
-------------------




Contents
~~~~~~~~


+ `Electrical inductor`_

    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Modelica model`_




Description
~~~~~~~~~~~


Inductor is an electrical component that can store energy in
electrical circuits. The relationship between the voltage across the
ports of an inductor of inductance and the current passing through it
is given by:





Inductors can also be used to differentiate between high-frequency and
low-frequency signals and this makes them useful in electronic
filters. An inductor shows a hight impedence for hight frequency
signals.


Dialog box
~~~~~~~~~~
Set Inductor block parameter L (T) 0.00001


+ **L (T) ** : Type 'vec' of size 1. Inductance




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
+ **name of modelica function:** *Inductor*




Interfacing function
~~~~~~~~~~~~~~~~~~~~
Inductor.sci


Modelica model
~~~~~~~~~~~~~~


::

    class Inductor "Ideal electrical inductor"
    	Pin p, n;
    	Real v;
    	Real i;
    	parameter Real L "Inductance";
    equation
    	v = L*der(i);
    	v = p.v - n.v;
    	0 = p.i + n.i;
    	i = p.i;
    end Inductor;









.. _Dialog box: ://./scicos/Inductor.htm#SECTION00022000000000000000
.. _fr: ://./scicos/../../fr/scicos/Inductor.htm
.. _Modelica model: ://./scicos/Inductor.htm#SECTION00025000000000000000
.. _eng: ://./scicos/./Inductor.htm
.. _Description: ://./scicos/Inductor.htm#SECTION00021000000000000000
.. _Electrical inductor: ://./scicos/Inductor.htm#SECTION00010000000000000000
.. _Default properties: ://./scicos/Inductor.htm#SECTION00023000000000000000
.. _Interfacing function: ://./scicos/Inductor.htm#SECTION00024000000000000000


