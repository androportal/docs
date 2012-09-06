


CURV_f
======

Curve



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Curve`_
  +

    + `Palette`_
    + `Description`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_
    + `See also`_





Palette
~~~~~~~


+ `Sources palette`_




Description
~~~~~~~~~~~

This block defines a tabulated function of time. Between mesh points
block performs a linear interpolation. Outside tabulation block
outputs last tabulated value. User may define the tabulation of the
function using a curve editor.



Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** yes
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** intplt




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Sources/CURV_f.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/fortran/intplt.f (Type 0)




See also
~~~~~~~~


+ `Sigbuilder - Signal creator/generator`_


.. _Sources palette: Sources_pal.html
.. _Computational function: CURV_f.html#Computationalfunction_CURV_f
.. _Sigbuilder - Signal creator/generator: Sigbuilder.html
.. _Curve: CURV_f.html
.. _Interfacing function: CURV_f.html#Interfacingfunction_CURV_f
.. _Description: CURV_f.html#Description_CURV_f
.. _See also: CURV_f.html#Seealso_CURV_f
.. _Palette: CURV_f.html#Palette_CURV_f
.. _Default properties: CURV_f.html#Defaultproperties_CURV_f


