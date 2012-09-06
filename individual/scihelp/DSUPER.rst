


DSUPER
======

Masked super block



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Masked super block`_
  +

    + `Description`_
    + `Default properties`_
    + `Interfacing function`_





Description
~~~~~~~~~~~

This block opens the settings of the masked `Super block`_.

Any super block implementation can hide it's implementation be using
the "Mask" feature and then some parameters (extracted from the
context) can be added to configure it. If you want to edit such a
block, you first need to "Unmask" it.



Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 1**
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** super




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Misc/SUPER_f.sci
+ SCI/modules/scicos_blocks/macros/Misc/DSUPER.sci




See also
~~~~~~~~

:`Super block`_ The implementation of this black box is performed
  through a Super block.
:

.. _Masked super block: DSUPER.html
.. _Interfacing function: DSUPER.html#Interfacingfunction_DSUPER
.. _Super block: SUPER_f.html
.. _Default properties: DSUPER.html#Defaultproperties_DSUPER
.. _Description: DSUPER.html#Description_DSUPER


