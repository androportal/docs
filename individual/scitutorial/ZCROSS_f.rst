


ZCROSS_f
========

Threshold detection at zero



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Threshold detection at zero`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Zero crossing detection palette`_




Description
~~~~~~~~~~~

An output event is generated when all inputs (if more than one) cross
zero simultaneously.



Dialog box
~~~~~~~~~~






+ **Input size** a positive integer. Property : Type 'vec' of size 1.




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


+ SCI/modules/scicos_blocks/macros/Threshold/ZCROSS_f.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/fortran/zcross.f (Type 1)


.. _Threshold detection at zero: ZCROSS_f.html
.. _Zero crossing detection palette: Zerocrossingdetection_pal.html
.. _Computational function: ZCROSS_f.html#Computationalfunction_ZCROSS_f
.. _Palette: ZCROSS_f.html#Palette_ZCROSS_f
.. _Description: ZCROSS_f.html#Description_ZCROSS_f
.. _Interfacing function: ZCROSS_f.html#Interfacingfunction_ZCROSS_f
.. _Dialog box: ZCROSS_f.html#Dialogbox_ZCROSS_f
.. _Default properties: ZCROSS_f.html#Defaultproperties_ZCROSS_f


