


MBLOCK
======

Modelica generic block



Block Screenshot
~~~~~~~~~~~~~~~~





Contents
~~~~~~~~


+ `Modelica generic block`_
  +

    + `Palette`_
    + `Description`_
    + `Dialog box`_
    + `Default properties`_
    + `Interfacing function`_





Palette
~~~~~~~


+ `User Defined function palette`_




Description
~~~~~~~~~~~

The block "MBlock" provides an easy way to build a xcos block whose
behavior is specified by a Modelica program. Using this block, the
user will be able to write and compile Modelica programs in xcos
without creating any interfacing function. The associated Modelica
program of this block can be either given in a file or written in the
window opened by the block. In order to link this block to other xcos
blocks that may be other Modelica blocks, the types of block ports' as
well as their associated variables should be specified.





Dialog box
~~~~~~~~~~






+ **Input variables** In this filed, the ports connected to the left
  hand side of the block are defined. If the port is an explicit port,
  it will be an input port. In this case, the variable should be
  declared in the Modelica program as Real. If the port is an implicit
  port, the variable desinating this port should be a "connector".
  Remind that for implicit port, the notion of input and output does not
  exist and specifying an implicit variable in this filed is just
  placing the port at the left hend side of the block.
+ **Input variables types** In this filed, the type of ports are
  specified, i.e., 'I' for implicit ports and 'E' for explicit ports.
  The size of the vector of "input variables" and the vector of
  "input_vector_type" should be equal.
+ **Output variables** Similar to the input variables vector, the
  explicit output variables and implicit variables which are displayed
  at the right hand side of the block are specified in this filed.
+ **Output variables types** The type of variables given in the Output
  variable vector are specified, i.e., 'I' for implicit ports and 'E'
  for explicit ports.
+ **Parameters in Modelica** The values of parameters declared in the
  Modelica program can be overloaded. To overload a parameter value, the
  name of parameters are given in this field and their corresponding
  values are given in the "parameter values" fields that are displayed
  in the second dialog box.
+ **Parameters properties** The type of the Modelica parameters. For
  that time being, one can parametrize three types of Modelica variable
  :

    + **0:** the parameter is set to be a **Modelica parameter** variable
      (scalar or vector).
    + **1:** the parameter is set to be an **initial condition of Modelica
      state** variable (scalar or vector).
    + **2:** the parameter is set to be an **initial condition of Modelica
      state** variable with the property **fixed=true** (scalar or vector).

+ **Function name** The Modelica class name is specified in this
  filed. If the Modelica class name is specified without any path or
  extension, an interactive window is opened and the user can write or
  edit the Modelica program. This window is opened each time the user
  clicks on the block. If the Modelica class name is specified with path
  and '.mo' extension, the compiler looks for the file and if it is
  found, the file will be compiled, otherwise a window is opened and the
  user can write the Modelica program. This Modelica file will be saved
  with the given filename in the specified path. The next time, only
  input/output characteristics of the block can be changed, and the
  Modelica file should be edited with another text editor.
+ **Parameter values** The value of Modelica parameters are given in
  the "Set parameters values" dialog box. These values that can be
  scalar or vector, can also be defined in the xcos context. In order to
  access the xcos context, click on the "Diagram" menu then click on the
  "Context" submenu. For instance, here is an example of overloading of
  parameters in a Modelica program. Parameters vector =
  ['Speed';'Position';"Length"] Parameters properties vector = [0;2;1]
  Speed value = [12.0] Position value = [0.0 ; 0.1 ; POS] Length value =
  [13.0 ; 12.1]




Default properties
~~~~~~~~~~~~~~~~~~


+ **always active:** yes
+ **direct-feedthrough:** no
+ **zero-crossing:** no
+ **mode:** no
+ **regular inputs:** **- port 1 : size [1,1] / type 1**
+ **regular outputs:** **- port 1 : size [1,1] / type 1** **- port 2 :
  size [1,1] / type 1**
+ **number/sizes of activation inputs:** 0
+ **number/sizes of activation outputs:** 0
+ **continuous-time state:** no
+ **discrete-time state:** no
+ **object discrete-time state:** no
+ **name of computational function:** generic




Interfacing function
~~~~~~~~~~~~~~~~~~~~


+ SCI/modules/scicos_blocks/macros/Misc/MBLOCK.sci


.. _Interfacing function: MBLOCK.html#Interfacingfunction_MBLOCK
.. _User Defined function palette: Userdefinedfunctions_pal.html
.. _Palette: MBLOCK.html#Palette_MBLOCK
.. _Dialog box: MBLOCK.html#Dialogbox_MBLOCK
.. _Default properties: MBLOCK.html#Defaultproperties_MBLOCK
.. _Description: MBLOCK.html#Description_MBLOCK
.. _Modelica generic block: MBLOCK.html


