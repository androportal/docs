


C_macros
========

Utilities C macros



Contents
~~~~~~~~


+ `C_macros - Utilities C macros`_
  +

    + `Module`_
    + `Description`_
    + `Inputs/outputs`_
    + `Events`_
    + `Parameters`_
    + `States and work`_
    + `Zero crossing surfaces and modes`_





Module
~~~~~~


+ `xcos`_




Description
~~~~~~~~~~~

The following C macros are avialable by including the file in a C
computational function.





Inputs/outputs
~~~~~~~~~~~~~~
**Macro** **Description** GetNin(blk) Get number of regular input
port. GetInPortRows(blk,x) Get number of rows (first dimension) of
regular input port number x. GetInPortCols(blk,x) Get number of
columns (second dimension) of regular input port number x.
GetInPortSize(blk,x,y) Get regular input port size number x. (y=1 for
the first dimension, y=2 for the second dimension) GetInType(blk,x)
Get type of regular input port number x. GetInPortPtrs(blk,x) Get
regular input port pointer of port number x. GetRealInPortPtrs(blk,x)
Get pointer of real part of regular input port number x.
GetImagInPortPtrs(blk,x) Get pointer of imaginary part of regular
input port number x. Getint8InPortPtrs(blk,x) Get pointer of int8
typed regular input port number x. Getint16InPortPtrs(blk,x) Get
pointer of int16 typed regular input port number x.
Getint32InPortPtrs(blk,x) Get pointer of int32 typed regular input
port number x. Getuint8InPortPtrs(blk,x) Get pointer of uint8 typed
regular input port number x. Getuint16InPortPtrs(blk,x) Get pointer of
uint16 typed regular input port number x. Getuint32InPortPtrs(blk,x)
Get pointer of uint32 typed regular input port number x.
GetSizeOfIn(blk,x) Get the sizeof of the regular input port number x.
GetNout(blk) Get number of regular output port. GetOutPortRows(blk,x)
Get number of rows (first dimension) of regular output port number x.
GetOutPortCols(blk,x) Get number of columns (second dimension) of
regular output port number x. GetOutPortSize(blk,x,y) Get regular
output port size number x. (y=1 for the first dimension, y=2 for the
second dimension) GetOutType(blk,x) Get type of regular output port
number x. GetOutPortPtrs(blk,x) Get regular output port pointer of
port number x. GetRealOutPortPtrs(blk,x) Get pointer of real part of
regular output port number x. GetImagOutPortPtrs(blk,x) Get pointer of
imaginary part of regular output port number x.
Getint8OutPortPtrs(blk,x) Get pointer of int8 typed regular output
port number x. Getint16OutPortPtrs(blk,x) Get pointer of int16 typed
regular output port number x. Getint32OutPortPtrs(blk,x) Get pointer
of int32 typed regular output port number x.
Getuint8OutPortPtrs(blk,x) Get pointer of uint8 typed regular output
port number x. Getuint16OutPortPtrs(blk,x) Get pointer of uint16 typed
regular output port number x. Getuint32OutPortPtrs(blk,x) Get pointer
of uint32 typed regular output port number x. GetSizeOfOut(blk,x) Get
the sizeof of the regular output port number x.




Events
~~~~~~


**Macro** **Description** GetNevIn(blk) Get the input event number.
GetNevOut(blk) Get number of event output port. GetNevOutPtrs(blk) Get
pointer of event output register.




Arguments
~~~~~~~~~


**Macro** **Description** GetNipar(blk) Get number of integer
parameters. GetIparPtrs(blk) Get pointer of the integer parameters
register GetNrpar(blk) Get number of real parameters. GetRparPtrs(blk)
Get pointer of the real parameters register. GetNopar(blk) Get number
of object parameters. GetOparType(blk,x) Get type of object parameters
number x. GetOparSize(blk,x,y) Get size of object parameters number x.
(y=1 for the first dimension, y=2 for the second dimension)
GetOparPtrs(blk,x) Get pointer of object parameters number x.
GetRealOparPtrs(blk,x) Get pointer of real object parameters number x.
GetImagOparPtrs(blk,x) Get pointer of imaginary part of object
parameters number x. Getint8OparPtrs(blk,x) Get pointer of int8 typed
object parameters number x. Getint16OparPtrs(blk,x) Get pointer of
int16 typed object parameters number x. Getint32OparPtrs(blk,x) Get
pointer of int32 typed object parameters number x.
Getuint8OparPtrs(blk,x) Get pointer of uint8 typed object parameters
number x. Getuint16OparPtrs(blk,x) Get pointer of uint16 typed object
parameters number x. Getuint32OparPtrs(blk,x) Get pointer of uint32
typed object parameters number x. GetSizeOfOpar(blk,x) Get the sizeof
of the object parameters number x.




States and work
~~~~~~~~~~~~~~~


**Macro** **Description** GetNstate(blk) Get number of continuous
state. GetState(blk) Get pointer of the continuous state register.
GetDstate(blk) Get number of discrete state. GetNdstate(blk) Get
pointer of the discrete state register. GetNoz(blk) Get number of
object state. GetOzType(blk,x) Get type of object state number x.
GetOzSize(blk,x,y) Get size of object state number x. (y=1 for the
first dimension, y=2 for the second dimension) GetOzPtrs(blk,x) Get
pointer of object state number x. GetRealOzPtrs(blk,x) Get pointer of
real object state number x. GetImagOzPtrs(blk,x) Get pointer of
imaginary part of object state number x. Getint8OzPtrs(blk,x) Get
pointer of int8 typed object state number x. Getint16OzPtrs(blk,x) Get
pointer of int16 typed object state number x. Getint32OzPtrs(blk,x)
Get pointer of int32 typed object state number x.
Getuint8OzPtrs(blk,x) Get pointer of uint8 typed object state number
x. Getuint16OzPtrs(blk,x) Get pointer of uint16 typed object state
number x. Getuint32OzPtrs(blk,x) Get pointer of uint32 typed object
state number x. GetSizeOfOz(blk,x) Get the sizeof of the object state
number x. GetWorkPtrs(blk)(blk) Get the pointer of the Work array.




Zero crossing surfaces and modes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


**Macro** **Description** GetNg(blk) Get number of zero crossing
surface. GetGPtrs(blk) Get pointer of the zero crossing register.
GetNmode(blk) Get number of modes. GetModePtrs(blk) Get pointer of the
mode register.
.. _Parameters: C_macros.html#Parameters_C_macros
.. _Inputs/outputs: C_macros.html#Inputsoutputs_C_macros
.. _Module: C_macros.html#Module_C_macros
.. _Zero crossing surfaces and modes: C_macros.html#Zerocrossingsurfacesandmodes_C_macros
.. _States and work: C_macros.html#Statesandwork_C_macros
.. _Events: C_macros.html#Events_C_macros
.. _C_macros - Utilities C macros: C_macros.html
.. _xcos: xcos.html
.. _Description: C_macros.html#Description_C_macros


