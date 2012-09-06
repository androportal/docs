


CLR
===

Continuous transfer function



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Continuous transfer function`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Continuous time systems palette`_




Description
~~~~~~~~~~~

This block realizes a SISO linear system represented by its rational
transfer function **Numerator/Denominator**. The rational function
must be proper (denominator degree must be less or equal to numerator
degree).



Dialog box
~~~~~~~~~~






+ **Numerator** This parameter sets the numerator of the transfer
  function. This must be a polynomial in s. Properties : Type 'pol' of
  size 1.
+ **Denominator** This parameter sets the denominator of the transfer
  function. This must be a polynomial in s. Properties : Type 'pol' of
  size 1.




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
+ **name of computational function:** csslti4




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Linear/CLR.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/csslti4.c (Type 4)


.. _Dialog box: CLR.html#Dialogbox_CLR
.. _Continuous time systems palette: Continuous_pal.html
.. _Description: CLR.html#Description_CLR
.. _Continuous transfer function: CLR.html
.. _Palette: CLR.html#Palette_CLR
.. _Default properties: CLR.html#Defaultproperties_CLR
.. _Computational function: CLR.html#Computationalfunction_CLR
.. _Interfacing function: CLR.html#Interfacingfunction_CLR


