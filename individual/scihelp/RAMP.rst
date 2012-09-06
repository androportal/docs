


RAMP
====

Ramp



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Ramp`_
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

The Ramp block generates a signal that starts at a specified **Start
Time** and **Initial Value** and increases by a specified rate (
**Slope** parameter). The output signal is defined by the following
equation:





where * `t 0 `* is the **Start Time**, * `s 0 `* the **Initial Value**
and * `k`* the **Slope**.



Data types
~~~~~~~~~~


+ Output: scalar double.




Dialog box
~~~~~~~~~~






+ **Slope** Scalar. The rate of change of the generated signal.
  Properties : Type 'vec' of size 1.
+ **Start Time** Scalar. The time at which the signal begins to
  increase. Properties : Type 'vec' of size 1.
+ **Initial Value** Scalar. The initial value of the signal.
  Properties : Type 'vec' of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** yes
+ **direct-feedthrough:** no
+ **zero-crossing:** yes
+ **mode:** yes
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** ramp




Example
~~~~~~~

This diagram shows the use of RAMP block to obtain the response to a
ramp signal of a first order's system defined by a transfer function.
`Open this example in Xcos`_ .





Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/Sources/RAMP.sci`_




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/ramp.c (Type 4)




See also
~~~~~~~~


+ `STEP_FUNCTION`_
+ `CURV_f`_
+ `Sigbuilder`_


.. _Ramp: RAMP.html
.. _Computational function: RAMP.html#Computationalfunction_RAMP
.. _Sources palette: Sources_pal.html
.. _Interfacing function: RAMP.html#Interfacingfunction_RAMP
.. _Description: RAMP.html#Description_RAMP
.. _Sigbuilder: Sigbuilder.html
.. _STEP_FUNCTION: STEP_FUNCTION.html
.. _SCI/modules/scicos_blocks/macros/Sources/RAMP.sci: nullscilab.scinotes/scicos_blocks/macros/Sources/RAMP.sci
.. _Data types: RAMP.html#Datatype_RAMP
.. _Palette: RAMP.html#Palette_RAMP
.. _Default properties: RAMP.html#Defaultproperties_RAMP
.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/sources_pal/en_US/ramp_en_US.xcos
.. _CURV_f: CURV_f.html
.. _See also: RAMP.html#Seealso_RAMP
.. _Dialog box: RAMP.html#Dialogbox_RAMP
.. _Example: RAMP.html#Example_RAMP


