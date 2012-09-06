


INTRPLBLK_f
===========

Interpolation



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Interpolation`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Example`_
    + `Interfacing function`_
    + `See also`_





Palette
~~~~~~~


+ `Lookup tables palette`_




Description
~~~~~~~~~~~

The output of this block is a function of the input obtained by linear
interpolation. This block has a single scalar input and a single
scalar output port. The coord. and coord. give respectively the
coordinate and the coordinate of the data points to be interpolated.

*The parameter vectors should be sorted (strictly increasing).*



Dialog box
~~~~~~~~~~






+ **X coord.** A vector (strictly increasing). Properties : Type 'vec'
  of size -1
+ **Y coord.** A vector (same size as **X** coord). Properties : Type
  'vec' of size -1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 1**
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** intrpl




Example
~~~~~~~

The following example translate the sinus input signal to a different
range and cut part of it. `Open this example in Xcos.`_









Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/NonLinear/INTRPLBLK_f.sci`_




See also
~~~~~~~~


+ `INTRP2BLK_f`_ 2D interpolation


.. _Open this example in Xcos.: nullscilab.xcos/xcos/examples/lookuptables_pal/en_US/INTRPLBLK_f_en_US.xcos
.. _SCI/modules/scicos_blocks/macros/NonLinear/INTRPLBLK_f.sci: nullscilab.scinotes/scicos_blocks/macros/NonLinear/INTRPLBLK_f.sci
.. _Interpolation: INTRPLBLK_f.html
.. _Example: INTRPLBLK_f.html#Example_INTRPLBLK_f
.. _INTRP2BLK_f: INTRP2BLK_f.html
.. _Interfacing function: INTRPLBLK_f.html#Interfacingfunction_INTRPLBLK_f
.. _Default properties: INTRPLBLK_f.html#Defaultproperties_INTRPLBLK_f
.. _Palette: INTRPLBLK_f.html#Palette_INTRPLBLK_f
.. _Description: INTRPLBLK_f.html#Description_INTRPLBLK_f
.. _Dialog box: INTRPLBLK_f.html#Dialogbox_INTRPLBLK_f
.. _See also: INTRPLBLK_f.html#Seealso_INTRPLBLK_f
.. _Lookup tables palette: Lookuptables_pal.html


