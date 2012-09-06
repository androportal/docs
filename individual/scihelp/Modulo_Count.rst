


Modulo_Count
============

Modulo counter (0 to N counter)



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Modulo counter (0 to N counter)`_
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

It is a discrete block. The block outputs a periodic scalar piecewise
constant signal. Signal begin at **Initial State** value. The output
is incremented when block received an event on its activation input
until output reaches the **Upper Limit** parameter value. At this time
the output is reset to 0. For a periodic event input, the output is a
quantized sawtooth signal.



Data type
~~~~~~~~~


+ Output: scalar double.




Dialog box
~~~~~~~~~~






+ **Initial State** Scalar. Initial discrete state. Properties : Type
  'vec' of size 1
+ **Upper Limit (positive number)** Scalar. Number of required step.
  Properties : Type 'vec' of size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 1
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** yes
+ **object discrete-time state:** no
+ **name of computational function:** modulo_count




Exemple
~~~~~~~

This diagram shows the Modulo_count usage as a quantized sawtooth
generator application. `Open this example in Xcos`_



Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/Sources/Modulo_Count.sci`_




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/modulo_count.c (Type 4)




See also
~~~~~~~~


+ `GENSQR_f`_
+ `SAWTOOTH_f`_
+ `Sigbuilder`_


.. _GENSQR_f: GENSQR_f.html
.. _See also: Modulo_Count.html#Seealso_Modulo_Count
.. _SAWTOOTH_f: SAWTOOTH_f.html
.. _Sigbuilder: Sigbuilder.html
.. _SCI/modules/scicos_blocks/macros/Sources/Modulo_Count.sci: nullscilab.scinotes/scicos_blocks/macros/Sources/Modulo_Count.sci
.. _Sources palette: Sources_pal.html
.. _Dialog box: Modulo_Count.html#Dialogbox_Modulo_Count
.. _Data types: Modulo_Count.html#Datatype_Modulo_Count
.. _Computational function: Modulo_Count.html#Computationalfunction_Modulo_Count
.. _Palette: Modulo_Count.html#Palette_Modulo_Count
.. _Example: Modulo_Count.html#Example_Modulo_Count
.. _Modulo counter (0 to N counter): Modulo_Count.html
.. _Description: Modulo_Count.html#Description_Modulo_Count
.. _Interfacing function: Modulo_Count.html#Interfacingfunction_Modulo_Count
.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/sources_pal/en_US/modulo_count_en_US.xcos
.. _Default properties: Modulo_Count.html#Defaultproperties_Modulo_Count


