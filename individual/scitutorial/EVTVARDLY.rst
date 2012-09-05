


EVTVARDLY
=========

Event variable delay



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Event variable delay`_
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

One event is generated Delay after an event enters the unique input
event port. The value of the delay is read from the regular input
port. Block may also generate an initial output event.



Dialog box
~~~~~~~~~~






+ **Initial event firing time** One event is generated on the unique
  output event port if Event time is larger than equal to zero, if not,
  no event is generated. Properties : Type 'vec' of size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 1
+ **number/sizes of activation outputs:** 1
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** evtvardly




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Events/EVTVARDLY.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/evtvardly.c (Type 4)


.. _Event handling palette: Events_pal.html
.. _Event variable delay: EVTVARDLY.html
.. _Computational function: EVTVARDLY.html#Computationalfunction_EVTVARDLY
.. _Dialog box: EVTVARDLY.html#Dialogbox_EVTVARDLY
.. _Interfacing function: EVTVARDLY.html#Interfacingfunction_EVTVARDLY
.. _Description: EVTVARDLY.html#Description_EVTVARDLY
.. _Default properties: EVTVARDLY.html#Defaultproperties_EVTVARDLY
.. _Palette: EVTVARDLY.html#Palette_EVTVARDLY


