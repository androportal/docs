


GAINBLK_f
=========

Gain



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Gain`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `See also`_





Palette
~~~~~~~


+ `Math operations palette`_




Description
~~~~~~~~~~~

That bloc computes the product of a square matrix A by the input
vector U, where the number of rows/cols of A is equal to the number of
rows of U. The A matrix is set with the **Gain** parameter.



Dialog box
~~~~~~~~~~






+ **Gain** This parameter defined the square matrix A. Properties :
  Type 'mat' of size [-1,-1].




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
+ **name of computational function:** gain




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Linear/GAINBLK_f.sci




Voir aussi
~~~~~~~~~~


+ `PROD_f - Element-wise product (Xcos block)`_
+ `INVBLK - Inversion (Xcos block)`_
+ `PRODUCT - Multiplication/Division de vecteurs élément par élément
  (Xcos block)`_


.. _PRODUCT - Multiplication/Division de vecteurs élément par élément (Xcos block): PRODUCT.html
.. _INVBLK - Inversion (Xcos block): INVBLK.html
.. _PROD_f - Element-wise product (Xcos block): PROD_f.html
.. _Default properties: GAINBLK_f.html#Defaultproperties_GAINBLK_f
.. _Description: GAINBLK_f.html#Description_GAINBLK_f
.. _Palette: GAINBLK_f.html#Palette_GAINBLK_f
.. _See also: GAINBLK_f.html#Seealso_GAINBLK_f
.. _Gain: GAINBLK_f.html
.. _Dialog box: GAINBLK_f.html#Dialogbox_GAINBLK_f
.. _Math operations palette: Mathoperations_pal.html
.. _Interfacing function: GAINBLK_f.html#Interfacingfunction_GAINBLK_f


