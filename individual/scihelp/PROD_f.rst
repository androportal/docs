


PROD_f
======

Element-wise product



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Element-wise product`_
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

The output of that block is the element-wise product of its two input
vectors.



Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,1] / type 1** **- port 2 :
  size [-1,1] / type 1**
+ **regular outputs:** **- port 1 : size [-1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** prod




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/NonLinear/PROD_f.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/prod.c (Type 2)




Voir aussi
~~~~~~~~~~


+ `GAINBLK_f - Gain (Xcos block)`_
+ `INVBLK - Invert (Xcos block)`_
+ `PRODUCT - Element-wise vectors Multiplication/Division (Xcos
  block)`_


.. _Palette: PROD_f.html#Palette_PROD_f
.. _INVBLK - Invert (Xcos block): INVBLK.html
.. _Computational function: PROD_f.html#Computationalfunction_PROD_f
.. _Element-wise product: PROD_f.html
.. _PRODUCT - Element-wise vectors Multiplication/Division (Xcos block): PRODUCT.html
.. _Math operations palette: Mathoperations_pal.html
.. _GAINBLK_f - Gain (Xcos block): GAINBLK_f.html
.. _Interfacing function: PROD_f.html#Interfacingfunction_PROD_f
.. _Default properties: PROD_f.html#Defaultproperties_PROD_f
.. _Description: PROD_f.html#Description_PROD_f
.. _See also: PROD_f.html#Seealso_PROD_f


