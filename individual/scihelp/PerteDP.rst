


PerteDP
=======

Thermal-hydraulic pipe



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Thermal-hydraulic pipe`_
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

A **PertDP** block represents a hydraulic pipe with linear resistance
losses. This component represents a hydraulic resistance and pressure
loss is directly proportional to the flow rate. Conventionally, the
flow direction is the positive when fluid flows from the black port to
the white port. The pressure loss is obtained

with





. The key parameters of this block are the pipes' length, the pipe's
diameter, inlet and outlet altitudes, and some other thermal-hydraulic
coefficients.



Dialog box
~~~~~~~~~~






+ **Longueur du tube : L (m)** Length of pipe Properties : Type 'vec'
  of size -1.
+ **Diamètre interne du tube : D (m)** Pipe diameter Properties : Type
  'vec' of size -1.
+ **Coefficient de perte de charge-frottement(S.U) : lambda**
  Coefficient of thermohydraluc resistance Properties : Type 'vec' of
  size -1.
+ **Altitude entrée tuyauterie : z1 (m)** Altitude of the first port
  (z1) Properties : Type 'vec' of size -1.
+ **Altitude sortie tuyauterie : z2 (m)** Altitude of the second port
  (z2) Properties : Type 'vec' of size -1.
+ **Si 0, masse volumique imposée fu fluide : p_rho (kg/m3)** Fluid
  density Properties : Type 'vec' of size -1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **Inputs :**

    + **Modelica variable name :** 'C1' Implicit **variable.**

+ **Outputs :**

    + **Modelica variable name :** 'C2' Implicit **variable.**

+ **Parameters :**

    + **Modelica parameter name :** 'L' **Default value :** 10 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'D' **Default value :** 0.2 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'lambda' **Default value :** 0.03 **Is
      a state variable :** no.
    + **Modelica parameter name :** 'z1' **Default value :** 0 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'z2' **Default value :** 0 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'p_rho' **Default value :** 0 **Is a
      state variable :** no.

+ **File name of the model :** PerteDP




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Hydraulics/PerteDP.sci




Modelica model
~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Hydraulics/PerteDP.mo


.. _Default
                properties: PerteDP.html#Defaultproperties_PerteDP
.. _Description: PerteDP.html#Description_PerteDP
.. _Palette: PerteDP.html#Palette_PerteDP
.. _Dialog box: PerteDP.html#Dialogbox_PerteDP
.. _Modelica model: PerteDP.html
.. _Interfacing
                function: PerteDP.html#Interfacingfunction_PerteDP
.. _Thermal-Hydraulics
            palette: ThermoHydraulics_pal.html


