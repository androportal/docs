


EXTRACTBITS
===========

Bits Extraction



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Bits extraction`_
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

For an integer input this block outputs a contiguous selection of
bits. The operation can be summarized by this expression:



i.e. a bitwise `AND` between `Input` and `Mask` an integer of the same
length as input with the bits to extract set to `1` and the other bits
set to `0`. **Bits to Extract** parameter defines the method by which
the user selects the output bits as summarized by the following table
with index `0`, as that of the least significant bit :


**Bits to Extract** **Output** **Number of Bits or Index of Bit**
**Upper Half** Half of the input that contain the most significant bit
Ignored **Lower Half** Half of the input that contain the least
significant bit Ignored **Range from MSB** **Number of Bits or Index
of Bit** bits of the input that contain the most significant bit (MSB)
Number of bits to extract. **Range to LSB** **Number of Bits or Index
of Bit** bits of the input that contain the least significant bit
(LSB) Number of bits to extract. **Range of bits** Range of bits of
the input between the indexes of the bits `Start` and `End` of
**Number of Bits or Index of Bit** parameter. Vector with the format
`[Start, End]` where `start` the first bit index and `end` the last
bit index.
The output value depends also on the forth parameter **Treat Bit Field
as an Integer** :


+ **0** : the output is directly the result of extraction.
+ **1** : the output is the integer conversion of the extraction
  result according to the signed or non-signed status of the input.




Data types
~~~~~~~~~~

The block supports the following types :


+ Input : scalar. All Scilab's integer type ( **Data Type**
  parameter).
+ Output : same type than input.




Dialog box
~~~~~~~~~~






+ **Data Type (3:int32, 4:int16, 5:int8, ...)** It indicates the
  integer type on input: Between 3 and 8. Properties : Type 'vec' of
  size 1.
+ **Bits to Extract** It indicates the mode used to extract bits from
  the input data : Between 1 and 5 (1:Upper Half, 2:Lower Half, 3:Range
  from MSB, 4:Range to LSB, 5:Range of bits) Properties : Type 'vec' of
  size 1.
+ **Number of Bits or Index of Bit** When the **Bits to Extract**
  field is set to :

    + 1 or 2, this parameter is ignored.
    + 3 or 4, this parameter is used to determine the number of bits to
      extract. This number must be if the type is :

        + int32 or uint32: positive and less than 32.
        + int16 or uint16: positive and less than 16.
        + int8 or uint8: positive and less than 8.

    + 5, this parameter is used to determine range of bits to extract and
      it must have the `[Start, End]` form vector. `Start` must be less than
      `End`. These values must be, if the type is:

        + int32 or uint32: positive and less than 32.
        + int16 or uint16: positive and less than 16.
        + int8 or uint8: positive and less than 8.

  See description for more information Properties : Type 'vec' of size
  -1.
+ **Treat Bit Field as an Integer (0:No, 1:Yes)** 0 or 1. It indicates
  the scaling mode to use on the output bits selection. See description
  for more explanation. Properties : Type 'vec' of size 1.




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
+ **name of computational function:** extract_bit_32_UH0




Example
~~~~~~~

In the following table, we present the results obtained for the number
215 according to several combinations of the parameters.


**Input** **Bits to Extract** **Number of Bits or Index of Bit**
**Treat Bit Field as an Integer** **Output** 11010111 (215) Upper Half
Ignored no 01100000 (208) 11010111 (215) Upper Half Ignored yes
00001101 (13) 11010111 (215) Lower Half Ignored no 00000111 (7)
11010111 (215) Lower Half Ignored yes 00000111 (7) 11010111 (215)
Range starting with MSB 6 no 11010100 (212) 11010111 (215) Range
starting with MSB 6 yes 00110101 (53) 11010111 (215) Range starting
with LSB 6 no 00010111 (23) 11010111 (215) Range starting with LSB 6
yes 00010111 (23) 11010111 (215) Range of bits [ 2, 5 ] no 00010100
(20) 11010111 (215) Range of bits [ 2, 5 ] yes 00000101 (5) 11010111
(-41) Upper half Ignored no 11010000 (-48) 11010111 (-48) Upper half
Ingnored yes 11111101 (-3)
In the following diagram, two decimal digit numbers are coded on an
only byte. The diagram decode the input to obtain two separate digits.
`Open this example in Xcos`_





Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/IntegerOp/EXTRACTBITS.sci`_




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/extract_bit_32_UH0.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_32_UH1.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_u32_UH1.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_32_LH.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_32_MSB0.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_32_MSB1.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_u32_MSB1.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_32_LSB.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_32_RB0.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_32_RB1.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_u32_RB1.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_16_UH0.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_16_UH1.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_u16_UH1.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_16_LH.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_16_MSB0.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_16_MSB1.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_u16_MSB1.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_16_LSB.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_16_RB0.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_16_RB1.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_u16_RB1.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_8_UH0.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_8_UH1.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_u8_UH1.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_8_LH.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_8_MSB0.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_8_MSB1.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_u8_MSB1.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_8_LSB.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_8_RB0.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_8_RB1.c
+ SCI/modules/scicos_blocks/src/c/extract_bit_u8_RB1.c




See also
~~~~~~~~


+ `BITSET`_ Set a Bit
+ `BITCLEAR`_ Clear a Bit
+ `LOGICAL_OP`_ Logical operation


.. _Default properties: EXTRACTBITS.html#Defaultproperties_EXTRACTBITS
.. _Integer palette: Integer_pal.html
.. _Palette: EXTRACTBITS.html#Palette_EXTRACTBITS
.. _Example: EXTRACTBITS.html#Example_EXTRACTBITS
.. _Dialog box: EXTRACTBITS.html#Dialogbox_EXTRACTBITS
.. _Interfacing function: EXTRACTBITS.html#Interfacingfunction_EXTRACTBITS
.. _Bits extraction: EXTRACTBITS.html
.. _BITCLEAR: BITCLEAR.html
.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/integer_pal/en_US/EXTRACTBITS_en_US.xcos
.. _Computational function: EXTRACTBITS.html#Computationalfunction_EXTRACTBITS
.. _Description: EXTRACTBITS.html#Description_EXTRACTBITS
.. _LOGICAL_OP: LOGICAL_OP.html
.. _BITSET: BITSET-b934c0d76f55255a47ccca35a05e32e3.html
.. _SCI/modules/scicos_blocks/macros/IntegerOp/EXTRACTBITS.sci: nullscilab.scinotes/scicos_blocks/macros/IntegerOp/EXTRACTBITS.sci
.. _Data types: BITCLEAR.html#Data_Type_BITCLEAR
.. _See also: EXTRACTBITS.html#Seealso_EXTRACTBITS


