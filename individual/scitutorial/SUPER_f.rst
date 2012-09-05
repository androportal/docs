


SUPER_f
=======

Super block



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Super block`_
  +

    + `Palette`_
    + `Description`_
    + `Default properties`_
    + `Interfacing function`_
    + `See also`_





Palette
~~~~~~~


+ `User defined functions palette`_




Description
~~~~~~~~~~~

This block opens up a new Xcos window for editing a new block diagram.
This diagram describes the internal functions of the super block.

Super block inputs and outputs (regular or event) are designated by
special (input or output) blocks.

Regular input blocks must be numbered from 1 to the number of regular
input ports. Regular input ports of the super block are numbered from
the top of the block shape to the bottom. Regular output ports must be
numbered from 1 to the number of regular output ports. Regular output
ports of the super block are numbered from the top of the block shape
to the bottom. Event input blocks must be numbered from 1 to the
number of event input ports. Event input ports of the super block are
numbered from the left of the block shape to the right. Event output
ports must be numbered from 1 to the number of event output ports.
Event output ports of the super block are numbered from the left of
the block shape to the right.



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

:`Masked super block`_ Any super block can be masked to provide a
  black box implementation with parameters.
:

.. _Masked super block: DSUPER.html
.. _Default properties: SUPER_f.html#Defaultproperties_SUPER_f
.. _Super block: SUPER_f.html
.. _Description: SUPER_f.html#Description_SUPER_f
.. _Palette: SUPER_f.html#Palette_SUPER_f
.. _Interfacing function: SUPER_f.html#Interfacingfunction_SUPER_f
.. _See also: SUPER_f.html#SeeAlso_SUPER_f
.. _User defined functions palette: Userdefinedfunctions_pal.html


