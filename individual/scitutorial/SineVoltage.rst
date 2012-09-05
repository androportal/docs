


SineVoltage
===========

Sine voltage source



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Sine voltage source`_
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

This Modelica block a general sine voltage source. The internal ohmic
resistance is zero.





Dialog box
~~~~~~~~~~






+ **Amplitude (Volt)** Sine voltage amplitude Properties : Type 'vec'
  of size 1.
+ **phase (rad)** phase shift of the sine voltage Properties : Type
  'vec' of size 1.
+ **Frequency (Hz)** Sine voltage frequency Properties : Type 'vec' of
  size 1.
+ **Voltageoffset (V)** Offset Voltage of the sine voltage Properties
  : Type 'vec' of size 1.
+ **Timeoffset (s)** Start time. During the start time, the signal
  value is equal to the voltage offset. Properties : Type 'vec' of size
  1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **Inputs :**

    + **Modelica variable name :** 'p' Implicit **variable.**

+ **Outputs :**

    + **Modelica variable name :** 'n' Implicit **variable.**

+ **Parameters :**

    + **Modelica parameter name :** 'V' **Default value :** 1 **Is a state
      variable :** no.
    + **Modelica parameter name :** 'phase' **Default value :** 0 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'freqHz' **Default value :** 1 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'offset' **Default value :** 0 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'startTime' **Default value :** 0 **Is
      a state variable :** no.

+ **File name of the model :** SineVoltage




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Electrical/SineVoltage.sci




Modelica model
~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Electrical/SineVoltage.mo


.. _Electrical.cosf - Electrical toolbox: Electrical_pal.html
.. _Modelica model: SineVoltage.html
.. _Default properties: SineVoltage.html#Defaultproperties_SineVoltage
.. _Description: SineVoltage.html#Description_SineVoltage
.. _Palette: SineVoltage.html#Palette_SineVoltage
.. _Interfacing function: SineVoltage.html#Interfacingfunction_SineVoltage
.. _Dialog box: SineVoltage.html#Dialogbox_SineVoltage


