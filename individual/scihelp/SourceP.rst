


SourceP
=======

Thermal-hydraulic constant pressure source



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Thermal-hydraulic constant pressure source`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Modelica model`_





Palette
~~~~~~~


+ `Thermal-Hydraulics palette`_




Description
~~~~~~~~~~~

This thermal-hydraulic component represents a thermal-hydraulic
constant pressure supply. This block is specified with its output
pressure and temperature. Conventionally, the flow direction is
positive when the fluid flows out of the block.



Dialog box
~~~~~~~~~~






+ **Pression de la source : P0 (Pa)** Pressure of the thermohydraulic
  source Properties : Type 'vec' of size -1.
+ **Temperature de la source : T0 (K)** Temperature of the
  thermohydraulic source Properties : Type 'vec' of size -1.
+ **Enthalpie spécifique de la source : H0 (J/kg)** Specific enthalpie
  of the thermohydraulic source Properties : Type 'vec' of size -1.
+ **1:température fixée - 2:enthalpie fixée : option_temperature**
  Temperature option. 1: fixed temperature - 2: fixed enthalpy
  Properties : Type 'vec' of size -1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **Outputs :**

    + **Modelica variable name :** 'C' Implicit **variable.**

+ **Parameters :**

    + **Modelica parameter name :** 'P0' **Default value :** 300000 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'T0' **Default value :** 290 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'H0' **Default value :** 100000 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'option_temperature' **Default value
      :** 1 **Is a state variable :** no.

+ **File name of the model :** Source




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Hydraulics/SourceP.sci




Modelica model
~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Hydraulics/Source.mo


.. _Dialog box: SourceP.html#Dialogbox_SourceP
.. _Modelica model: SourceP.html
.. _Thermal-Hydraulics
            palette: ThermoHydraulics_pal.html
.. _Description: SourceP.html#Description_SourceP
.. _Palette: SourceP.html#Palette_SourceP
.. _Interfacing
                function: SourceP.html#Interfacingfunction_SourceP
.. _Default
                properties: SourceP.html#Defaultproperties_SourceP


