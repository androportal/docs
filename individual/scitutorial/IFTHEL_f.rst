


IFTHEL_f
========

Synchronous block If-Then-Else



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Synchronous block If-Then-Else`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_





Palette
~~~~~~~


+ `Event handling palette`_




Description
~~~~~~~~~~~

One event is generated on one of the output event ports when an input
event arrives. Depending on the sign of the regular input, the event
is generated on the first or second output. This is a Synchro block, ,
input and output event are synchronized.



Dialog box
~~~~~~~~~~






+ **Inherit** If no, then it inherits the event from event input port,
  elseif yes, then event is activated by regular input port. Properties
  : Type 'vec' of size 1.
+ **zero-crossing** Select to enable zero crossing detection.
  Properties : Type 'vec' of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** yes
+ **mode:** yes
+ **regular inputs:** **- port 1 : size [1,1] / type -1**
+ **number/sizes of activation inputs:** 1
+ **number/sizes of activation outputs:** 2
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** ifthel




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Events/IFTHEL_f.sci


.. _Synchronous block If-Then-Else: IFTHEL_f.html
.. _Event handling palette: Events_pal.html
.. _Dialog box: IFTHEL_f.html#Dialogbox_IFTHEL_f
.. _Palette: IFTHEL_f.html#Palette_IFTHEL_f
.. _Interfacing function: IFTHEL_f.html#Interfacingfunction_IFTHEL_f
.. _Description: IFTHEL_f.html#Description_IFTHEL_f
.. _Default properties: IFTHEL_f.html#Defaultproperties_IFTHEL_f


