


SATURATION
==========

Saturation



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Saturation`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `discontinuities palette`_




Description
~~~~~~~~~~~

The Saturation block imposes upper and lower bounds on a signal. When
the input signal is within the range specified by the Lower limit and
Upper limit parameters, the input signal passes through unchanged.
When the input signal is outside these bounds, the signal is clipped
to the upper or lower bound. When the Lower limit and Upper limit
parameters are set to the same value, the block outputs that value.



Dialog box
~~~~~~~~~~






+ **Upper limit** Specify the upper bound on the input signal. When
  the input signal to the Saturation block is above this value, the
  output of the block is clipped to this value. Properties : Type 'vec'
  of size 1
+ **Lower limit** Specify the lower bound on the input signal. When
  the input signal to the Saturation block is below this value, the
  output of the block is clipped to this value. Properties : Type 'vec'
  of size 1
+ **zero crossing** Select to enable zero crossing detection.
  Properties : Type 'vec' of size 1




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
+ **name of computational function:** satur




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/NonLinear/SATURATION.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/satur.c (Type 4)


.. _Computational function: SATURATION.html#Computationalfunction_SATURATION
.. _Description: SATURATION.html#Description_SATURATION
.. _discontinuities palette: discontinuities_pal.html
.. _Interfacing function: SATURATION.html#Interfacingfunction_SATURATION
.. _Palette: SATURATION.html#Palette_SATURATION
.. _Default properties: SATURATION.html#Defaultproperties_SATURATION
.. _Saturation: SATURATION.html
.. _Dialog box: SATURATION.html#Dialogbox_SATURATION


