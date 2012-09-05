


OUT_f
=====

Regular Output Port



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Regular Output Port`_
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
+ `Sinks palette`_




Description
~~~~~~~~~~~

This block represent a regular output port. It must only be used
inside a Xcos Super Block and be connected to a regular output in the
sub-system.

This block is a signal link from outside of a system into a sub-
system. In a Super Block, the regular's output ports must be numbered
from 1 to the total number of regular's output ports. You can set it
with the **Port number** parameter.



Data types
~~~~~~~~~~


+ Input : same type that the internal block connected to it in the
  sub-system.




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
+ **regular inputs:** **- port 1 : size [-1,-2] / type -1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** output




Example
~~~~~~~

In the following example the Super block encloses two discontinuities.
The OUT_f block is the non linear output signal. `Open this example in
Xcos`_ .





Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/Sinks/OUT_f.sci`_




See also
~~~~~~~~


+ `IN_f`_ Regular Input Port
+ `SUPER_f`_ Super block


.. _Sinks palette: Sinks_pal.html
.. _Example: OUT_f.html#Example_OUT_f
.. _SUPER_f: SUPER_f.html
.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/portaction_pal/en_US/OUT_f_en_US.xcos
.. _Dialog box: OUT_f.html#Dialogbox_OUT_f
.. _ Subsystem palette: Portaction_pal.html
.. _SCI/modules/scicos_blocks/macros/Sinks/OUT_f.sci: nullscilab.scinotes/scicos_blocks/macros/Sinks/OUT_f.sci
.. _See also: OUT_f.html#Seealso_OUT_f
.. _Palette: OUT_f.html#Palette_OUT_f
.. _Interfacing function: OUT_f.html#Interfacingfunction_OUT_f
.. _Data types: OUT_f.html#Datatype_OUT_f
.. _IN_f: IN_f.html
.. _Default properties: OUT_f.html#Defaultproperties_OUT_f
.. _Description: OUT_f.html#Description_OUT_f
.. _Regular Output Port: OUT_f.html


