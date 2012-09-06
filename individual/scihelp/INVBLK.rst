


INVBLK
======

Inverse



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Inverse`_
  +

    + `Palette`_
    + `Description`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_
    + `See also`_





Palette
~~~~~~~


+ `Math operations palette`_




Description
~~~~~~~~~~~

This block computes the output vector y with y[i]=1/u[i] where u is
the input vector.The input and output sizes are determined by the
context.



Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,1] / type 1**
+ **regular outputs:** **- port 1 : size [-1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** invblk4




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/NonLinear/INVBLK.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/invblk4.c (Type 4)




See also
~~~~~~~~


+ `GAINBLK_f- Gain (Xcos block)`_
+ `PROD_f - Element-wise Product (Xcos block)`_
+ `PRODUCT - Element-wise vectors Multiplication/Division (Xcos
  block)`_


.. _Palette: INVBLK.html#Palette_INVBLK
.. _Inverse: INVBLK.html
.. _PROD_f - Element-wise Product (Xcos block): PROD_f.html
.. _Interfacing function: INVBLK.html#Interfacingfunction_INVBLK
.. _PRODUCT - Element-wise vectors Multiplication/Division (Xcos block): PRODUCT.html
.. _Math operations palette: Mathoperations_pal.html
.. _GAINBLK_f- Gain (Xcos block): GAINBLK_f.html
.. _Computational function: INVBLK.html#Computationalfunction_INVBLK
.. _See also: INVBLK.html#Seealso_INVBLK
.. _Default properties: INVBLK.html#Defaultproperties_INVBLK
.. _Description: INVBLK.html#Description_INVBLK


