


VVsourceAC
==========

Variable AC voltage source



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Variable AC voltage source`_
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

The variable voltage source block is a model for a controlled AC
voltage source. This component provides a sinusoid voltage across its
ports. The amplitude of the output voltage is governed by the explicit
input and the frequency is defined by the user. The ohmic resistance
of the block is zero.



Dialog box
~~~~~~~~~~






+ **Frequency (Hz)** Frequency of the output sinosoid voltage
  Properties : Type 'vec' of size -1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **Inputs :**

    + **Modelica variable name :** 'p' Implicit **variable.**
    + **Modelica variable name :** 'VA' Explicit **variable.**

+ **Outputs :**

    + **Modelica variable name :** 'n' Implicit **variable.**

+ **Parameters :**

    + **Modelica parameter name :** 'f' **Default value :** 50 **Is a
      state variable :** no.

+ **File name of the model :** VVsourceAC




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Electrical/VVsourceAC.sci




Modelica model
~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Electrical/VVsourceAC.mo


.. _Electrical.cosf - Electrical toolbox: Electrical_pal.html
.. _Description: VVsourceAC.html#Description_VVsourceAC
.. _Default properties: VVsourceAC.html#Defaultproperties_VVsourceAC
.. _Dialog box: VVsourceAC.html#Dialogbox_VVsourceAC
.. _Interfacing function: VVsourceAC.html#Interfacingfunction_VVsourceAC
.. _Palette: VVsourceAC.html#Palette_VVsourceAC
.. _Modelica model: VVsourceAC.html


