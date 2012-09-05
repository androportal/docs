


DIFF_f
======

Derivative



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Derivative`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Implicit palette`_




Description
~~~~~~~~~~~

This block computes the derivative of the input.





Dialog box
~~~~~~~~~~






+ **Initial state** The initial continuous state. Properties : Type
  'vec' of size 1.
+ **Initial Derivative** The initial derivative state. Properties :
  Type 'vec' of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** yes
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 1**
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** yes
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** diffblk




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Misc/DIFF_f.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/fortran/diffblk.f (Type 10001)


.. _Interfacing
                function: DIFF_f.html#Interfacingfunction_DIFF_f
.. _Default
                properties: DIFF_f.html#Defaultproperties_DIFF_f
.. _Dialog box: DIFF_f.html#Dialogbox_DIFF_f
.. _Derivative: DIFF_f.html
.. _Palette: DIFF_f.html#Palette_DIFF_f
.. _Description: DIFF_f.html#Description_DIFF_f
.. _Implicit palette: Implicit_pal.html
.. _Computational
                function: DIFF_f.html#Computationalfunction_DIFF_f


