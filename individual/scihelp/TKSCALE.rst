


TKSCALE
=======

Adjust value with a graphical widget.



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Adjust value with a graphical widget.`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Example`_
    + `Interfacing function`_





Palette
~~~~~~~


+ `Sources palette`_




Description
~~~~~~~~~~~

This source block generates a piecewise constant signal the value of
which can be set interactively using a widget in the course of the
simulation. The output value is the value set by the slider (an
integer between Min value and Max value) divided by the Normalization
factor. Increasing proportionaly all three block parameters does not
change the output range, but it does increase precision.





Dialog box
~~~~~~~~~~






+ **Min value** An integer specifying the min value in the range of
  the scale. Properties : Type 'vec' of size 1.
+ **Max value** An integer specifying the max value in the range of
  the scale. Properties : Type 'vec' of size 1.
+ **Normalization** The output of the block is the integer value
  specified by the slider (an integer between Min value and the Max
  value) divided by this Normalization factor. Properties : Type 'vec'
  of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 1
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** tkscaleblk




Example
~~~~~~~

`Open this example in Xcos`_





Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/Sources/TKSCALE.sci`_


.. _SCI/modules/scicos_blocks/macros/Sources/TKSCALE.sci: nullscilab.scinotes/scicos_blocks/macros/Sources/TKSCALE.sci
.. _Adjust value with a graphical widget.: TKSCALE.html
.. _Description: TKSCALE.html#Description_TKSCALE
.. _Sources palette: Sources_pal.html
.. _Default properties: TKSCALE.html#Defaultproperties_TKSCALE
.. _Dialog box: TKSCALE.html#Dialogbox_TKSCALE
.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/sources_pal/en_US/TKSCALE_en_US.xcos
.. _Interfacing function: TKSCALE.html#Interfacingfunction_TKSCALE
.. _Example: TKSCALE.html#Example_TKSCALE
.. _Palette: TKSCALE.html#Palette_TKSCALE


