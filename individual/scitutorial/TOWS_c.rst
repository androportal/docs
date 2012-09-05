


TOWS_c
======

Data to Scilab worspace



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Data to Scilab worspace`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_
    + `Example`_





Palette
~~~~~~~


+ `Sinks palette`_




Description
~~~~~~~~~~~

That block is used to put simulated data in the scilab workspace.

Each sampling time, both dates and values of input are recorded.



Dialog box
~~~~~~~~~~






+ **Size of buffer** Set the size of the input buffer. That gives the
  total number of samples recorded during the simulation. That buffer is
  a circulate buffer. Properties : Type 'vec' of size 1.
+ **Scilab variable name** Set the name of the Scilab variable. This
  must be a valid variable name. The simulation must be finished to
  retrieve that variable in the Scilab workspace. Properties : Type
  'str' of size 1.
+ **Inherit (no:0, yes:1)** Options to choose event inheritance from
  regular input or from explicit event input (0). Properties : Type
  'vec' of size 1.




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,1] / type -1**
+ **number/sizes of activation inputs:** 1
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** tows_c




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Sinks/TOWS_c.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/tows_c.c (Type 4)




Example
~~~~~~~

` `_

.. _Description: TOWS_c.html#Description_TOWS_c
.. _Palette: TOWS_c.html#Palette_TOWS_c
.. _Dialog box: TOWS_c.html#Dialogbox_TOWS_c
.. _Interfacing function: TOWS_c.html#Interfacingfunction_TOWS_c
.. _Example: TOWS_c.html#Example_TOWS_c
.. _Sinks palette: Sinks_pal.html
.. _Computational function: TOWS_c.html#Computationalfunction_TOWS_c
.. _Data to Scilab worspace: TOWS_c.html
.. _Default properties: TOWS_c.html#Defaultproperties_TOWS_c


