


JKFLIPFLOP
==========

JK flip-flop



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `JK flip-flop`_
  +

    + `Palette`_
    + `Description`_
    + `Data types`_
    + `Dialog box`_
    + `Default properties`_
    + `Example`_
    + `Interfacing function`_
    + `See also`_





Palette
~~~~~~~


+ `Integer palette`_




Description
~~~~~~~~~~~

The JK flip flop is the most versatile of the basic flip-flops. It has
two inputs traditionally labeled **J** (Set) and **K** (Reset).


+ When the inputs **J** and **K** are different, the output **Q**
  takes the value of **J** at the next falling edge.
+ When the inputs **J** and **K** are both low, no change occurs in
  the output state.
+ When the inputs are both high the output **Q** will toggle from one
  state to other. It can perform the functions of the set/reset (SR)
  flip-flop and has the advantage that there are no ambiguous states.


The **!Q** output is the logical negation of **Q**

It can also act as a T flip-flop to accomplish toggling action if
**J** and **K** are tied together. This toggle application finds
extensive use in binary counters.

The user can set the initial output state with **Initial Value**
parameter.

The truth table of this block is:


Hold Reset Set Toggle
where * `Q n-1 `* is the previous state of * `Q n `* .



Data types
~~~~~~~~~~

The block supports the following types :


+ Inputs:

    + **J**: scalar. Scilab's int8 data type only.
    + **clk**: scalar. Scilab's real double.
    + **K**: scalar. Scilab's int8 data type only.
  A positive input is considered as logical 1, a negative or a null
  input as logical 0.
+ Outputs: scalar. Scilab's int8 data type.




Dialog box
~~~~~~~~~~






+ **Initial Value** Initial state of the **Q** output. Properties :
  Type 'vec' of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 5** **- port 2 :
  size [1,1] / type 1** **- port 3 : size [1,1] / type 5**
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

The following example builds a 3 bits asynchronous counter with JK
flipflops wired as T flipflops. You can show on the right the timing
diagram of the * `Q 0 `* to * `Q 2 `* outputs of counter. `Open this
example in Xcos`_





Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/IntegerOp/JKFLIPFLOP.sci`_




See also
~~~~~~~~


+ `DLATCH`_ D latch flip-flop
+ `DFLIPFLOP`_ D flip-flop
+ `SRFLIPFLOP`_ SR flip-flop


.. _JK flip-flop: JKFLIPFLOP.html
.. _DLATCH: DLATCH.html
.. _Example: JKFLIPFLOP.html#Example_JKFLIPFLOP
.. _SRFLIPFLOP: SRFLIPFLOP.html
.. _Default properties: JKFLIPFLOP.html#Defaultproperties_JKFLIPFLOP
.. _Dialog box: JKFLIPFLOP.html#Dialogbox_JKFLIPFLOP
.. _Palette: JKFLIPFLOP.html#Palette_JKFLIPFLOP
.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/integer_pal/en_US/JKFLIPFLOP_en_US.xcos
.. _DFLIPFLOP: DFLIPFLOP.html
.. _Data types: JKFLIPFLOP.html#Data_Type_JKFLIPFLOP
.. _Description: JKFLIPFLOP.html#Description_JKFLIPFLOP
.. _See also: JKFLIPFLOP.html#Seealso_JKFLIPFLOP
.. _Interfacing function: JKFLIPFLOP.html#Interfacingfunction_JKFLIPFLOP
.. _Integer palette: Integer_pal.html
.. _SCI/modules/scicos_blocks/macros/IntegerOp/JKFLIPFLOP.sci: nullscilab.scinotes/scicos_blocks/macros/IntegerOp/JKFLIPFLOP.sci


