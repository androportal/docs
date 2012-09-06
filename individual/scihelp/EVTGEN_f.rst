


EVTGEN_f
========

Event generator



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Event generator`_
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

One event is generated on the unique output event port if Event time
is larger than equal to zero, if not, no event is generated.



Dialog box
~~~~~~~~~~






+ **Event Time** scalar. date of the initial event. Properties : Type
  'vec' of size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 1
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** trash




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Events/EVTGEN_f.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/fortran/trash.f (Type 0)


.. _Event handling palette: Events_pal.html
.. _Default properties: EVTGEN_f.html#Defaultproperties_EVTGEN_f
.. _Event generator: EVTGEN_f.html
.. _Dialog box: EVTGEN_f.html#Dialogbox_EVTGEN_f
.. _Computational function: EVTGEN_f.html#Computationalfunction_EVTGEN_f
.. _Palette: EVTGEN_f.html#Palette_EVTGEN_f
.. _Description: EVTGEN_f.html#Description_EVTGEN_f
.. _Interfacing function: EVTGEN_f.html#Interfacingfunction_EVTGEN_f


