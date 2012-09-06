


AFFICH_m
========

Display



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Display`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Example`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Sinks palette`_




Description
~~~~~~~~~~~

This block displays the value of its unique input inside the block (in
the diagram) during simulation.



Dialog box
~~~~~~~~~~






+ **Input Size** Explicitly define the size of the input port.
  Properties : Type 'mat' of size [1,2].
+ **Font number** integer, the selected font number (see xset).
  Properties : Type 'vec' of size 1
+ **Font size** integer, the selected font size (set xset) Properties
  : Type 'vec' of size 1
+ **Color** integer, the selected color for the text (see xset)
  Properties : Type 'vec' of size 1
+ **Total number of digits** an integer greater than 3, the maximum
  number of digits used to represent the number (sign, integer part and
  rational part) Properties : Type 'vec' of size 1
+ **Number of rational part digits** n integer greater than or equal
  0, the number of digits used to represent the rational part Properties
  : Type 'vec' of size 1
+ **Block inherits** Options to choose event inheritance from regular
  input or from explicit event input (0). Properties : Type 'vec' of
  size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 1
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** yes
+ **object discrete-time state:** no
+ **name of computational function:** affich2




Example
~~~~~~~
` `_


Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Sinks/AFFICH_m.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/fortran/affich2.f (Type 0)


.. _Description: AFFICH_m.html#Description_AFFICH_m
.. _Interfacing function: AFFICH_m.html#Interfacingfunction_AFFICH_m
.. _Display: AFFICH_m.html
.. _Dialog box: AFFICH_m.html#Dialogbox_AFFICH_m
.. _Computational function: AFFICH_m.html#Computationalfunction_AFFICH_m
.. _Palette: AFFICH_m.html#Palette_AFFICH_m
.. _Sinks palette: Sinks_pal.html
.. _Example: AFFICH_m.html#Example_AFFICH_m
.. _Default properties: AFFICH_m.html#Defaultproperties_AFFICH_m


