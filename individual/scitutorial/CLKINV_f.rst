


CLKINV_f
========

Input activation port



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Input activation port`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Example`_
    + `Interfacing function`_
    + `See also`_





Palettes
~~~~~~~~


+ `Port & Subsystem palette`_
+ `Sources palette`_
+ `Event handling palette`_




Description
~~~~~~~~~~~

This block represent an activation input port. It must only be used
inside a Xcos Super Block and be connected on an activation input in
the subsystem.

This block is a event link from outside of a system into a sub-system.
In a Super Block, the activation's input ports must be numbered from 1
to the total number of activation's input ports. You can set it with
the **Port number** parameter.



Dialog box
~~~~~~~~~~






+ **Port number** An integer defining the port number. Properties :
  Type 'vec' of size 1.




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
+ **name of computational function:** input




Example
~~~~~~~

In this example, we create a square wave generator with two inverted
outputs by using a SUPER_f block with the contents shown in the
following figure, where you can see the use of the CLKINV_f block as
event input of the internal square wave generator. `Open this example
in Xcos`_ .





The following figure shows the output of the bloc :





Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/Sources/CLKINV_f.sci`_




See also
~~~~~~~~


+ `CLKOUTV_f`_ Output activation port
+ `SUPER_f`_ Super block


.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/portaction_pal/en_US/CLKINV_f_en_US.xcos
.. _ Subsystem palette: Portaction_pal.html
.. _SUPER_f: SUPER_f.html
.. _Event handling palette: Events_pal.html
.. _Palette: CLKINV_f.html#Palette_CLKINV_f
.. _SCI/modules/scicos_blocks/macros/Sources/CLKINV_f.sci: nullscilab.scinotes/scicos_blocks/macros/Sources/CLKINV_f.sci
.. _Dialog box: CLKINV_f.html#Dialogbox_CLKINV_f
.. _Example: CLKINV_f.html#Example_CLKINV_f
.. _CLKOUTV_f: CLKOUTV_f.html
.. _Description: CLKINV_f.html#Description_CLKINV_f
.. _Sources palette: Sources_pal.html
.. _See also: CLKINV_f.html#Seealso_CLKINV_f
.. _Interfacing function: CLKINV_f.html#Interfacingfunction_CLKINV_f
.. _Input activation port: CLKINV_f.html
.. _Default properties: CLKINV_f.html#Defaultproperties_CLKINV_f


