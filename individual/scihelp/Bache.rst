


Bache
=====

Thermal-hydraulic tank (reservoir)



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Thermal-hydraulic tank (reservoir)`_
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

The **Bache** block represents a thermal-hydraulic tank or reservoir.
This block has two inlets and two outlets whose altitudes can be
changed by the user. Conventionally, for input ports (black ports)
flow direction is positive when fluid flows into the tank. On the
other hand, for output ports (white ports) flow direction is positive
when fluid flows out of the tank. The user can set the surface area of
the tank, the initial temperature and initial level of the fluid in
the tank. If an input or output port is left unused, it should be
blocked by a **stopper** block.



Dialog box
~~~~~~~~~~






+ **Pression dans le ciel de la bache : Patm (Pa)** Atmospheric
  pressure inside the tank. Properties : Type 'vec' of size -1.
+ **Section de la bache : A (m2)** Surface area of the tank.
  Properties : Type 'vec' of size -1.
+ **Altitude du piquage d entrée 1: ze1 (m)** Altitude of the first
  input port Properties : Type 'vec' of size -1.
+ **Altitude du piquage d entrée 2: ze2 (m)** Altitude of the second
  input port Properties : Type 'vec' of size -1.
+ **Altitude du piquage de sortie 1: zs1 (m)** Altitude of the first
  output port. Properties : Type 'vec' of size -1.
+ **Altitude du piquage de sortie 2: zs2 (m)** Altitude of the second
  output port. Properties : Type 'vec' of size -1.
+ **Altitude initiale du fluide : z0 (m)** Initial fluid level in the
  tank. Properties : Type 'vec' of size -1.
+ **Température initiale du fluide : T0 (K)** Temperature of fluid in
  the tank Properties : Type 'vec' of size -1.
+ **Si 0, masse volumique imposée du fluide : p_rho (kg/m3)** Density
  of fluid Properties : Type 'vec' of size -1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **Inputs :**

    + **Modelica variable name :** 'Ce1' Implicit **variable.**
    + **Modelica variable name :** 'Ce2' Implicit **variable.**

+ **Outputs :**

    + **Modelica variable name :** 'Cs1' Implicit **variable.**
    + **Modelica variable name :** 'Cs2' Implicit **variable.**
    + **Modelica variable name :** 'yNiveau' Explicit **variable.**

+ **Parameters :**

    + **Modelica parameter name :** 'Patm' **Default value :** 101300 **Is
      a state variable :** no.
    + **Modelica parameter name :** 'A' **Default value :** 1 **Is a state
      variable :** no.
    + **Modelica parameter name :** 'ze1' **Default value :** 40 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'ze2' **Default value :** 0 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'zs1' **Default value :** 40 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'zs2' **Default value :** 0 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'z0' **Default value :** 30 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'T0' **Default value :** 290 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'p_rho' **Default value :** 0 **Is a
      state variable :** no.

+ **File name of the model :** Bache




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Hydraulics/Bache.sci




Modelica model
~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Hydraulics/Bache.mo


.. _Interfacing
                function: Bache.html#Interfacingfunction_Bache
.. _Palette: Bache.html#Palette_Bache
.. _Dialog box: Bache.html#Dialogbox_Bache
.. _Modelica model: Bache.html
.. _Thermal-Hydraulics
            palette: ThermoHydraulics_pal.html
.. _Description: Bache.html#Description_Bache
.. _Default
                properties: Bache.html#Defaultproperties_Bache


