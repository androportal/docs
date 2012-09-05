


VsourceAC
=========

Electrical AC voltage source



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Electrical AC voltage source`_
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

This component is an AC voltage source with sinusoid output voltage.
The amplitude and the frequency of the output voltage is set by the
user. The ohmic resistance of this block is zero.



Dialog box
~~~~~~~~~~






+ **Amplitude (Volt)** Amplitude of the output sinusoid voltage
  Properties : Type 'vec' of size -1.
+ **Frequency (Hz)** Frequency of the output sinusoid voltage
  Properties : Type 'vec' of size -1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **Inputs :**

    + **Modelica variable name :** 'p' Implicit **variable.**

+ **Outputs :**

    + **Modelica variable name :** 'n' Implicit **variable.**

+ **Parameters :**

    + **Modelica parameter name :** 'VA' **Default value :** 220 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'f' **Default value :** 50 **Is a
      state variable :** no.

+ **File name of the model :** VsourceAC




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Electrical/VsourceAC.sci




Modelica model
~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Electrical/VsourceAC.mo


.. _Electrical.cosf - Electrical toolbox: Electrical_pal.html
.. _Palette: VsourceAC.html#Palette_VsourceAC
.. _Dialog box: VsourceAC.html#Dialogbox_VsourceAC
.. _Description: VsourceAC.html#Description_VsourceAC
.. _Interfacing function: VsourceAC.html#Interfacingfunction_VsourceAC
.. _Modelica model: VsourceAC.html
.. _Default properties: VsourceAC.html#Defaultproperties_VsourceAC


