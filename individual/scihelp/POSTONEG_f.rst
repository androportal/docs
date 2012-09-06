


POSTONEG_f
==========

Threshold positive to negative



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Threshold positive to negative`_
  +

    + `Palette`_
    + `Description`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Zero crossing detection palette`_




Description
~~~~~~~~~~~

An output event is generated when the unique input crosses zero with a
negative slope.



Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** yes
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 1
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** zcross




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Threshold/POSTONEG_f.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/fortran/zcross.f (Type 1)


.. _Zero crossing detection palette: Zerocrossingdetection_pal.html
.. _Description: POSTONEG_f.html#Description_POSTONEG_f
.. _Interfacing function: POSTONEG_f.html#Interfacingfunction_POSTONEG_f
.. _Threshold positive to negative: POSTONEG_f.html
.. _Palette: POSTONEG_f.html#Palette_POSTONEG_f
.. _Computational function: POSTONEG_f.html#Computationalfunction_POSTONEG_f
.. _Default properties: POSTONEG_f.html#Defaultproperties_POSTONEG_f


