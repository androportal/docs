


scifunc_block_m
===============

Scilab function block



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Scilab function block`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_
    + `Computational function`_





Palette
~~~~~~~


+ `User defined functions palette`_




Description
~~~~~~~~~~~

This block can realize any type of Scicos block. The function of the
block is defined interactively using dialogue boxes and in Scilab
language. During simulation, these instructions are interpreted by
Scilab; the simulation of diagrams that include these types of blocks
is slower. For more information see Scicos reference manual.



Dialog box
~~~~~~~~~~






+ **input ports sizes** a scalar. Number of regular input ports
  Properties : Type 'vec' of size -1
+ **output port sizes** a scalar. Number of regular output ports
  Properties : Type 'vec' of size -1
+ **input event ports sizes** a scalar. Number of input event ports
  Properties : Type 'vec' of size -1
+ **output events ports sizes** a scalar. Number of output event ports
  Properties : Type 'vec' of size -1
+ **initial continuous state** a column vector. Properties : Type
  'vec' of size -1
+ **initial discrete state** a column vector. Properties : Type 'vec'
  of size -1
+ **System parameters vector** a string: c or d ( **CBB** or **DBB**
  ), other types are not supported. Properties : Type 'vec' of size -1
+ **initial firing vector** vector. Size of this vector corresponds to
  the number of event outputs. The value of the i-th entry specifies the
  time of the preprogrammed event firing on the i-th output event port.
  If less than zero, no event is preprogrammed. Properties : Type 'vec'
  of size sum(%4)
+ **is block always active** other dialogues are opened consecutively
  where used may input Scilab code associated with the computations
  needed (block initialization, outputs, continuous and discrete state,
  output events date, block ending) Properties : Type 'vec' of size 1




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
+ **name of computational function:** scifunc




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Misc/scifunc_block_m.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos/src/fortran/scifunc.f (Type 3)


.. _User defined functions palette: Userdefinedfunctions_pal.html
.. _Scilab function block: scifunc_block_m.html
.. _Default properties: scifunc_block_m.html#Defaultproperties_scifunc_block_m
.. _Interfacing function: scifunc_block_m.html#Interfacingfunction_scifunc_block_m
.. _Palette: scifunc_block_m.html#Palette_scifunc_block_m
.. _Computational function: scifunc_block_m.html#Computationalfunction_scifunc_block_m
.. _Description: scifunc_block_m.html#Description_scifunc_block_m
.. _Dialog box: scifunc_block_m.html#Dialogbox_scifunc_block_m


