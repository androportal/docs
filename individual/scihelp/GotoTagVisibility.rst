


GotoTagVisibility
=================

Define Scope of GOTO tag visibility



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Define Scope of GOTO tag visibility`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `See also`_





Palette
~~~~~~~


+ `Signal routing palette`_




Description
~~~~~~~~~~~

This block defines the accessibility of the GOTO block when it is
configure as "scoped". The FROM block corresponding to that GOTO must
be in the same subsystem of the GotoTagVisibility or in subsystems
below it in the model hierarchy.





Dialog box
~~~~~~~~~~






+ **GotoTag** The Goto block tag whose visibility is defined by the
  location of this block. Properties : Type 'str' of size -1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** gototagvisibility




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Branching/GotoTagVisibility.sci




See also
~~~~~~~~


+ `GOTO - GOTO Pass block input to From block`_
+ `FROM - FROM Receives data from a corresponding GOTO`_


.. _GOTO - GOTO Pass block input to From block: GOTO.html
.. _FROM - FROM Receives data from a corresponding GOTO: FROM.html
.. _Default properties: GotoTagVisibility.html#Defaultproperties_GotoTagVisibility
.. _Interfacing function: GotoTagVisibility.html#Interfacingfunction_GotoTagVisibility
.. _Palette: GotoTagVisibility.html#Palette_GotoTagVisibility
.. _See also: GotoTagVisibility.html#Seealso_GotoTagVisibility
.. _Description: GotoTagVisibility.html#Description_GotoTagVisibility
.. _Define Scope of GOTO tag visibility: GotoTagVisibility.html
.. _Signal routing palette: Signalrouting_pal.html
.. _Dialog box: GotoTagVisibility.html#Dialogbox_GotoTagVisibility


