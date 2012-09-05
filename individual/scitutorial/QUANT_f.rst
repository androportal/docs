


QUANT_f
=======

Quantization



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Quantization`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Signal processing palette`_




Description
~~~~~~~~~~~

This block outputs the quantization of the input according to a choice
of methods:



Dialog box
~~~~~~~~~~






+ **Step** scalar, Quantization step Properties : Type 'vec' of size
  1.
+ **Quantization Type** scalar with possible values 1,2,3 or 4
  Properties : Type 'vec' of size 1.




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
+ **name of computational function:** qzrnd




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/NonLinear/QUANT_f.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/fortran/qzrnd.f
+ SCI/modules/scicos_blocks/src/fortran/qztrn.f
+ SCI/modules/scicos_blocks/src/fortran/qzflr.f
+ SCI/modules/scicos_blocks/src/fortran/qzcel.f


.. _Description: QUANT_f.html#Description_QUANT_f
.. _Computational function: QUANT_f.html#Computationalfunction_QUANT_f
.. _Default properties: QUANT_f.html#Defaultproperties_QUANT_f
.. _Dialog box: QUANT_f.html#Dialogbox_QUANT_f
.. _Quantization: QUANT_f.html
.. _Palette: QUANT_f.html#Palette_QUANT_f
.. _Interfacing function: QUANT_f.html#Interfacingfunction_QUANT_f
.. _Signal processing palette: Signalprocessing_pal.html


