


PRODUCT
=======

Element-wise vector multiplication/division



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Element-wise vector multiplication/division`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_
    + `See also`_





Palette
~~~~~~~


+ `Math operations palette`_




Description
~~~~~~~~~~~

That bloc computes element-wise multiplication or division of its
vector inputs. The number of inputs and operation are specified with
the **Number of inputs or sign vector** parameter.


+ To multiply all the inputs between them, set this parameter to the
  number of inputs.
+ To multiply/divide the input *ui*, set in this parameter a vector k
  with *k[i]* = +1 (multiply) or -1 (divide) for the input *ui*.




Dialog box
~~~~~~~~~~






+ **Number of inputs or sign vector** Enter the number of inputs.
  Properties : Type 'vec' of size 1




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
+ **name of computational function:** product




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/NonLinear/PRODUCT.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/product.c (Type 4)




Voir aussi
~~~~~~~~~~


+ `GAINBLK_f- Gain (Xcos block)`_
+ `INVBLK - Invert (Xcos block)`_
+ `PROD_f - Element-wise product (Xcos block)`_


.. _Element-wise vector multiplication/division: PRODUCT.html
.. _INVBLK - Invert (Xcos block): INVBLK.html
.. _PROD_f - Element-wise product (Xcos block): PROD_f.html
.. _Description: PRODUCT.html#Description_PRODUCT
.. _See also: PRODUCT.html#Seealso_PRODUCT
.. _Dialog box: PRODUCT.html#Dialogbox_PRODUCT
.. _Default properties: PRODUCT.html#Defaultproperties_PRODUCT
.. _GAINBLK_f- Gain (Xcos block): GAINBLK_f.html
.. _Computational function: PRODUCT.html#Computationalfunction_PRODUCT
.. _Palette: PRODUCT.html#Palette_PRODUCT
.. _Math operations palette: Mathoperations_pal.html
.. _Interfacing function: PRODUCT.html#Interfacingfunction_PRODUCT


