


STEP_FUNCTION
=============

Step Function



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Step Function`_
  +

    + `Palette`_
    + `Description`_
    + `Data types`_
    + `Dialog box`_
    + `Default properties`_
    + `Example 1`_
    + `Example 2`_
    + `Interfacing function`_
    + `See also`_





Palette
~~~~~~~


+ `Sources palette`_




Description
~~~~~~~~~~~

In its simpler use this block output a step signal between two
definable levels **Initial Value** and **Final Value** starting at a
specified time **Step Time**.

The step function is defined by the following equation:



where * `t 0 `* is the **Start Time**, * `s 0 `* the **Initial Value**
and * `s f `* the **Final Value**.

You can also specify vector or matrice values, for the parameters
**Initial Value** and **Final Value**. The parameters are expanded to
column vectors. and in this case, you obtain multiples output that
start at the same **Step Time**.

The table below shows different combinations


**Initial value size** **Final value size** **Output size**
**Condition**


Data types
~~~~~~~~~~


+ Output: scalar or column vector of double data type. The size is
  determined by the parameters **Initial Value** and **Final Value**




Dialog box
~~~~~~~~~~






+ **Step Time** The time, in seconds, when the output jumps from the
  **Initial Value** parameter to the **Final value** parameter.
  Properties : Type 'vec' of size 1.
+ **Initial Value** The block output `i` is equal to the `i th `
  **Initial Value** until the simulation time reaches the **Step Time**
  parameter. Properties : Type 'vec' of size -1.
+ **Final Value** The block output `i` jump to `i th ` **Final Value**
  when the simulation time reaches the **Step Time** parameter.
  Properties : Type 'vec' of size -1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **regular outputs:** **- port 1 : size [-1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** csuper




Example 1
~~~~~~~~~

This diagram shows the use of the STEP_FUNCTION block to obtain the
response to a step signal of a first order's system defined by a
transfer function. `Open this example in Xcos`_ .





Example 2
~~~~~~~~~

This diagram shows the use of STEP_FUNCTION to obtain four step
signals `Open this example in Xcos`_ .





Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/Sources/STEP.sci`_




See also
~~~~~~~~


+ `RAMP`_ Ramp
+ `CURV_f`_ Curve
+ `Sigbuilder`_ Signal creator/generator


.. _Step Function: STEP_FUNCTION.html
.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/sources_pal/en_US/step_function_2_en_US.xcos
.. _CURV_f: CURV_f.html
.. _Sources palette: Sources_pal.html
.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/sources_pal/en_US/step_function_1_en_US.xcos
.. _Sigbuilder: Sigbuilder.html
.. _See also: STEP_FUNCTION.html#Seealso_STEP_FUNCTION
.. _SCI/modules/scicos_blocks/macros/Sources/STEP.sci: nullscilab.scinotes/scicos_blocks/macros/Sources/STEP.sci
.. _Data types: STEP_FUNCTION.html#Datatype_STEP_FUNCTION
.. _Dialog box: STEP_FUNCTION.html#Dialogbox_STEP_FUNCTION
.. _Interfacing function: STEP_FUNCTION.html#Interfacingfunction_STEP_FUNCTION
.. _Default properties: STEP_FUNCTION.html#Defaultproperties_STEP_FUNCTION
.. _Example 1: STEP_FUNCTION.html#Example_1_STEP_FUNCTION
.. _Palette: STEP_FUNCTION.html#Palette_STEP_FUNCTION
.. _RAMP: RAMP.html
.. _Example 2: STEP_FUNCTION.html#Example_2_STEP_FUNCTION
.. _Description: STEP_FUNCTION.html#Description_STEP_FUNCTION


