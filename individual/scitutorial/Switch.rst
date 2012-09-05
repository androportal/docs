


Switch
======

Non-ideal electrical switch



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Non-ideal electrical switch`_
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

This is a non-ideal two-pole switch. If the explicit input become
positive, two pins are connected via a resistor of resistance RON).
Otherwise, two pins are connected via ROFF resistance. Note that using
this block may result in a stiff model, so try to choose proper error
tolerances.





Dialog box
~~~~~~~~~~






+ **Resistance in On state (Ohm)** Switch resistance when the Switch
  is closed Properties : Type 'vec' of size 1.
+ **Resistance in Off state (Ohm)** Switch resistance when the switch
  is open Properties : Type 'vec' of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **Inputs :**

    + **Modelica variable name :** 'p' Implicit **variable.**
    + **Modelica variable name :** 'inp' Explicit **variable.**

+ **Outputs :**

    + **Modelica variable name :** 'n' Implicit **variable.**

+ **Parameters :**

    + **Modelica parameter name :** 'Ron' **Default value :** 0.01 **Is a
      state variable :** no.
    + **Modelica parameter name :** 'Roff' **Default value :** 100000 **Is
      a state variable :** no.

+ **File name of the model :** Switch




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Electrical/Switch.sci




Modelica model
~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Electrical/Switch.mo


.. _Electrical.cosf - Electrical toolbox: Electrical_pal.html
.. _Description: Switch.html#Description_Switch
.. _Interfacing function: Switch.html#Interfacingfunction_Switch
.. _Palette: Switch.html#Palette_Switch
.. _Dialog box: Switch.html#Dialogbox_Switch
.. _Modelica model: Switch.html
.. _Default properties: Switch.html#Defaultproperties_Switch


