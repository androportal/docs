


IN_f
====

Regular Input Port



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Regular Input Port`_
  +

    + `Palette`_
    + `Description`_
    + `Data types`_
    + `Dialog box`_
    + `Default properties`_
    + `Example`_
    + `Interfacing function`_
    + `See also`_





Palettes
~~~~~~~~


+ `Port & Subsystem palette`_
+ `Sources Palette`_




Description
~~~~~~~~~~~

This block represent a regular input port. It must only be used inside
a Xcos Super Block and be connected to a regular input in the
subsystem.

This block is a signal link from outside of a system into a sub-
system. In a Super Block, the regular's input ports must be numbered
from 1 to the total number of regular's input ports. You can set it
with the **Port number** parameter.



Data types
~~~~~~~~~~


+ Output : same type that the input connected to it in the sub-system.




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
+ **regular outputs:** **- port 1 : size [-1,-2] / type -1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** input




Example
~~~~~~~

In the following example the Super block is an amplitude modulator.
The IN_f block is used as a modulation signal input. Its data type is
defined by the input type of the gain block that is a scalar double
data type. `Open this example in Xcos`_ .





Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/Sources/IN_f.sci`_




See also
~~~~~~~~


+ `OUT_f`_ Regular Output Port
+ `SUPER_f`_ Super block


.. _See also: IN_f.html#Seealso_IN_f
.. _Palette: IN_f.html#Palette_IN_f
.. _ Subsystem palette: Portaction_pal.html
.. _Sources Palette: Sources_pal.html
.. _Regular Input Port: IN_f.html
.. _Interfacing function: IN_f.html#Interfacingfunction_IN_f
.. _SUPER_f: SUPER_f.html
.. _Data types: IN_f.html#Datatype_IN_f
.. _Dialog box: IN_f.html#Dialogbox_IN_f
.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/portaction_pal/en_US/IN_f_en_US.xcos
.. _Default properties: IN_f.html#Defaultproperties_IN_f
.. _Description: IN_f.html#Description_IN_f
.. _Example: IN_f.html#Example_IN_f
.. _OUT_f: OUT_f.html
.. _SCI/modules/scicos_blocks/macros/Sources/IN_f.sci: nullscilab.scinotes/scicos_blocks/macros/Sources/IN_f.sci


