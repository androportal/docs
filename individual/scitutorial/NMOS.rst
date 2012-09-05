


NMOS
====

Simple NMOS Transistor



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Simple NMOS Transistor`_
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

Description



The NMos model is a simple model of a n-channel metal-oxide
semiconductor FET. It differs slightly from the device used in the
SPICE simulator. For more details please care for H. Spiro.

The model does not consider capacitances. A small fixed drain-source
resistance is included (to avoid numerical difficulties).


W [m] L [m] Beta [1/V²] Vt [V] K2 K5 DW [m] DL[m] 12.e-6 4.e-6 .062
-4.5 .24 .61 -1.2e-6 -.9e-6 depletion 60.e-6 3.e-6 .048 .1 .08 .68
-1.2e-6 -.9e-6 enhancement 12.e-6 4.e-6 .0625 -.8 .21 .78 -1.2e-6
-.9e-6 zero 50.e-6 8.e-6 .0299 .24 1.144 .7311 -5.4e-6 -4.e-6 20.e-6
6.e-6 .041 .8 1.144 .7311 -2.5e-6 -1.5e-6 30.e-6 9.e-6 .025 -4. .861
.878 -3.4e-6 -1.74e-6 30.e-6 5.e-6 .031 .6 1.5 .72 0 -3.9e-6 50.e-6
6.e-6 .0414 -3.8 .34 .8 -1.6e-6 -2.e-6 depletion 50.e-6 5.e-6 .03 .37
.23 .86 -1.6e-6 -2.e-6 enhancement 50.e-6 6.e-6 .038 -.9 .23 .707
-1.6e-6 -2.e-6 zero 20.e-6 4.e-6 .06776 .5409 .065 .71 -.8e-6 -.2e-6
20.e-6 4.e-6 .06505 .6209 .065 .71 -.8e-6 -.2e-6 20.e-6 4.e-6 .05365
.6909 .03 .8 -.3e-6 -.2e-6 20.e-6 4.e-6 .05365 .4909 .03 .8 -.3e-6
-.2e-6 12.e-6 4.e-6 .023 -4.5 .29 .6 0 0 depletion 60.e-6 3.e-6 .022
.1 .11 .65 0 0 enhancement 12.e-6 4.e-6 .038 -.8 .33 .6 0 0 zero
20.e-6 6.e-6 .022 .8 1 .66 0 0


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

    + **Modelica parameter name :** 'W' **Default value :** 0.00002 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'L' **Default value :** 0.000006 **Is
      a state variable :** no.
    + **Modelica parameter name :** 'Beta' **Default value :** 0.000041
      **Is a state variable :** no.
    + **Modelica parameter name :** 'Vt' **Default value :** 0.8 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'K2' **Default value :** 1.144 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'K5' **Default value :** 0.7311 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'dW' **Default value :** -0.0000025
      **Is a state variable :** no.
    + **Modelica parameter name :** 'dL' **Default value :** -0.0000015
      **Is a state variable :** no.
    + **Modelica parameter name :** 'RDS' **Default value :** 10000000
      **Is a state variable :** no.

+ **File name of the model :** NMOS




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Electrical/NMOS.sci




Modelica model
~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Electrical/NMOS.mo




See also
~~~~~~~~


+ `PMOS - Simple PMOS Transistor`_


.. _Electrical.cosf - Electrical
            toolbox: Electrical_pal.html
.. _Modelica model: NMOS.html
.. _Default properties: NMOS.html#Defaultproperties_NMOS
.. _See also: NMOS.html#Seealso_NMOS
.. _Palette: NMOS.html#Palette_NMOS
.. _Dialog box: NMOS.html#Dialogbox_NMOS
.. _Description: NMOS.html#Description_NMOS
.. _PMOS - Simple PMOS Transistor: PMOS.html
.. _Interfacing
                function: NMOS.html#Interfacingfunction_NMOS


