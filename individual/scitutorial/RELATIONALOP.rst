


RELATIONALOP
============

Relational operation



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Relational operation`_
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

It performs logical comparison of its two inputs.



Dialog box
~~~~~~~~~~






+ **Operator: ==** Designate the relational operator used to compare
  the two inputs. Properties : Type 'vec' of size 1
+ **Use zero crossing** Select to enable zero crossing detection.
  Properties : Type 'vec' of size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 1** **- port 2 :
  size [1,1] / type 1**
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** relationalop




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Misc/RELATIONALOP.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/relational_op.c
+ SCI/modules/scicos_blocks/src/c/relational_op_i32.c
+ SCI/modules/scicos_blocks/src/c/relational_op_i16.c
+ SCI/modules/scicos_blocks/src/c/relational_op_i8.c
+ SCI/modules/scicos_blocks/src/c/relational_op_ui32.c
+ SCI/modules/scicos_blocks/src/c/relational_op_ui16.c
+ SCI/modules/scicos_blocks/src/c/relational_op_ui8.c


.. _Description: RELATIONALOP.html#Description_RELATIONALOP
.. _Palette: RELATIONALOP.html#Palette_RELATIONALOP
.. _Dialog box: RELATIONALOP.html#Dialogbox_RELATIONALOP
.. _Interfacing function: RELATIONALOP.html#Interfacingfunction_RELATIONALOP
.. _Default properties: RELATIONALOP.html#Defaultproperties_RELATIONALOP
.. _Commonly used blocks palette: Commonlyusedblocks_pal.html
.. _Relational operation: RELATIONALOP.html
.. _Computational function: RELATIONALOP.html#Computationalfunction_RELATIONALOP


