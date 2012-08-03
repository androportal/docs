====
"Diode"
====


Scicos Block
`fr`_ - `eng`_



Electrical diode
----------------




Contents
~~~~~~~~


+ `Electrical diode`_

    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Modelica model`_




Description
~~~~~~~~~~~


This component consists of a simple diode parallel with an ohmic
resistance ( ). The current passing through this component is defined
as a function of the voltage across the ports, i.e. ,





where and are the saturation current and the voltage equivalent of
temperature, respectively. If the exponent reaches a certain limit (
), the diode characterisic becomes linear to avoid overflow.


Dialog box
~~~~~~~~~~
Set Diode block parameter Saturation cuurent (A) 0.000001 Voltage
equivalent to temperature (Volt) 0.04 Max exponent for linear
continuation 15 R (ohm) 1.000E+08


+ **Saturation cuurent (A) ** : Type 'vec' of size 1. Saturation
  current
+ **Voltage equivalent to temperature (Volt) ** : Type 'vec' of size
  1. Voltage equivalent of temperature
+ **Max exponent for linear continuation ** : Type 'vec' of size 1.
  Max exponent for linear continuation
+ **R (ohm) ** : Type 'vec' of size 1. Parallel ohmic resistance.




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
+ **name of modelica function:** *Diode*




Interfacing function
~~~~~~~~~~~~~~~~~~~~
Diode.sci


Modelica model
~~~~~~~~~~~~~~


::

    class Diode "Simple diode" 
       Pin p, n;
        parameter Real Ids=1.e-6 "Saturation current";
        parameter Real Vt=0.04   "Voltage equivalent of temperature (kT/qn)";
        parameter Real Maxexp=15 "Max. exponent for linear continuation";
        parameter Real R=1.e8 "Parallel ohmic resistance";
        Real v;
      equation 
       v = p.v - n.v;
    
       p.i = if noEvent(v/Vt > Maxexp) then 
    	Ids*(Modelica.Math.exp(Maxexp)*(1 + v/Vt - Maxexp) - 1) + v/R 
      else 
    	Ids*(Modelica.Math.exp(v/Vt) - 1) + v/R;
    
       p.i = -n.i;
    
      end Diode;









.. _Interfacing function: ://./scicos/Diode.htm#SECTION00024000000000000000
.. _Dialog box: ://./scicos/Diode.htm#SECTION00022000000000000000
.. _eng: ://./scicos/./Diode.htm
.. _Modelica model: ://./scicos/Diode.htm#SECTION00025000000000000000
.. _Default properties: ://./scicos/Diode.htm#SECTION00023000000000000000
.. _Electrical diode: ://./scicos/Diode.htm#SECTION00010000000000000000
.. _Description: ://./scicos/Diode.htm#SECTION00021000000000000000
.. _fr: ://./scicos/../../fr/scicos/Diode.htm


