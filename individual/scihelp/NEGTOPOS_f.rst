


NEGTOPOS_f
==========

Threshold negative to positive



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Threshold negative to positive`_
  +

    + `Palette`_
    + `Description`_
    + `Default properties`_
    + `Example`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Zero crossing detection palette`_




Description
~~~~~~~~~~~

An output event is generated when the unique input crosses zero with a
positive slope.



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




Example
~~~~~~~
` `_


Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Threshold/NEGTOPOS_f.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/fortran/zcross.f (Type 1)


.. _Zero crossing detection palette: Zerocrossingdetection_pal.html
.. _Palette: NEGTOPOS_f.html#Palette_NEGTOPOS_f
.. _Computational function: NEGTOPOS_f.html#Computationalfunction_NEGTOPOS_f
.. _Example: NEGTOPOS_f.html#Example_NEGTOPOS_f
.. _Threshold negative to positive: NEGTOPOS_f.html
.. _Interfacing function: NEGTOPOS_f.html#Interfacingfunction_NEGTOPOS_f
.. _Default properties: NEGTOPOS_f.html#Defaultproperties_NEGTOPOS_f
.. _Description: NEGTOPOS_f.html#Description_NEGTOPOS_f


