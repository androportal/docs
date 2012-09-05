


Diode
=====

Electrical diode



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Electrical diode`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Modelica model`_





Palette
~~~~~~~


+ `Electrical.cosf - Electrical toolbox`_




Description
~~~~~~~~~~~

This component consists of a simple diode parallel with an ohmic
resistance ( ** *R*** ). The current ( ** *I*** ) passing through this
component is defined as a function of the voltage across the ports (
** *V*** ):





where ** *Ids*** and ** *Vt*** are the saturation current and the
voltage equivalent of temperature, respectively. If the exponent
reaches a certain limit ( **Max exponent for linear continuation**),
the diode characteristic becomes linear to avoid overflow.



Dialog box
~~~~~~~~~~






+ **Saturation current (A)** Saturation current Properties : Type
  'vec' of size 1.
+ **Voltage equivalent to temperature (Volt)** Voltage equivalent of
  temperature Properties : Type 'vec' of size 1.
+ **Max exponent for linear continuation** Max exponent for linear
  continuation Properties : Type 'vec' of size 1.
+ **R (ohm)** Parallel ohmic resistance. Properties : Type 'vec' of
  size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **Inputs :**

    + **Modelica variable name :** 'p' Implicit **variable.**

+ **Outputs :**

    + **Modelica variable name :** 'n' Implicit **variable.**

+ **Parameters :**

    + **Modelica parameter name :** 'Ids' **Default value :** 0.000001
      **Is a state variable :** no.
    + **Modelica parameter name :** 'Vt' **Default value :** 0.04 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'Maxexp' **Default value :** 15 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'R' **Default value :** 1.000E+08 **Is
      a state variable :** no.

+ **File name of the model :** Diode




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Electrical/Diode.sci




Modelica model
~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Electrical/Diode.mo


.. _Electrical.cosf - Electrical toolbox: Electrical_pal.html
.. _Interfacing function: Diode.html#Interfacingfunction_Diode
.. _Modelica model: Diode.html
.. _Default properties: Diode.html#Defaultproperties_Diode
.. _Dialog box: Diode.html#Dialogbox_Diode
.. _Description: Diode.html#Description_Diode
.. _Palette: Diode.html#Palette_Diode


