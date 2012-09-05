


HYSTHERESIS
===========

Hystheresis



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Hystheresis`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_
    + `Example`_





Palette
~~~~~~~


+ `discontinuities palette`_




Description
~~~~~~~~~~~

Switch output between two constants.The Relay block allows its output
to switch between two specified values. When the relay is on, it
remains on until the input drops below the value of the Switch off
point parameter. When the relay is off, it remains off until the input
exceeds the value of the Switch on point parameter. The block accepts
one input and generates one output.



Dialog box
~~~~~~~~~~






+ **switch on at** The Switch on point parameter is converted to the
  input data type offline using round-to-nearest and saturation.
  Properties : Type 'vec' of size 1
+ **switch off at** The Switch off point parameter is converted to the
  input data type offline using round-to-nearest and saturation.
  Properties : Type 'vec' of size 1
+ **output when on** The output when the relay is on. Properties :
  Type 'vec' of size 1
+ **output when off** The output when the relay is off. Properties :
  Type 'vec' of size 1
+ **use zero crossing: yes** Select to enable zero crossing detection
  to detect switch-on and switch-off points. Properties : Type 'vec' of
  size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** yes
+ **mode:** yes
+ **regular inputs:** **- port 1 : size [1,1] / type 1**
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** hystheresis




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Misc/HYSTHERESIS.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/hystheresis.c (Type 4)




Example
~~~~~~~
` `_
.. _Default properties: HYSTHERESIS.html#Defaultproperties_HYSTHERESIS
.. _discontinuities palette: discontinuities_pal.html
.. _Computational function: HYSTHERESIS.html#Computationalfunction_HYSTHERESIS
.. _Hystheresis: HYSTHERESIS.html
.. _Example: HYSTHERESIS.html#Example_HYSTHERESIS
.. _Description: HYSTHERESIS.html#Description_HYSTHERESIS
.. _Palette: HYSTHERESIS.html#Palette_HYSTHERESIS
.. _Dialog box: HYSTHERESIS.html#Dialogbox_HYSTHERESIS
.. _Interfacing function: HYSTHERESIS.html#Interfacingfunction_HYSTHERESIS


