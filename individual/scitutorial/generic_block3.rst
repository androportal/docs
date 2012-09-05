


generic_block3
==============

Generic block



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Generic block`_
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

The block provides a generic interfacing function but the
computational function needs to be defined separately, either as a
Scilab function or a Fortran or a C function. Besides the name of the
function, user should specify information such as the type, whether or
not the block contains a direct feed-through term. The function
realising computational functions of generic blocks of a Scicos
diagram must be saved along with the diagram and loaded or dynamically
linked before simulation.



Dialog box
~~~~~~~~~~






+ **Simulation function** Name of the function to be loaded.
  Properties : Type 'str' of size 1
+ **Function type** Type of the computational function supported by
  Scicos. Properties : Type 'vec' of size 1
+ **Input ports sizes** Number of regular input ports. Properties :
  Type 'mat' of size [-1,2]
+ **Input ports type** Set the datatype of the regular input ports.
  Properties : Type 'vec' of size -1
+ **Iutput port sizes** Number of regular input ports. Properties :
  Type 'mat' of size [-1,2]
+ **Output ports type** Set the datatype of the regular output ports.
  Properties : Type 'vec' of size -1
+ **Input event ports sizes** a vector of ones, size of event input
  ports. The size of the vector gives the number of event input ports.
  Properties : Type 'vec' of size -1
+ **Output events ports sizes** a vector of ones, size of event output
  ports. The size of the vector gives the number of of event output
  ports. Properties : Type 'vec' of size -1
+ **Initial continuous state** A column vector of Initial State
  Conditions. Properties : Type 'vec' of size -1
+ **Initial discrete state** A column vector Initial discrete
  Conditions. Properties : Type 'vec' of size -1
+ **Initial object state** A Scilab list that defined the initial
  object state (oz). Properties : Type 'lis' of size -1
+ **Real parameters vector** column vector. Any parameters used in the
  block can be defined here as a column vector. Properties : Type 'vec'
  of size -1
+ **Integer parameters vector** column vector. Any integer parameters
  used in the block can be defined here as a column vector. Properties :
  Type 'vec' of size -1
+ **Object parameters list** A Scilab list that defined the list of
  the Object parameters (opar). Properties : Type 'lis' of size -1
+ **Number of modes** Number of Right hand side functions in the
  system. Properties : Type 'vec' of size 1
+ **Number of zero_crossings** No. of zero-crossings Properties : Type
  'vec' of size 1
+ **Initial firing vector** vector. Size of this vector corresponds to
  the number of event outputs. The value of the i-th entry specifies the
  time of the preprogrammed event firing on the i-th output event port.
  If less than zero, no event is preprogrammed. Properties : Type 'vec'
  of size sum(%6)
+ **Direct feedthrough** character "y" or "n", specifies if block has
  a direct input to output feedthrough. Properties : Type 'vec' of size
  1
+ **Time dependence** Time dependance : character "y" or "n",
  specifies if block output depends explicitly on time. Properties :
  Type 'vec' of size 1




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
+ **name of computational function:** sinblk




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Misc/generic_block3.sci




Computational function
~~~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/src/fortran/sinblk.f (Type 4)


.. _Computational function: generic_block3.html#Computationalfunction_generic_block3
.. _User defined functions palette: Userdefinedfunctions_pal.html
.. _Dialog box: generic_block3.html#Dialogbox_generic_block3
.. _Generic block: generic_block3.html
.. _Interfacing function: generic_block3.html#Interfacingfunction_generic_block3
.. _Default properties: generic_block3.html#Defaultproperties_generic_block3
.. _Description: generic_block3.html#Description_generic_block3
.. _Palette: generic_block3.html#Palette_generic_block3


