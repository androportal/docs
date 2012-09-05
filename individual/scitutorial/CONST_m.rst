


CONST_m
=======

Constant



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Constant`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Sources palette`_




Description
~~~~~~~~~~~

This block is a constant value generator.



Dialog box
~~~~~~~~~~






+ **Constant** A matrix of any type. The size of the matrix gives the
  size of the regular output port. The constant(i,j) value is the
  component(i,j) value of the output port. From this value the block
  inherits its data type. Properties : Type 'mat' of size [-1,-2].




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** cstblk4




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Sources/CONST_m.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/cstblk4.c (Type 4)


.. _Description: CONST_m.html#Description_CONST_m
.. _Interfacing function: CONST_m.html#Interfacingfunction_CONST_m
.. _Default properties: CONST_m.html#Defaultproperties_CONST_m
.. _Sources palette: Sources_pal.html
.. _Constant: CONST_m.html
.. _Palette: CONST_m.html#Palette_CONST_m
.. _Computational function: CONST_m.html#Computationalfunction_CONST_m
.. _Dialog box: CONST_m.html#Dialogbox_CONST_m


