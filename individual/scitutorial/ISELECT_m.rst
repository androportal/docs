


ISELECT_m
=========

Iselect



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Iselect`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Signal routing palette`_




Description
~~~~~~~~~~~

Select signals from an incoming events. This block has one regular
input port.



Dialog box
~~~~~~~~~~






+ **Datatype(1= real double 2=Complex)** It indicates the type of the
  output. It support only the two types double (1) and complex (2). If
  we input another entry in this label Xcos will print the message
  "Datatype is not supported". Properties : Type 'vec' of size 1
+ **number of outputs** a scalar. Number of regular and event outputs.
  Properties : Type 'vec' of size 1
+ **initial connected output** an integer. It must be between 1 and
  the number of inputs. Properties : Type 'vec' of size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,-2] / type 1**
+ **regular outputs:** **- port 1 : size [-1,-2] / type 1** **- port 2
  : size [-1,-2] / type 1**
+ **number/sizes of activation inputs:** 2
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** yes
+ **object discrete-time state:** no
+ **name of computational function:** selector_m




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Branching/ISELECT_m.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/selector_m.c (Type 4)


.. _Interfacing function: ISELECT_m.html#Interfacingfunction_ISELECT_m
.. _Iselect: ISELECT_m.html
.. _Description: ISELECT_m.html#Description_ISELECT_m
.. _Palette: ISELECT_m.html#Palette_ISELECT_m
.. _Computational function: ISELECT_m.html#Computationalfunction_ISELECT_m
.. _Default properties: ISELECT_m.html#Defaultproperties_ISELECT_m
.. _Dialog box: ISELECT_m.html#Dialogbox_ISELECT_m
.. _Signal routing palette: Signalrouting_pal.html


