


SELECT_m
========

Select



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Select`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Example`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `Signal routing palette`_




Description
~~~~~~~~~~~

A Selector block accepts either vector or matrix signals as input. Set
the Input Type parameter to the type of signal (vector or matrix) that
the block should accept in your model. The parameter dialog box and
the block's appearance change to reflect the type of input that you
select. The way the block determines the elements to select differs
slightly, depending on the type of input.



Dialog box
~~~~~~~~~~






+ **Datatype(1= real double 2=Complex)** It indicates the type of the
  output. It support only the two types double (1) and complex (2). If
  we input another entry in this label Xcos will print the message
  "Datatype is not supported". Properties : Type 'vec' of size 1
+ **number of inputs** a scalar. Number of regular and event inputs.
  Properties : Type 'vec' of size 1
+ **initial connected input** an integer. It must be between 1 and the
  number of inputs. Properties : Type 'vec' of size 1




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** no
+ **direct-feedthrough:** yes
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [-1,-2] / type 1** **- port 2
  : size [-1,-2] / type 1**
+ **regular outputs:** **- port 1 : size [-1,-2] / type 1**
+ **number/sizes of activation inputs:** 2
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** yes
+ **object discrete-time state:** no
+ **name of computational function:** selector_m




Example
~~~~~~~
` `_


Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Branching/SELECT_m.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/selector_m.c (Type 4)


.. _Computational function: SELECT_m.html#Computationalfunction_SELECT_m
.. _Dialog box: SELECT_m.html#Dialogbox_SELECT_m
.. _Description: SELECT_m.html#Description_SELECT_m
.. _Example: SELECT_m.html#Example_SELECT_m
.. _Interfacing function: SELECT_m.html#Interfacingfunction_SELECT_m
.. _Palette: SELECT_m.html#Palette_SELECT_m
.. _Default properties: SELECT_m.html#Defaultproperties_SELECT_m
.. _Select: SELECT_m.html
.. _Signal routing palette: Signalrouting_pal.html


