


NRMSOM_f
========

Merge data



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Merge data`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_





Palette
~~~~~~~


+ `Signal routing palette`_




Description
~~~~~~~~~~~

The Merge block combines its inputs into a single output line whose
value at any time is equal to the most recently computed output of its
driving blocks. You can specify any number of inputs by setting the
block's Number of inputs parameter.



Dialog box
~~~~~~~~~~






+ **number of inputs** The number of input ports to be merged.
  Properties : Type 'vec' of size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,1] / type 1** **- port 2 :
  size [-1,1] / type 1**
+ **regular outputs:** **- port 1 : size [-1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** junk




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Branching/NRMSOM_f.sci


.. _Merge data: NRMSOM_f.html
.. _Description: NRMSOM_f.html#Description_NRMSOM_f
.. _Interfacing function: NRMSOM_f.html#Interfacingfunction_NRMSOM_f
.. _Palette: NRMSOM_f.html#Palette_NRMSOM_f
.. _Default properties: NRMSOM_f.html#Defaultproperties_NRMSOM_f
.. _Signal routing palette: Signalrouting_pal.html
.. _Dialog box: NRMSOM_f.html#Dialogbox_NRMSOM_f


