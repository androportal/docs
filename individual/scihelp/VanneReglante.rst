


VanneReglante
=============

Thermal-hydraulic control valve



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Thermal-hydraulic control valve`_
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

The **VanneReglante** block represents a variable orifice control
valve. The flow rate through the valve is proportional to the valve
opening, ,





where is the valve opening, is the pressure difference, and is the
flow rate. This model is only used for the laminar flow regimes. is a
constant depending on the valve geometry and mass density of fluid.



Dialog box
~~~~~~~~~~






+ **Cvmax** Cvmax (maximum opening of the valve) Properties : Type
  'vec' of size -1.
+ **p_rho** Fluid density Properties : Type 'vec' of size -1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **Inputs :**

    + **Modelica variable name :** 'C1' Implicit **variable.**
    + **Modelica variable name :** 'Ouv' Explicit **variable.**

+ **Outputs :**

    + **Modelica variable name :** 'C2' Implicit **variable.**

+ **Parameters :**

    + **Modelica parameter name :** 'Cvmax' **Default value :** 8005.42
      **Is a state variable :** no.
    + **Modelica parameter name :** 'p_rho' **Default value :** 0 **Is a
      state variable :** no.

+ **File name of the model :** VanneReglante




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Hydraulics/VanneReglante.sci




Modelica model
~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Hydraulics/VanneReglante.mo


.. _Interfacing
                function: VanneReglante.html#Interfacingfunction_VanneReglante
.. _Thermal-Hydraulics
            palette: ThermoHydraulics_pal.html
.. _Palette: VanneReglante.html#Palette_VanneReglante
.. _Description: VanneReglante.html#Description_VanneReglante
.. _Dialog box: VanneReglante.html#Dialogbox_VanneReglante
.. _Modelica model: VanneReglante.html
.. _Default
                properties: VanneReglante.html#Defaultproperties_VanneReglante


