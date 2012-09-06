


DLATCH
======

D latch flip-flop



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `D latch flip-flop`_
  +

    + `Palette`_
    + `Description`_
    + `Data types`_
    + `Default properties`_
    + `Interfacing function`_
    + `Example`_
    + `See also`_





Palette
~~~~~~~


+ `Integer palette`_




Description
~~~~~~~~~~~

This block copies its input state ( **D**) on the output ( **Q**) when
the enable input ( **C**) is high and in this configuration it appears
as transparent. The **!Q** output is the logical negation of **Q**

When the enable input goes low, the output keeps its previous state
and acts like a memory.

This block can be typically used in I/O ports.

The truth table of the block is the following ones:


No changes Reset Set
où * `X`* signifie "indifférent" et * `Q n-1 `* l'état antérieur de *
`Q n `* .



Data types
~~~~~~~~~~

The block supports the following types :


+ Inputs:

    + **D**: scalar. Scilab's int8 data type only.
    + **C**: scalar. Scilab's real double.
  A positive input is considered as logical 1, a negative or a null
  input as logical 0.
+ Ouputs: scalar. Scilab's int8 data type.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 5** **- port 2 :
  size [1,1] / type -1**
+ **regular outputs:** **- port 1 : size [1,1] / type 5** **- port 2 :
  size [1,1] / type 5**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** csuper




Example
~~~~~~~

The following figure shows a simple use case of the DLATCH block with
its timing diagram. `Open this example in Xcos`_



Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/IntegerOp/DLATCH.sci`_




See also
~~~~~~~~


+ `DFLIPFLOP`_ D flip-flop
+ `SRFLIPFLOP`_ SR flip-flop
+ `JKFLIPFLOP`_ JK flip-flop


.. _Example: DLATCH.html#Example_DLATCH
.. _D latch flip-flop: DLATCH.html
.. _Data types: DLATCH.html#Data_Type_DLATCH
.. _Default properties: DLATCH.html#Defaultproperties_DLATCH
.. _SRFLIPFLOP: SRFLIPFLOP.html
.. _DFLIPFLOP: DFLIPFLOP.html
.. _Integer palette: Integer_pal.html
.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/integer_pal/en_US/DLATCH_en_US.xcos
.. _JKFLIPFLOP: JKFLIPFLOP.html
.. _Interfacing function: DLATCH.html#Interfacingfunction_DLATCH
.. _Description: DLATCH.html#Description_DLATCH
.. _SCI/modules/scicos_blocks/macros/IntegerOp/DLATCH.sci: nullscilab.scinotes/scicos_blocks/macros/IntegerOp/DLATCH.sci
.. _See also: DLATCH.html#Seealso_DLATCH
.. _Palette: DLATCH.html#Palette_DLATCH


