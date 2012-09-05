


PMOS
====

Simple PMOS Transistor



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Simple PMOS Transistor`_
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

The PMOS model is a simple model of a p-channel metal-oxide
semiconductor FET. It differs slightly from the device used in the
SPICE simulator. For more details please care for H. Spiro.

The model does not consider capacitances. A small fixed drain-source
resistance is included (to avoid numerical difficulties).

Some typical parameter sets are:


W [m] L[m] Beta [1/V²] Vt [V] K2 K5 DW [m] DL [m] 50.e-6 8.e-6 .0085
-.15 .41 .839 -3.8e-6 -4.0e-6 20.e-6 6.e-6 .0105 -1.0 .41 .839 -2.5e-6
-2.1e-6 30.e-6 5.e-6 .0059 -.3 .98 1.01 0 -3.9e-6 30.e-6 5.e-6 .0152
-.69 .104 1.1 -.8e-6 -.4e-6 30.e-6 5.e-6 .0163 -.69 .104 1.1 -.8e-6
-.4e-6 30.e-6 5.e-6 .0182 -.69 .086 1.06 -.1e-6 -.6e-6 20.e-6 6.e-6
.0074 -1. .4 .59 0 0


Dialog box
~~~~~~~~~~






+ **Width [m]** W Properties : Type 'vec' of size 1.
+ **Length [m]** L Properties : Type 'vec' of size 1.
+ **Transconductance parameter [A/(V*V)]** Beta Properties : Type
  'vec' of size 1.
+ **Zero bias threshold voltage [V]** Vt Properties : Type 'vec' of
  size 1.
+ **Bulk threshold parameter** K2 Properties : Type 'vec' of size 1.
+ **Reduction of pinch-off region** K5 Properties : Type 'vec' of size
  1.
+ **Narrowing of channel [m]** dW Properties : Type 'vec' of size 1.
+ **Shortening of channel [m]** dL Properties : Type 'vec' of size 1.
+ **Drain-Source-Resistance [Ohm]** RDS Properties : Type 'vec' of
  size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **Inputs :**

    + **Modelica variable name :** 'G' Implicit **variable.**

+ **Outputs :**

    + **Modelica variable name :** 'D' Implicit **variable.**
    + **Modelica variable name :** 'B' Implicit **variable.**
    + **Modelica variable name :** 'S' Implicit **variable.**

+ **Parameters :**

    + **Modelica parameter name :** 'W' **Default value :** 0.00005 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'L' **Default value :** 0.000006 **Is
      a state variable :** no.
    + **Modelica parameter name :** 'Beta' **Default value :** 0.0000105
      **Is a state variable :** no.
    + **Modelica parameter name :** 'Vt' **Default value :** -1 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'K2' **Default value :** 0.41 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'K5' **Default value :** 0.839 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'dW' **Default value :** -0.0000025
      **Is a state variable :** no.
    + **Modelica parameter name :** 'dL' **Default value :** -0.0000021
      **Is a state variable :** no.
    + **Modelica parameter name :** 'RDS' **Default value :** 10000000
      **Is a state variable :** no.

+ **File name of the model :** PMOS




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Electrical/PMOS.sci




Modelica model
~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Electrical/PMOS.mo




See also
~~~~~~~~


+ `NMOS - Simple NMOS Transistor`_


.. _Electrical.cosf - Electrical
            toolbox: Electrical_pal.html
.. _Description: PMOS.html#Description_PMOS
.. _Default properties: PMOS.html#Defaultproperties_PMOS
.. _Interfacing
                function: PMOS.html#Interfacingfunction_PMOS
.. _NMOS - Simple NMOS Transistor: NMOS.html
.. _Dialog box: PMOS.html#Dialogbox_PMOS
.. _Modelica model: PMOS.html
.. _See also: PMOS.html#Seealso_PMOS
.. _Palette: PMOS.html#Palette_PMOS


