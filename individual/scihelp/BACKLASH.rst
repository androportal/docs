


BACKLASH
========

Backlash



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Backlash`_
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

The block Backlash allows the representation of a system presenting a
mechanical play like system of gearings. When the input increases
(decreases), changes of the input of the block Backlash give equal
changes of its output. When the input changes direction, the system is
disengaged during a short moment (the play is called **deadband** or
**gap**). Therefor, at the initial moment of the change, the input has
no effect and the output remains constant. Then, changes of the input
give equal changes on the output up to the next change of direction of
the input.



Dialog box
~~~~~~~~~~






+ **initial output** The initial output value. Properties : Type 'vec'
  of size 1
+ **gap** The width of the dead-band. Properties : Type 'vec' of size
  1
+ **use zero-crossing** Select to enable use of zero crossing
  detection to detect engagement with lower and upper thresholds.
  Properties : Type 'vec' of size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** yes
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 1**
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** backlash




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Misc/BACKLASH.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/backlash.c (Type 4)




Example
~~~~~~~

` `_

.. _discontinuities palette: discontinuities_pal.html
.. _Computational function: BACKLASH.html#Computationalfunction_BACKLASH
.. _Backlash: BACKLASH.html
.. _Palette: BACKLASH.html#Palette_BACKLASH
.. _Interfacing function: BACKLASH.html#Interfacingfunction_BACKLASH
.. _Example: BACKLASH.html#Example_BACKLASH
.. _Dialog box: BACKLASH.html#Dialogbox_BACKLASH
.. _Default properties: BACKLASH.html#Defaultproperties_BACKLASH
.. _Description: BACKLASH.html#Description_BACKLASH


