


PuitsP
======

Thermal-hydraulic drain (well)



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Thermal-hydraulic drain (well)`_
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
constant pressure drain (well). This block is specified with its
pressure and temperature. Conventionally, the flow direction is
positive when fluid flows into the block.



Dialog box
~~~~~~~~~~






+ **Pression de la source : P0 (Pa)** Pressure of the thermohydraulic
  source. Properties : Type 'vec' of size -1.
+ **Temperature de la source : T0 (K)** Temperature of the
  thermohydraulic source. Properties : Type 'vec' of size -1.
+ **Enthalpie spécifique de la source : H0 (J/kg)** Specific Enthaly
  of the thermohydraulic source. Properties : Type 'vec' of size -1.
+ **1:température fixée - 2:enthalpie fixée : option_temperature**
  Temperature option. 1: fixed temperature - 2: fixed enthalpy
  Properties : Type 'vec' of size -1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **Inputs :**

    + **Modelica variable name :** 'C' Implicit **variable.**

+ **Parameters :**

    + **Modelica parameter name :** 'P0' **Default value :** 100000 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'T0' **Default value :** 290 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'H0' **Default value :** 100000 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'option_temperature' **Default value
      :** 1 **Is a state variable :** no.

+ **File name of the model :** Puits




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Hydraulics/PuitsP.sci




Modelica model
~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Hydraulics/Puits.mo


.. _Interfacing
                function: PuitsP.html#Interfacingfunction_PuitsP
.. _Modelica model: PuitsP.html
.. _Default
                properties: PuitsP.html#Defaultproperties_PuitsP
.. _Palette: PuitsP.html#Palette_PuitsP
.. _Dialog box: PuitsP.html#Dialogbox_PuitsP
.. _Thermal-Hydraulics
            palette: ThermoHydraulics_pal.html
.. _Description: PuitsP.html#Description_PuitsP


