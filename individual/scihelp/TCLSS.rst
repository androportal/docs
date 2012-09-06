


TCLSS
=====

Continuous linear system with jump



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Continuous linear system with jump`_
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


+ `Continuous time systems palette`_




Description
~~~~~~~~~~~

This block realizes a continuous-time linear state-space system with
the possibility of jumps in the state. The number of inputs to this
block is two. The first input is the regular input of the linear
system, the second carries the new value of the state which is copied
into the state when an event arrives at the unique event input port of
this block. That means the state of the system jumps to the value
present on the second input (of size equal to that of the state). The
system is defined by the matrices and the initial state . The
dimensions must be compatible. The sizes of inputs and outputs are
adjusted automatically.



Dialog box
~~~~~~~~~~






+ **A matrix** square matrix. Properties : Type 'mat' of size [-1,-1].
+ **B matrix** The matrix, [] if system has no input. Properties :
  Type 'mat' of size ["size(%1,2)","-1"].
+ **C matrix** The matrix , [] if system has no output. Properties :
  Type 'mat' of size ["-1","size(%1,2)"].
+ **D matrix** The matrix, [] if system has no D term. Properties :
  Type 'mat' of size [-1,-1].
+ **Initial state** A vector/scalar initial state of the system.
  Properties : Type 'vec' of size "size(%1,2)".




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** yes
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 1** **- port 2 :
  size [1,1] / type 1**
+ **regular outputs:** **- port 1 : size [1,1] / type 1**
+ **number/sizes of activation inputs:** 1
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** yes
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** tcslti4




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Linear/TCLSS.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/c/tcslti4.c (Type 4)




Example
~~~~~~~

` `_

.. _Continuous time systems palette: Continuous_pal.html
.. _Example: TCLSS.html#Example_TCLSS
.. _Continuous linear system with jump: TCLSS.html
.. _Dialog box: TCLSS.html#Dialogbox_TCLSS
.. _Default properties: TCLSS.html#Defaultproperties_TCLSS
.. _Description: TCLSS.html#Description_TCLSS
.. _Palette: TCLSS.html#Palette_TCLSS
.. _Computational function: TCLSS.html#Computationalfunction_TCLSS
.. _Interfacing function: TCLSS.html#Interfacingfunction_TCLSS


