


ANDLOG_f
========

Logical and



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Logical and`_
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

This block, with two event inputs and a regular output, outputs **+1**
or **-1** on its regular output depending on input events.




+ **+1 :** When events are synchronously (present on both event input
  ports),
+ **-1 :** When only one event is present.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 2
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** andlog




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Events/ANDLOG_f.sci


.. _Logical and: ANDLOG_f.html
.. _Default properties: ANDLOG_f.html#Defaultproperties_ANDLOG_f
.. _Event handling palette: Events_pal.html
.. _Palette: ANDLOG_f.html#Palette_ANDLOG_f
.. _Interfacing function: ANDLOG_f.html#Interfacingfunction_ANDLOG_f
.. _Description: ANDLOG_f.html#Description_ANDLOG_f


