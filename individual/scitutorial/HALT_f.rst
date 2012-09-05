


HALT_f
======

Halt



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Halt`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Event handling palette`_




Description
~~~~~~~~~~~

This block has a unique input event port. Upon the arrival of an
event, the simulation is stopped and the main Xcos window is
activated. Simulation can be restarted or continued (Run button).



Dialog box
~~~~~~~~~~






+ **State on halt** A scalar value to be placed in the state of the
  block. For debugging purposes this allows to distinguish between
  different halts. Properties : Type 'vec' of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **number/sizes of activation inputs:** 1
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** yes
+ **object discrete-time state:** no
+ **name of computational function:** hltblk




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Events/HALT_f.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/fortran/hltblk.f (Type 0)


.. _Event handling palette: Events_pal.html
.. _Computational function: HALT_f.html#Computationalfunction_HALT_f
.. _Interfacing function: HALT_f.html#Interfacingfunction_HALT_f
.. _Default properties: HALT_f.html#Defaultproperties_HALT_f
.. _Halt: HALT_f.html
.. _Dialog box: HALT_f.html#Dialogbox_HALT_f
.. _Palette: HALT_f.html#Palette_HALT_f
.. _Description: HALT_f.html#Description_HALT_f


