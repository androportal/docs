


PNP
===

PNP transistor



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `PNP transistor`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Modelica model`_
    + `See also`_





Palette
~~~~~~~


+ `Electrical.cosf - Electrical toolbox`_




Description
~~~~~~~~~~~

This model is a simple model of a bipolar PNP junction transistor
according to Ebers-Moll.





Dialog box
~~~~~~~~~~






Parameter Default value Description Bf 50 Forward beta Br 0.1 Reverse
beta Is 1.e-16 Transport saturation current [A] Vak 0.02 Early voltage
(inverse), 1/Volt [1/V] Tauf 0.12e-9 Ideal forward transit time [s]
Taur 5e-9 Ideal reverse transit time [s] Ccs 1e-12 Collector-
substrat(ground) cap. [F] Cje 0.4e-12 Base-emitter zero bias depletion
cap. [F] Cjc 0.5e-12 Base-coll. zero bias depletion cap. [F] Phie 0.8
Base-emitter diffusion voltage [V] Me 0.4 Base-emitter gradation
exponent Phic 0.8 Base-collector diffusion voltage [V] Mc 0.333 Base-
collector gradation exponent Gbc 1e-15 Base-collector conductance [S]
Gbe 1e-15 Base-emitter conductance [S] Vt 0.02585 Voltage equivalent
of temperature [V] EMin -100 if x < EMin, the exp(x) function is
linearized EMax 40 if x > EMax, the exp(x) function is linearized


Default properties
~~~~~~~~~~~~~~~~~~


+ **Inputs :**

    + **Modelica variable name :** 'B' Implicit **variable.**

+ **Outputs :**

    + **Modelica variable name :** 'C' Implicit **variable.**
    + **Modelica variable name :** 'E' Implicit **variable.**

+ **Parameters :**

    + **Modelica parameter name :** 'Bf' **Default value :** 50 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'Br' **Default value :** 0.1 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'Is' **Default value :** 0 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'Vak' **Default value :** 0.02 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'Tauf' **Default value :** 1.200E-10
      **Is a state variable :** no.
    + **Modelica parameter name :** 'Taur' **Default value :** 5.000E-09
      **Is a state variable :** no.
    + **Modelica parameter name :** 'Ccs' **Default value :** 1.000E-12
      **Is a state variable :** no.
    + **Modelica parameter name :** 'Cje' **Default value :** 4.000E-13
      **Is a state variable :** no.
    + **Modelica parameter name :** 'Cjc' **Default value :** 5.000E-13
      **Is a state variable :** no.
    + **Modelica parameter name :** 'Phie' **Default value :** 0.8 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'Me' **Default value :** 0.4 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'Phic' **Default value :** 0.8 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'Mc' **Default value :** 0.333 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'Gbc' **Default value :** 1.000E-15
      **Is a state variable :** no.
    + **Modelica parameter name :** 'Gbe' **Default value :** 1.000E-15
      **Is a state variable :** no.
    + **Modelica parameter name :** 'Vt' **Default value :** 0.02585 **Is
      a state variable :** no.
    + **Modelica parameter name :** 'EMinMax' **Default value :** 40 **Is
      a state variable :** no.

+ **File name of the model :** PNP




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Electrical/PNP.sci




Modelica model
~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Electrical/PNP.mo




See also
~~~~~~~~


+ `NPN - NPN transistor`_


.. _Electrical.cosf - Electrical toolbox: Electrical_pal.html
.. _Description: PNP.html#Description_PNP
.. _NPN - NPN transistor: NPN.html
.. _Interfacing function: PNP.html#Interfacingfunction_PNP
.. _Palette: PNP.html#Palette_PNP
.. _See also: PNP.html#Seealso_PNP
.. _Modelica model: PNP.html
.. _Dialog box: PNP.html#Dialogbox_PNP
.. _Default properties: PNP.html#Defaultproperties_PNP


