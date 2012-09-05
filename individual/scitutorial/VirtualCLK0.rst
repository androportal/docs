


VirtualCLK0
===========

Triggered Always Active Blocks



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Triggered Always Active Blocks`_
  +

    + `Palette`_
    + `Description`_
    + `Default properties`_
    + `Interfacing function`_





Palette
~~~~~~~


+ `Event handling palette`_




Description
~~~~~~~~~~~

This block is considered a virtual block by the compilor. It is used
in a SuperBlock (subsystem) to trigger the always active blocks (ex:
the sinus generator) in the SuperBlock and in the level below. The
blocks will be virtually connected to the input of the VirtualCLK0.





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
+ **name of computational function:** vrtclk0




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ `SCI/modules/scicos_blocks/macros/Events/VirtualCLK0.sci`_


.. _Default properties: VirtualCLK0.html#Defaultproperties_VirtualCLK0
.. _Event handling palette: Events_pal.html
.. _Triggered Always Active Blocks: VirtualCLK0.html
.. _Description: VirtualCLK0.html#Description_VirtualCLK0
.. _Palette: VirtualCLK0.html#Palette_VirtualCLK0
.. _SCI/modules/scicos_blocks/macros/Events/VirtualCLK0.sci: nullscilab.scinotes/scicos_blocks/macros/Events/VirtualCLK0.sci
.. _Interfacing function: VirtualCLK0.html#Interfacingfunction_VirtualCLK0


