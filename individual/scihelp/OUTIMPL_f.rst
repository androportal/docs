


OUTIMPL_f
=========

Output implicit port



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Output implicit port`_
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
+ `Sinks palette`_




Description
~~~~~~~~~~~

This block represents a regular implicit port. It must only be used
inside a Xcos Super Block and be connected to an implicit output of an
internal implicit output in the sub-system.

This block is a signal link from outside of a system into a sub-
system. In a Super Block, the implicit's output ports must be numbered
from 1 to the total number of implicit's output ports. You can set it
with the **Port number** parameter.



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
+ **regular inputs:** **- port 1 : size [-1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** outimpl




Example
~~~~~~~

In the following example the Super block is a basic transistor switch.
`Open this example in Xcos`_ .



The following figure shows the use of the Super block and the
resulting output when its input is toggled between the potentials GND
and Vcc. You can also see on the output the effect of the saturation
voltage (minimal output = 0.4 Volt).





Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/Sinks/OUTIMPL_f.sci`_




See also
~~~~~~~~


+ `INIMPL_f`_ Implicit Input port
+ `SUPER_f`_ Super block


.. _Example: OUTIMPL_f.html#Example_OUTIMPL_f
.. _Palette: OUTIMPL_f.html#Palette_OUTIMPL_f
.. _SCI/modules/scicos_blocks/macros/Sinks/OUTIMPL_f.sci: nullscilab.scinotes/scicos_blocks/macros/Sinks/OUTIMPL_f.sci
.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/portaction_pal/en_US/OUTIMPL_f_en_US.xcos
.. _ Subsystem palette: Portaction_pal.html
.. _Interfacing function: OUTIMPL_f.html#Interfacingfunction_OUTIMPL_f
.. _Default properties: OUTIMPL_f.html#Defaultproperties_OUTIMPL_f
.. _Output implicit port: OUTIMPL_f.html
.. _INIMPL_f: INIMPL_f.html
.. _Dialog box: OUTIMPL_f.html#Dialogbox_OUTIMPL_f
.. _See also: OUTIMPL_f.html#Seealso_OUTIMPL_f
.. _Sinks palette: Sinks_pal.html
.. _SUPER_f: SUPER_f.html
.. _Description: OUTIMPL_f.html#Description_OUTIMPL_f


