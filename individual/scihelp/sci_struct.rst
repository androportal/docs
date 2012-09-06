


sci_struct
==========

Scicos block structure of a scilab computational function



Contents
~~~~~~~~


+ `sci_struct - Scicos block structure of a scilab computational
  function`_
  +

    + `Module`_
    + `Description`_
    + `Inputs/outputs`_
    + `Events`_
    + `Parameters`_
    + `States`_
    + `Zero crossing surfaces and modes`_
    + `Miscallaneous`_





Module
~~~~~~


+ `xcos`_




Description
~~~~~~~~~~~

A Scicos computational function of type 5 can be realized by the use
of a Scilab function. That function does not really differs from all
other scilab function : one can use all functions and instructions of
the scilab language inside that function to do the computation.

Such a function must be written in a file with extension .sci, must be
loaded inside scilab by the common loading scilab function (, , ,
,...) and must have two right hand side arguments and one left hand
side argument, as the following calling sequence :



When the simulator is calling such a computational function, it build
a scilab structure (in the previous exemple this is the named rhs/lhs
arguments) from his own internal C reprensation of a block structure
(see for more details about the C structure of scicos blocks).

That scilab structure is a scilab typed list variable that have the
following fields :



Each fields are then accessible inside the scilab computational
function by the use of :







Inputs/outputs
~~~~~~~~~~~~~~




+ **block.nin :** a scalar that gives the number of regular input
  ports. This is a read only data.
+ **block.insz :** a vector of size , that gives the dimensions and
  types of the regular input ports.

    + **:** are the first dimensions.
    + **:** are the second dimensions.
    + **:** are the type of data (C coding).
  This is a read only data.
+ **block.inptr :** a list of size that enclosed typed matrices for
  regular input ports. Each element correspond to only one regular input
  port. Then i-th matrix of the block.inptr list will have the
  dimensions [ , ] and the type . The data type that can be provided by
  regular input ports are :

    + **1:** matrix of real numbers,
    + **2:** matrix of complex numbers,
    + **3:** matrix of int32 numbers,
    + **4:** matrix of int16 numbers,
    + **5:** matrix of int8 numbers,
    + **6:** matrix of uint32 numbers,
    + **7:** matrix of uint16 numbers,
    + **8:** matrix of uint8 numbers.
  This is a read only data.
+ **block.nout :** a scalar that gives the number of regular output
  ports. This is a read only data.
+ **block.outsz :** a vector of size , that gives the dimensions and
  types of the regular output ports.

    + **:** are the first dimensions.
    + **:** are the second dimensions.
    + **:** are the type of data (C coding).
  This is a read only data.
+ **block.outptr :** a list of size that enclosed typed matrices for
  regular output ports. Each element correspond to only one regular
  output port. Then i-th matrix of the block.outptr list will have the
  dimensions [ , ] and the type . The data type that can be provided by
  regular output ports are :

    + **1:** matrix of real numbers,
    + **2:** matrix of complex numbers,
    + **3:** matrix of int32 numbers,
    + **4:** matrix of int16 numbers,
    + **5:** matrix of int8 numbers,
    + **6:** matrix of uint32 numbers,
    + **7:** matrix of uint16 numbers,
    + **8:** matrix of uint8 numbers.
  Values of regular output ports will be saved in the`Cstructure`_ of
  the block only for =6 and =1.






Events
~~~~~~




+ **block.nevprt :** a scalar given the event input port number
  (binary coding) which have activated the block. This is a read only
  data.
+ **block.nevout :** a scalar given the number of output event port of
  the block. This is a read only data.
+ **block.evout :** a vector of size corresponding to the register of
  output event. Values of output event register will be saved in the`C
  structure`_ of the block only for =3.






Arguments
~~~~~~~~~




+ **block.nrpar :** a scalar given the number of real parameters. This
  is a read only data.
+ **block.rpar :** a vector of size corresponding to the real
  parameter register. This is a read only data.
