


M_SWITCH
========

Multi-port switch



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Multi-port switch`_
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

The Multi-Port Switch block chooses between a number of inputs. The
first (top) input is called the control input, while the rest of the
inputs are called data inputs. The value of the control input
determines which data input is passed through to the output port.



Dialog box
~~~~~~~~~~






+ **number of inputs** Specify the number of data inputs to the block.
  Properties : Type 'vec' of size 1
+ **zero base indexing** If selected, the block uses zero-based
  indexing. Otherwise, the block uses one-based indexing. Properties :
  Type 'vec' of size 1
+ **rounding rule: int** Select the rounding mode for the output.
  Properties : Type 'vec' of size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 1** **- port 2 :
  size [-1,1] / type 0** **- port 3 : size [-1,1] / type 1**
+ **regular outputs:** **- port 1 : size [-1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** mswitch




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Branching/M_SWITCH.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/mswitch.c (Type 4)


.. _Interfacing function: M_SWITCH.html#Interfacingfunction_M_SWITCH
.. _Description: M_SWITCH.html#Description_M_SWITCH
.. _Computational function: M_SWITCH.html#Computationalfunction_M_SWITCH
.. _Multi-port switch: M_SWITCH.html
.. _Default properties: M_SWITCH.html#Defaultproperties_M_SWITCH
.. _Palette: M_SWITCH.html#Palette_M_SWITCH
.. _Dialog box: M_SWITCH.html#Dialogbox_M_SWITCH
.. _Signal routing palette: Signalrouting_pal.html


