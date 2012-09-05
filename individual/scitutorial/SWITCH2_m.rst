


SWITCH2_m
=========

Switch2



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Switch2`_
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


+ `Signal routing palette`_




Description
~~~~~~~~~~~

The Switch block passes through the first (top) input or the third
(bottom) input based on the value of the second (middle) input. The
first and third inputs are called data inputs. The second input is
called the control input. You select the conditions under which the
first input is passed with the Criteria for passing first input
parameter. You can make the block check whether the control input is
greater than or equal to the threshold value, purely greater than the
threshold value, or nonzero. If the control input meets the condition
set in the Criteria for passing first input parameter, then the first
input is passed. Otherwise, the third input is passed.



Dialog box
~~~~~~~~~~






+ **Datatype(1= real double 2=Complex)** a scalar. Give the datatype
  of the inputs/output. Properties : Type 'vec' of size 1
+ **pass first input if: u2 =a** Select the conditions under which the
  first input is passed. You can make the block check whether the
  control input is greater than or equal to the threshold value, purely
  greater than the threshold value, or nonzero. If the control input
  meets the condition set in this parameter, then the first input is
  passed. Otherwise, the third input is passed. Properties : Type 'vec'
  of size 1.
+ **threshold a** Assign the switch threshold that determines which
  input is passed to the output. Properties : Type 'vec' of size 1.
+ **use zero crossing: yes** Select to enable zero crossing detection.
  Properties : Type 'vec' of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** yes
+ **mode:** yes
+ **regular inputs:** **- port 1 : size [-1,-2] / type 1** **- port 2
  : size [1,1] / type 0** **- port 3 : size [-1,-2] / type 1**
+ **regular outputs:** **- port 1 : size [-1,-2] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** switch2_m




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Branching/SWITCH2_m.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/switch2_m.c (Type 4)




Example
~~~~~~~

` `_

.. _Palette: SWITCH2_m.html#Palette_SWITCH2_m
.. _Dialog box: SWITCH2_m.html#Dialogbox_SWITCH2_m
.. _Description: SWITCH2_m.html#Description_SWITCH2_m
.. _Interfacing function: SWITCH2_m.html#Interfacingfunction_SWITCH2_m
.. _Computational function: SWITCH2_m.html#Computationalfunction_SWITCH2_m
.. _Example: SWITCH2_m.html#Example_SWITCH2_m
.. _Switch2: SWITCH2_m.html
.. _Default properties: SWITCH2_m.html#Defaultproperties_SWITCH2_m
.. _Signal routing palette: Signalrouting_pal.html


