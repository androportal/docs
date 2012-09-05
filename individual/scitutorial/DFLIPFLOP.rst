


DFLIPFLOP
=========

D flip-flop



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `D flip-flop`_
  +

    + `Palette`_
    + `Description`_
    + `Data types`_
    + `Default properties`_
    + `Interfacing function`_
    + `See also`_





Palette
~~~~~~~


+ `Integer palette`_




Description
~~~~~~~~~~~

That block outputs on **Q** its input state ( **D**) when the enable
input ( **en**) is set and on the rising edge of the clock input (
**clk**). The **!Q** output is the logical negation of **Q**. This
flip-flop is also known as a delay flip-flop because the state of the
input is modified only at the next rising edge of the clock.

The D flip-flop is used as a basic cell of shift-registers.

The truth table of this block is the following:


Non-Rising
where * `X`* stands for "indifferent" and * `Q n-1 `* is the previous
output state of * `Q n `* .



Data types
~~~~~~~~~~

The block supports the following types :


+ Inputs:

    + **D**: scalar. Scilab's int8 data type only.
    + **en**: scalar. Scilab's real double.
    + **clk**: scalar. Scilab's real double.
  A positive input is considered as logical 1, a negative or a null
  input as logical 0.
+ Outputs : scalar. Scilab's int8 data type.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 5** **- port 2 :
  size [1,1] / type 1** **- port 3 : size [1,1] / type 1**
+ **regular outputs:** **- port 1 : size [1,1] / type 5** **- port 2 :
  size [1,1] / type 5**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** csuper




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/IntegerOp/DFLIPFLOP.sci`_




See also
~~~~~~~~


+ `DLATCH`_ D latch flip-flop
+ `SRFLIPFLOP`_ SR flip-flop
+ `JKFLIPFLOP`_ JK flip-flop


.. _Palette: DFLIPFLOP.html#Palette_DFLIPFLOP
.. _See also: DFLIPFLOP.html#Seealso_DFLIPFLOP
.. _DLATCH: DLATCH.html
.. _Integer palette: Integer_pal.html
.. _Description: DFLIPFLOP.html#Description_DFLIPFLOP
.. _SRFLIPFLOP: SRFLIPFLOP.html
.. _JKFLIPFLOP: JKFLIPFLOP.html
.. _Data types: DFLIPFLOP.html#Data_Type_DFLIPFLOP
.. _Interfacing function: DFLIPFLOP.html#Interfacingfunction_DFLIPFLOP
.. _SCI/modules/scicos_blocks/macros/IntegerOp/DFLIPFLOP.sci: nullscilab.scinotes/scicos_blocks/macros/IntegerOp/DFLIPFLOP.sci
.. _Default properties: DFLIPFLOP.html#Defaultproperties_DFLIPFLOP
.. _D flip-flop: DFLIPFLOP.html


