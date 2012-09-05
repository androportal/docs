


INIMPL_f
========

Implicit Input port



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Implicit Input port`_
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


+ `Port & Subsystem`_
+ `Sources`_




Description
~~~~~~~~~~~

This block represent an implicit input port. It must only be used
inside a Xcos Super Block and be connected to an implicit input in the
subsystem.

This block is a signal link from outside of a system into a sub-
system. In a Super Block, the implicit's input ports must be numbered
from 1 to the total number of implicit's input ports. You can set it
with the **Port number** parameter.



Dialog box
~~~~~~~~~~






+ **Port number** Specify the port number of the input port.
  Properties : Type 'vec' of size 1.




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
+ **name of computational function:** inimpl




Exemple
~~~~~~~

The following example shows the use of the INIMPL_f block. The Super
block contains a simple electrical circuit with two inputs, one on the
resistor and the other for the ground. These inputs are connected to
the external environment of the bloc via two INIMPL_f blocks numbered
1 and 2. The Super block output is connected via a `OUTIMPL_f`_ block.
`Open this example in Xcos`_ .





Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/Sources/INIMPL_f.sci`_




See also
~~~~~~~~


+ `OUTIMPL_f`_
+ `SUPER_f`_


.. _ Subsystem: Portaction_pal.html
.. _See also: INIMPL_f.html#Seealso_INIMPL_f
.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/portaction_pal/en_US/INIMPL_f_en_US.xcos
.. _Sources: Sources_pal.html
.. _SCI/modules/scicos_blocks/macros/Sources/INIMPL_f.sci: nullscilab.scinotes/scicos_blocks/macros/Sources/INIMPL_f.sci
.. _SUPER_f: SUPER_f.html
.. _Default properties: INIMPL_f.html#Defaultproperties_INIMPL_f
.. _OUTIMPL_f: OUTIMPL_f.html
.. _Implicit Input port: INIMPL_f.html
.. _Palette: INIMPL_f.html#Palette_INIMPL_f
.. _Example: INIMPL_f.html#Example_INIMPL_f
.. _Interfacing function: INIMPL_f.html#Interfacingfunction_INIMPL_f
.. _Dialog box: INIMPL_f.html#Dialogbox_INIMPL_f
.. _Description: INIMPL_f.html#Description_INIMPL_f


