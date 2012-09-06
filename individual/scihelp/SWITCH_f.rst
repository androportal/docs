


SWITCH_f
========

Switch



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Switch`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Signal routing palette`_




Description
~~~~~~~~~~~

This is a Manual Switch block. It selects one of its inputs to pass
through to the output. The selected input is propagated to the output,
while the unselected inputs are discarded.



Dialog box
~~~~~~~~~~






+ **number of inputs** Specify the number of data inputs to the block.
  Properties : Type 'vec' of size 1
+ **connected input** an integer. It must be between 1 and the number
  of inputs. Properties : Type 'vec' of size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** yes
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
+ **name of computational function:** switchn




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Branching/SWITCH_f.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/switchn.c (Type 2)


.. _Signal routing palette: Signalrouting_pal.html
.. _Palette: SWITCH_f.html#Palette_SWITCH_f
.. _Dialog box: SWITCH_f.html#Dialogbox_SWITCH_f
.. _Interfacing function: SWITCH_f.html#Interfacingfunction_SWITCH_f
.. _Computational function: SWITCH_f.html#Computationalfunction_SWITCH_f
.. _Description: SWITCH_f.html#Description_SWITCH_f
.. _Switch: SWITCH_f.html
.. _Default properties: SWITCH_f.html#Defaultproperties_SWITCH_f


