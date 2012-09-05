


Gyrator
=======

Modelica Gyrator



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Modelica Gyrator`_
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

A gyrator is a two-port element defined by the following equations: i1
= G2 * v2 i2 = -G1 * v1 where the constants G1, G2 are called the
gyration conductance.





Dialog box
~~~~~~~~~~






+ **G1** Gyration conductance (-i2/v1) . Properties : Type 'vec' of
  size 1.
+ **G2** Gyration conductance (i1/v2). Properties : Type 'vec' of size
  1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **Inputs :**

    + **Modelica variable name :** 'p1' Implicit **variable.**
    + **Modelica variable name :** 'n1' Implicit **variable.**
    + **Modelica variable name :** 'p2' Implicit **variable.**
    + **Modelica variable name :** 'n2' Implicit **variable.**

+ **Parameters :**

    + **Modelica parameter name :** 'G1' **Default value :** 1 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'G2' **Default value :** 1 **Is a
      state variable :** no.

+ **File name of the model :** Gyrator




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Electrical/Gyrator.sci




Modelica model
~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Electrical/Gyrator.mo


.. _Electrical.cosf - Electrical toolbox: Electrical_pal.html
.. _Default properties: Gyrator.html#Defaultproperties_Gyrator
.. _Description: Gyrator.html#Description_Gyrator
.. _Dialog box: Gyrator.html#Dialogbox_Gyrator
.. _Palette: Gyrator.html#Palette_Gyrator
.. _Modelica model: Gyrator.html
.. _Interfacing function: Gyrator.html#Interfacingfunction_Gyrator


