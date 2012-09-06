


CLOCK_c
=======

Activation clock



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Activation clock`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Example`_
    + `Interfacing function`_
    + `See also`_





Palette
~~~~~~~


+ `Sources palette`_




Description
~~~~~~~~~~~

The unique output of this block generates a regular train of events
that are scheduled by parameter **Period** in seconds. The starting
date of events generation can be set in seconds with the
**Initialisation Time** parameter.



Dialog box
~~~~~~~~~~






+ **Period** Scalar. Period is the time that separates two output
  events, it is the inverse of the frequency of the clock. Properties :
  Type 'vec' of size 1.
+ **Initialisation Time** Scalar. Starting date. If negative the clock
  never starts. Properties : Type 'vec' of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 1
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** csuper




Example
~~~~~~~

A simple example of CLOCK_c block event output. `Open this example in
Xcos`_ .





Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/Sources/CLOCK_c.sci`_




See also
~~~~~~~~


+ `SampleCLK`_ Sample Time Clock


.. _SCI/modules/scicos_blocks/macros/Sources/CLOCK_c.sci: nullscilab.scinotes/scicos_blocks/macros/Sources/CLOCK_c.sci
.. _SampleCLK: SampleCLK.html
.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/sources_pal/en_US/clock_c_en_US.xcos
.. _Description: CLOCK_c.html#Description_CLOCK_c
.. _Example: CLOCK_c.html#Example_CLOCK_c
.. _Palette: CLOCK_c.html#Palette_CLOCK_c
.. _Sources palette: Sources_pal.html
.. _Default properties: CLOCK_c.html#Defaultproperties_CLOCK_c
.. _Dialog box: CLOCK_c.html#Dialogbox_CLOCK_c
.. _Interfacing function: CLOCK_c.html#Interfacingfunction_CLOCK_c
.. _Activation clock: CLOCK_c.html
.. _See also: CLOCK_c.html#Seealso_CLOCK_c


