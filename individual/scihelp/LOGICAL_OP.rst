


LOGICAL_OP
==========

Logical operation



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Logical operation`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Commonly used blocks palette`_




Description
~~~~~~~~~~~

The Logical Operator block performs the specified logical operation on
its inputs. An input value is TRUE (1) if it is nonzero and FALSE (0)
if it is zero.



Dialog box
~~~~~~~~~~






+ **number of inputs** The number of block inputs. The value must be
  appropriate for the selected operator. Properties : Type 'vec' of size
  1
+ **Operator: AND** The logical operator to be applied to the block
  inputs. Valid choices are the operators from the list. Properties :
  Type 'vec' of size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,1] / type 1** **- port 2 :
  size [-1,1] / type 1**
+ **regular outputs:** **- port 1 : size [-1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** logicalop




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Misc/LOGICAL_OP.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/logicalop.c
+ SCI/modules/scicos_blocks/src/c/logicalop_i32.c
+ SCI/modules/scicos_blocks/src/c/logicalop_i16.c
+ SCI/modules/scicos_blocks/src/c/logicalop_i8.c
+ SCI/modules/scicos_blocks/src/c/logicalop_ui32.c
+ SCI/modules/scicos_blocks/src/c/logicalop_ui16.c
+ SCI/modules/scicos_blocks/src/c/logicalop_ui8.c


.. _Palette: LOGICAL_OP.html#Palette_LOGICAL_OP
.. _Default properties: LOGICAL_OP.html#Defaultproperties_LOGICAL_OP
.. _Interfacing function: LOGICAL_OP.html#Interfacingfunction_LOGICAL_OP
.. _Description: LOGICAL_OP.html#Description_LOGICAL_OP
.. _Dialog box: LOGICAL_OP.html#Dialogbox_LOGICAL_OP
.. _Computational function: LOGICAL_OP.html#Computationalfunction_LOGICAL_OP
.. _Logical operation: LOGICAL_OP.html
.. _Commonly used blocks palette: Commonlyusedblocks_pal.html