+ **block.nipar :** a scalar given the number of integer parameters.
  This is a read only data.
+ **block.ipar :** a vector of size correspondig to the integer
  parameter register. This is a read only data.
+ **block.nopar :** a scalar given the number of object parameters.
  This is a read only data.
+ **block.oparsz :** a matrix of size , that respectively gives the
  first and the second dimension of object parameters. This is a read
  only data.
+ **block.opartyp :** a vector of size given the C coding type of
  data. This is a read only data.
+ **block.opar :** a list of size given the values of object
  parameters. Each element of can be either a typed matrix or a list.
  Only matrix that encloses numbers of type real, complex, int32, int16,
  int8, uint32, uint16 and uint8 are allowed, all other types of scilab
  data will be enclosed in a sub-list. This is a read only data.






States
~~~~~~




+ **block.nz :** a scalar given the number of discrete state for the
  block. This is a read only data.
+ **block.z :** a vector of size corresponding to the discrete state
  register. Values of discrete state register will be saved in the`C
  structure`_ of the block only for =4, =6, =2 and =5.
+ **block.noz :** a scalar that gives the number of discrete object
  state. This is a read only data.
+ **block.ozsz :** a matrix of size , that respectively gives the
  first and the second dimension of discrete object state. This is a
  read only data.
+ **block.oztyp :** a vector of size given the C coding type of data.
+ **block.oz :** a list of size given the values of discrete object
  states. Each element of can be either a typed matrix or a list. Only
  matrix that encloses numbers of type real, complex, int32, int16,
  int8, uint32, uint16 and uint8 are allowed, all other types of scilab
  data will be enclosed in a sub-list. Values of discrete object state
  will be saved in the`C structure`_ of the block only for =4, =6, =2
  and =5.
+ **block.nx :** a scalar given the number of continuous state for the
  block. This is a read only data.
+ **block.x :** a vector of size given the value of the continuous
  state register. Values of the continuous state register will be saved
  in the`C structure`_ of the block only for =4, =6 and =2.
+ **block.xd :** a vector of size given the value of the derivative
  continuous state register. Values of the derivative continuous state
  register will be saved in the`C structure`_ of the block only for =4,
  =6, =0 and =2.
+ **block.res :** a vector of size corresponding to the Differential
  Algebraic Equation (DAE) residual. Values of that register will be
  saved in the`C structure`_ of the block only for =0, and =10.






Zero crossing surfaces and modes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~




+ **block.ng :** a scalar given the number of zero crossing surfaces
  for the block. This is a read only data.
+ **block.g :** a vector of size corresponding to the zero crossing
  register. Values of that register will be saved in the`C structure`_
  of the block only for =9.
+ **block.nmode :** a scalar given the number of mode for the block.
  This is a read only data.
+ **block.mode :** a vector of size that corresponds to the mode
  register. Values of that register will be saved in the`C structure`_
  of the block only for =9, with =1.






Miscallaneous
~~~~~~~~~~~~~




+ **block.type :** a scalar given the type of the block. This is a
  read only data.
+ **block.label :** a string given the label of the block. This is a
  read only data.




.. _Zero crossing surfaces and modes: sci_struct.html#Zerocrossingsurfacesandmodes_sci_struct
.. _Parameters: sci_struct.html#Parameters_sci_struct
.. _C structure: C_struct.html
.. _Inputs/outputs: sci_struct.html#Inputsoutputs_sci_struct
.. _Miscallaneous: sci_struct.html#Miscallaneous_sci_struct
.. _sci_struct - Scicos block structure of a scilab computational function: sci_struct.html
.. _Description: sci_struct.html#Description_sci_struct
.. _xcos: xcos.html
.. _Module: sci_struct.html#Module_sci_struct
.. _Events: sci_struct.html#Events_sci_struct
.. _States: sci_struct.html#States_sci_struct


