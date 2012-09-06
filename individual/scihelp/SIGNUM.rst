


SIGNUM
======

Sign



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Sign`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Math operations palette`_




Description
~~~~~~~~~~~

The block output is a vector of the signs of the elements of the input
vector. For each input vector's element, the output vector's element
is:


+ 1 when the element is greater than zero.
+ 0 when the element is equal to zero.
+ -1 when the element is less than zero.




Dialog box
~~~~~~~~~~






+ **use zero_crossing** Select to enable zero crossing detection.
  Properties : Type 'vec' of size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** yes
+ **mode:** yes
+ **regular inputs:** **- port 1 : size [-1,1] / type 1**
+ **regular outputs:** **- port 1 : size [-1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** signum




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/NonLinear/SIGNUM.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/signum.c (Type 4)


.. _Sign: SIGNUM.html
.. _Description: SIGNUM.html#Description_SIGNUM
.. _Interfacing function: SIGNUM.html#Interfacingfunction_SIGNUM
.. _Palette: SIGNUM.html#Palette_SIGNUM
.. _Computational function: SIGNUM.html#Computationalfunction_SIGNUM
.. _Math operations palette: Mathoperations_pal.html
.. _Dialog box: SIGNUM.html#Dialogbox_SIGNUM
.. _Default properties: SIGNUM.html#Defaultproperties_SIGNUM


