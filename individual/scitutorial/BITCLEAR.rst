


BITCLEAR
========

Clear a Bit



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Clear a Bit`_
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


+ `Integer palette`_




Description
~~~~~~~~~~~

This block sets to `0` the specified bit of its input. The user gives
the bit index in the field **Index of Bit** with index `0`, as that of
the least significant bit.The operation can be summarized by this
expression:



i.e. a bitwise `AND` between `Input` and `Mask`, an integer of the
same length as the input with a value `0` for the bit to clear and a
value `1` for the other bits.



Data types
~~~~~~~~~~

The block supports the following types :


+ Input : scalar. All Scilab's integer type ( **Data type**
  parameter).
+ Output : same type and dimensions than input.




Dialog box
~~~~~~~~~~






+ **Data Type (3=int32 4=int16 5=int8 ...)** It indicates the integer
  type of the input (output) data : between 3 and 8. Properties : Type
  'vec' of size 1.
+ **Index of Bit (0 is least significant)** It indicate the index of
  the bit to clear. The index must be, when the type is:

    + int32 or uint32: positive and less than 32.
    + int16 or uint16: positive and less than 16.
    + int8 or uint8: positive and less than 8.
  Properties : Type 'vec' of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 3**
+ **regular outputs:** **- port 1 : size [1,1] / type 3**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** bit_clear_32




Example
~~~~~~~

Below a simple use case of the block. `Open this example in Xcos`_





Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/IntegerOp/BITCLEAR.sci`_




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/bit_clear_32.c
+ SCI/modules/scicos_blocks/src/c/bit_clear_16.c
+ SCI/modules/scicos_blocks/src/c/bit_clear_8.c




See also
~~~~~~~~


+ `BITSET`_ Set a Bit
+ `EXTRACTBITS`_ Bits Extraction
+ `LOGICAL_OP`_ Logical operation


.. _Computational function: BITCLEAR.html#Computationalfunction_BITCLEAR
.. _Default properties: BITCLEAR.html#Defaultproperties_BITCLEAR
.. _Integer palette: Integer_pal.html
.. _Data types: BITCLEAR.html#Data_Type_BITCLEAR
.. _Dialog box: BITCLEAR.html#Dialogbox_BITCLEAR
.. _Example: BITCLEAR.html#Example_BITCLEAR
.. _EXTRACTBITS: EXTRACTBITS.html
.. _Clear a Bit: BITCLEAR.html
.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/integer_pal/en_US/BITCLEAR_en_US.xcos
.. _Interfacing function: BITCLEAR.html#Interfacingfunction_BITCLEAR
.. _Palette: BITCLEAR.html#Palette_BITCLEAR
.. _LOGICAL_OP: LOGICAL_OP.html
.. _SCI/modules/scicos_blocks/macros/IntegerOp/BITCLEAR.sci: nullscilab.scinotes/scicos_blocks/IntegerOp/BITCLEAR.sci
.. _BITSET: BITSET-b934c0d76f55255a47ccca35a05e32e3.html
.. _See also: BITCLEAR.html#Seealso_BITCLEAR
.. _Description: BITCLEAR.html#Description_BITCLEAR


