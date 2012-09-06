


EVTDLY_c
========

Event delay



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Event delay`_
  +

    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Example`_
    + `Interfacing function`_
    + `Computational function`_
    + `See also`_





Palette
~~~~~~~


+ `Event handling palette`_




Description
~~~~~~~~~~~

One event is generated **Delay** after an event enters the unique
input event port. Block may also generate an initial output event. The
event date of that block is computed by the formula :







where the date of initial output event, the delay and and internal
integer discrete counter.



Dialog box
~~~~~~~~~~






+ **Delay** scalar. Time delay between input and output event.
  Properties : Type 'vec' of size 1
+ **Date of initial output event** scalar. If **Auto-exec>=0** block
  initially generates an output event at date **Auto-exec** . Properties
  : Type 'vec' of size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **number/sizes of activation inputs:** 1
+ **number/sizes of activation outputs:** 1
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** evtdly4




Example
~~~~~~~
` `_


Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Events/EVTDLY_c.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/evtdly4.c (Type 4)




See also
~~~~~~~~


+ `CLOCK_c - Activation clock`_


.. _See also: EVTDLY_c.html#Seealso_EVTDLY_c
.. _Event handling palette: Events_pal.html
.. _Interfacing function: EVTDLY_c.html#Interfacingfunction_EVTDLY_c
.. _Default properties: EVTDLY_c.html#Defaultproperties_EVTDLY_c
.. _Event delay: EVTDLY_c.html
.. _Description: EVTDLY_c.html#Description_EVTDLY_c
.. _CLOCK_c - Activation clock: CLOCK_c.html
.. _Dialog box: EVTDLY_c.html#Dialogbox_EVTDLY_c
.. _Computational function: EVTDLY_c.html#Computationalfunction_EVTDLY_c
.. _Example: EVTDLY_c.html#Example_EVTDLY_c


