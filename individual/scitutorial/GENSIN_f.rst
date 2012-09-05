


GENSIN_f
========

Sine wave generator



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Sine wave generator`_
  +

    + `Palette`_
    + `Description`_
    + `Data types`_
    + `Dialog box`_
    + `Default properties`_
    + `Example`_
    + `Interfacing function`_
    + `Computational function`_
    + `See also`_





Palette
~~~~~~~


+ `Sources palette`_




Description
~~~~~~~~~~~

This block is a sine wave generator and its output is defined by the
equation:



You can adjust:


+ The magnitude * `M`* with the **Magnitude** parameter.
+ The frequency * `F`* in radians/second with the **Frequency**
  parameter.
+ The initial phase * `P`* in radians with the **Phase** parameter.




Data types
~~~~~~~~~~


+ Output: Scalar double.




Dialog box
~~~~~~~~~~






+ **Magnitude** A scalar. The magnitude M. Properties : Type 'vec' of
  size 1.
+ **Frequency** A scalar. The frequency in radians/secondes.
  Properties : Type 'vec' of size 1.
+ **Phase** A scalar. The phase P in radians. Properties : Type 'vec'
  of size 1.




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
+ **name of computational function:** gensin




Example
~~~~~~~

This diagram shows the output of the block GENSIN_f for an amplitude
value of 1.2 and an initial phase offset of 90°. `Open this example in
Xcos`_





Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/Sources/GENSIN_f.sci`_




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/fortran/gensin.f (Type 0)




See also
~~~~~~~~


+ `GENSQR_f`_
+ `SAWTOOTH_f`_
+ `Sigbuilder`_


.. _SCI/modules/scicos_blocks/macros/Sources/GENSIN_f.sci: nullscilab.scinotes/scicos_blocks/macros/Sources/GENSIN_f.sci
.. _GENSQR_f: GENSQR_f.html
.. _Description: GENSIN_f.html#Description_GENSIN_f
.. _Sine wave generator: GENSIN_f.html
.. _Palette: GENSIN_f.html#Palette_GENSIN_f
.. _Sources palette: Sources_pal.html
.. _See also: GENSIN_f.html#Seealso_GENSIN_f
.. _Sigbuilder: Sigbuilder.html
.. _Default properties: GENSIN_f.html#Defaultproperties_GENSIN_f
.. _Computational function: GENSIN_f.html#Computationalfunction_GENSIN_f
.. _Data types: GENSIN_f.html#Datatype_GENSIN_f
.. _Dialog box: GENSIN_f.html#Dialogbox_GENSIN_f
.. _SAWTOOTH_f: SAWTOOTH_f.html
.. _Example: GENSIN_f.html#Example_GENSIN_f
.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/sources_pal/en_US/gensin_f_en_US.xcos
.. _Interfacing function: GENSIN_f.html#Interfacingfunction_GENSIN_f


