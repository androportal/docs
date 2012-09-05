


CLKOUTV_f
=========

Output activation port



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Output activation port`_
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


+ `Port & Subsystem palette`_
+ `Sinks palette`_
+ `Event handling palette`_




Description
~~~~~~~~~~~

This block represent an activation output port. It must only be used
inside a Xcos Super Blockand be connected to an activation output on
an internal activation output in the subsystem.

This block is an event link from outside of a system into a sub-
system. In a Super Block, the activation's output ports must be
numbered from 1 to the total number of activation's output ports. You
can set it with the **Port number** parameter.



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
+ **number/sizes of activation inputs:** 1
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** output




Example
~~~~~~~

The Super bloc below is mainly a frequency divider by 4, associated to
an one event generation at time * `t= 3 s`* . `Open this example in
Xcos`_ :





Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/Sinks/CLKOUTV_f.sci`_




See also
~~~~~~~~


+ `CLKINV_f`_ Input activation port
+ `SUPER_f`_ Super block


.. _ Subsystem palette: Portaction_pal.html
.. _SUPER_f: SUPER_f.html
.. _Event handling palette: Events_pal.html
.. _Description: CLKOUTV_f.html#Description_CLKOUTV_f
.. _Palette: CLKOUTV_f.html#Palette_CLKOUTV_f
.. _Interfacing function: CLKOUTV_f.html#Interfacingfunction_CLKOUTV_f
.. _Output activation port: CLKOUTV_f.html
.. _Example: CLKOUTV_f.html#Example_CLKOUTV_f
.. _Dialog box: CLKOUTV_f.html#Dialogbox_CLKOUTV_f
.. _Open this example in Xcos: nullscilab.xcos/xcos/examples/portaction_pal/en_US/CLKOUTV_f_en_US.xcos
.. _See also: CLKOUTV_f.html#Seealso_CLKOUTV_f
.. _Sinks palette: Sinks_pal.html
.. _CLKINV_f: CLKINV_f.html
.. _Default properties: CLKOUTV_f.html#Defaultproperties_CLKOUTV_f
.. _SCI/modules/scicos_blocks/macros/Sinks/CLKOUTV_f.sci: nullscilab.scinotes/scicos_blocks/macros/Sinks/CLKOUTV_f.sci


