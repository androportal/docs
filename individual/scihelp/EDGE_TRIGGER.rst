


EDGE_TRIGGER
============

EDGE_TRIGGER block



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `EDGE_TRIGGER block`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Compiled Super Block content`_





Palette
~~~~~~~


+ `Event handling palette`_




Description
~~~~~~~~~~~

This block generates an event on rising, falling or both edges of the
input signal (depending on block parameter). A rising edge is a change
in value from strictly negative to positive or zero, or a change in
value from zero to strictly positive. A falling edge is the opposite.
Note that this block only generates an event if the input jumps due to
an event. The generated event is synchronous with the event causing
the jump. This block does not detect continuous-time zero-crossings.





Dialog box
~~~~~~~~~~






+ **rising (1), falling (-1), both (0)** Properties : Type 'vec' of
  size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 1
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** csuper




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Misc/EDGE_TRIGGER.sci




Compiled Super Block content
~~~~~~~~~~~~~~~~~~~~~~~~~~~~



.. _Compiled Super Block content: EDGE_TRIGGER.html
.. _Default properties: EDGE_TRIGGER.html#Defaultproperties_EDGE_TRIGGER
.. _Event handling palette: Events_pal.html
.. _Description: EDGE_TRIGGER.html#Description_EDGE_TRIGGER
.. _Interfacing function: EDGE_TRIGGER.html#Interfacingfunction_EDGE_TRIGGER
.. _Dialog box: EDGE_TRIGGER.html#Dialogbox_EDGE_TRIGGER
.. _Palette: EDGE_TRIGGER.html#Palette_EDGE_TRIGGER


