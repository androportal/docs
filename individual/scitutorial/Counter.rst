


Counter
=======

Counter



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Counter`_
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

This block counts with an increment/decrement value equal to one from
**Minimum** to **Maximum** or from **Maximum** to **Minimum**
depending on the choice of the **Rule** parameter.



Data types
~~~~~~~~~~


+ Output: scalar double.




Dialog box
~~~~~~~~~~






+ **Minimum** The lowest number of the counter. Properties : Type
  'vec' of size 1.
+ **Maximum** The highest number of the counter. Properties : Type
  'vec' of size 1.
+ **Rule (1:Increment, 2:Decrement)** The rule of counting :

    + **1**: Counts from the lowest number to the highest number. The
      count is increasing.
    + **2**: Counts from the highest number to the lowest number. The
      count is decreasing.
  Properties : Type 'vec' of size 1.




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
+ **name of computational function:** counter




Example
~~~~~~~

This diagram shows the Counter block output versus time. `Open this
example in Xcos`_





Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/Sources/Counter.sci`_




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/counter.c (Type 4)




See also
~~~~~~~~


+ `Modulo_Count`_


.. _Description: Counter.html#Description_Counter
.. _Sources palette: Sources_pal.html
.. _Interfacing function: Counter.html#Interfacingfunction_Counter
.. _Computational function: Counter.html#Computationalfunction_Counter
.. _Palette: Counter.html#Palette_Counter
.. _SCI/modules/scicos_blocks/macros/Sources/Counter.sci: nullscilab.scinotes/scicos_blocks/macros/Sources/Counter.sci
.. _Default properties: Counter.html#Defaultproperties_Counter
.. _Counter: Counter.html
.. _Example: Counter.html#Example_Counter
.. _Data types: Counter.html#Datatypes_Counter
.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/sources_pal/en_US/counter_en_US.xcos
.. _Modulo_Count: Modulo_Count.html
.. _Dialog box: Counter.html#Dialogbox_Counter
.. _See also: Counter.html#Seealso_Counter


