


CLKSOMV_f
=========

Activation union



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Activation union`_
  +

    + `Palette`_
    + `Description`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Event handling palette`_




Description
~~~~~~~~~~~

This block is an event addition block with up to three inputs. The
output reproduces the events on all the input ports. Strictly
speaking, CLKSOMV is not a Xcos block because it is discarded at the
compilation phase. The inputs and output of CLKSOMV are synchronized.



Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **number/sizes of activation inputs:** 3
+ **number/sizes of activation outputs:** 1
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** sum




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Events/CLKSOMV_f.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/sum.c (Type 0)


.. _Palette: CLKSOMV_f.html#Palette_CLKSOMV_f
.. _Event handling palette: Events_pal.html
.. _Interfacing function: CLKSOMV_f.html#Interfacingfunction_CLKSOMV_f
.. _Activation union: CLKSOMV_f.html
.. _Description: CLKSOMV_f.html#Description_CLKSOMV_f
.. _Default properties: CLKSOMV_f.html#Defaultproperties_CLKSOMV_f
.. _Computational function: CLKSOMV_f.html#Computationalfunction_CLKSOMV_f


