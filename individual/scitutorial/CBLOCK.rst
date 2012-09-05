


CBLOCK
======

New C



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `New C`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_





Palette
~~~~~~~


+ `User defined functions palette`_




Description
~~~~~~~~~~~

This block creates skeleton of the C-computing function. It also
creates library file and object files.



Dialog box
~~~~~~~~~~






+ **simulation function** Name of the function to be generated.
  Properties : Type 'str' of size 1
+ **is block implicit?** If yes (y) is selected, it calls implicit
  solver (dasrt) else (n) it calls explicit solver, lsodar. Properties :
  Type 'str' of size 1
+ **input ports sizes** Number of regular input ports Properties :
  Type 'vec' of size -1
+ **output ports sizes** Number of regular output ports Properties :
  Type 'vec' of size -1
+ **input event ports sizes** Number of event input ports Properties :
  Type 'vec' of size -1
+ **output events ports sizes** Number of event output ports
  Properties : Type 'vec' of size -1
+ **initial continuous state** Initial Conditions Properties : Type
  'vec' of size -1
+ **number of zero crossing surfaces** Select to enable zero crossing
  detection. Properties : Type 'vec' of size 1
+ **initial discrete state** Initial conditions of the discrete
  states. Properties : Type 'vec' of size -1
+ **Real parameters vector** Real Parameter vector that the function
  accepts. Properties : Type 'vec' of size -1
+ **Integer parameters vector** Integer Parameter vector that the
  function accepts. Properties : Type 'vec' of size -1
+ **initial firing vector** A vector. Size of this vector corresponds
  to the number of event outputs. The value of the entry specifies the
  time of the preprogrammed event firing on the output event port. If
  less than zero, no event is preprogrammed. Properties : Type 'vec' of
  size 'sum(%6)'
+ **direct feedthrough** The input to the block at the current time
  determine the output of the block at the current time. This forces the
  input to feed through to the output, as if the system were operating
  at steady-state. Properties : Type 'str' of size 1
+ **time dependence** Create a signal that specifies the time
  dependence. Properties : Type 'str' of size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 1**
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:**




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Misc/CBLOCK.sci


.. _User defined functions palette: Userdefinedfunctions_pal.html
.. _Palette: CBLOCK.html#Palette_CBLOCK
.. _Dialog box: CBLOCK.html#Dialogbox_CBLOCK
.. _New C: CBLOCK.html
.. _Description: CBLOCK.html#Description_CBLOCK
.. _Interfacing function: CBLOCK.html#Interfacingfunction_CBLOCK
.. _Default properties: CBLOCK.html#Defaultproperties_CBLOCK


