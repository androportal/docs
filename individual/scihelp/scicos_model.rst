


scicos_model
============

Define a model structure



Module
~~~~~~


+ `xcos`_




model
~~~~~

Scilab list that contains the features of the block used for the
compilation.





Size : 23.

Type : Scilab list.




+ **sim** A list containing two elements. The first element is a
  string containing the name of the computational function (C,
  Fortran,or Scilab). The second element is an integer specifying the
  type of the computational function. Currently type 4 and 5 are used,
  but older types continue to work to ensure backward compatibility. For
  some older case, sim can be a single string and that means that the
  type is supposed to be 0. Size : 2. Type : Scilab list.
+ **in** A vector specifying the number and size of the first
  dimension of regular input ports indexed from top to bottom of the
  block. If no input port exist in==[]. The size can be negative, equal
  to zero or positive :

    + If a size is less than zero, the compiler will try to find the
      appropriate size.
    + If a size is equal to zero, the compiler will affect this dimension
      by added all positive size found in that vector
    + If a size is greater than zero, then the size is explicitly given.
  Size : number of regular input ports. Type : column vector of integer
  numbers.
+ **in2** A vector specifying the second dimension of regular input
  ports indexed from top to bottom of the block. in with in2 formed then
  the regular input sizes matrix. For compatibility, this dimension can
  stay empty ([]). That means that the dimensions of input ports will be
  in,1 The size can be negative, equal to zero or positive :

    + If a size is less than zero, the compiler will try to find the
      appropriate size.
    + If a size is equal to zero, the compiler will affect this dimension
      by added all positive size found in that vector.
    + If a size is greater than zero, then the size is explicitly given.
  Size : number of regular input ports. Type : column vector of integer
  numbers.
+ **intyp** A vector specifying the types of regular input ports. Its
  sizes is equal to the sizes of in. The types of regular input ports
  can be :

    + 1 real matrix,
    + 2 complex matrix,
    + 3 int32 matrix,
    + 4 int16 matrix,
    + 5 int8 matrix,
    + 6 uint32 matrix,
    + 7 uint16 matrix,
    + 8 uint8 matrix.
  Size : number of regular input ports. Type : column vector of integer
  numbers.
+ **out** A vector specifying the number and size of the first
  dimension of regular output ports indexed from top to bottom of the
  block. If no output port exist out==[]. The size can be negative,
  equal to zero or positive :

    + If a size is less than zero, the compiler will try to find the
      appropriate size.
    + If a size is equal to zero, the compiler will affect this dimension
      by added all positive size found in that vector
    + If a size is greater than zero, then the size is explicitly given.
  Size : number of regular output ports. Type : column vector of integer
  numbers.
+ **out2** A vector specifying the second dimension of regular output
  ports indexed from top to bottom of the block. out with out2 formed
  then the regular output sizes matrix. For compatibility, this
  dimension can stay empty ([]). That means that the dimensions of
  output ports will be out,1 That dimension can be negative, equal to
  zero or positive :

    + If a size is less than zero, the compiler will try to find the
      appropriate size.
    + If a size is equal to zero, the compiler will affect this dimension
      by added all positive size found in that vector.
    + If a size is greater than zero, then the size is explicitly given.
  Size : number of regular output ports. Type : column vector of integer
  numbers.
+ **outtyp** A vector specifying the types of regular output ports.
  Its sizes is equal to the sizes of out. The types of regular output
  ports can be :

    + 1 real matrix,
    + 2 complex matrix,
    + 3 int32 matrix,
    + 4 int16 matrix,
    + 5 int8 matrix,
    + 6 uint32 matrix,
    + 7 uint16 matrix,
    + 8 uint8 matrix.
  Size : number of regular output ports. Type : column vector of integer
  numbers.
+ **evtin** A vector specifying the number and sizes of activation
  inputs. Currently activation ports can be only of size one. If no
  event input port exists evtin must be equal to []. Size : number of
  input event ports. Type : column vector of integer numbers.
+ **evtout** A vector specifying the number and sizes of activation
  outputs. Currently activation ports can be only of size one. If no
  event output port exists evtout must be equal to []. Size : number of
  output event ports. Type : column vector of integer numbers.
+ **state** Vector containing initial values of continuous-time state.
  Must be [] if no continuous state. Size : number of continuous-time
  state. Type : column vector of real numbers.
+ **dstate** Vector containing initial values of discrete-time state.
  Must be [] if no discrete state. Size : number of discrete-time state.
  Type : column vector of real numbers.
+ **odstate** List containing initial values of objects state. Must be
  list() if no objects state. Objects state can be any types of scilab
  variable. In the computational function case of type 4 (C blocks) only
  elements containing matrix of real, complex, int32, int16 ,int8
  ,uint32, uit16 and uint8 will be correctly provided for
  readind/writing. Size : number of objects state. Type : scilab list of
  scilab objects.
+ **rpar** The vector of floating point block parameters. Must be []
  if no floating point parameters. Size : number of real parameters.
  Type : column vector of real numbers.
+ **ipar** The vector of integer block parameters. Must be [] if no
  integer parameters. Size : number of integer parameters. Type : column
  vector of integer numbers.
+ **opar** List of objects block parameters. Must be list() if no
  objects parameters. Objects parameters can be any types of scilab
  variable. In the computational function case of type 4 (C blocks) only
  elements containing matrix of real, complex, int32, int16 ,int8
  ,uint32, uit16 and uint8 will be correctly provided for reading. Size
  : number of objetcs parameters. Type : list of scilab object.
+ **blocktype** Character that can be set to 'c' or 'd' indifferently
  for standard blocks. 'x' is used if we want to force the computational
  function to be called during the simulation phase even if the block
  does not contribute to computation of the state derivative. 'l', 'm'
  and 's' are reserved. Not to be used. Size : 1. Type : Character.
+ **firing** Vector of initial event firing times of size equal to the
  number of activation output ports (see evout). It contains output
  initial event dates (Events generated before any input event arises).
  Negative values stands for no initial event on the corresponding port.
  Size : number of output event ports. Type : column vector of real
  numbers.
+ **dep_ut** Boolean vector [dep_u, dep_t].

    + **dep_u** true if block is always active. (output depends
      continuously of the time)
    + **dep_t** true if block has direct feed-through, i.e., at least one
      of the outputs depends directly (not through the states) on one of the
      inputs. In other words, when the computational function is called with
      flag 1, the value of an input is used to compute the output.
  Size : 2. Type : Boolean vector.
+ **label** String that defines a label. It can be used to identify a
  block in order to access or modify its parameters during simulation.
  Size : 1. Type : string.
+ **nzcross** Number of zero-crossing surfaces. Size : Number of zero-
  crossing surfaces. Type : column vector of integer numbers.
+ **nmode** Length of the mode register. Note that this gives the size
  of the vector mode and not the total number of modes in which a block
  can operate in. Suppose a block has 3 modes and each mode can take two
  values, then the block can have up to 23=8 modes. Size : Number of
  modes. Type : column vector of integer numbers.
+ **equations** Used in case of implicit blocks. Data structure of
  type modelica which contains modelica code description if any. That
  list contains four entries :

    + **model** a string given the name of the file that contains the
      modelica function.
    + **inputs** a colunm vector of strings that contains the names of the
      modelica variables used as inputs.
    + **outputs** a colunm vector of strings that contains the names of
      the modelica variables used as outputs.
    + **parameters** a list with two entries. The first is a vector of
      strings for the name of modelica variable names used as parameters and
      the second entries is a list that contains the value of parameters.
      Names of modelica states can also be informed with parameters. In that
      case a third entry is used to do the difference between parameters and
      states. For i,e : mo.parameters=list(['C','v'],list(C,v),[0,1]) means
      that 'C' is a parameter(0) of value C, and 'v' is a state(1) with
      initial value v.
  Size : 5. Type : scilab list.




File content
~~~~~~~~~~~~


+ SCI/modules/scicos/macros/scicos_scicos/scicos_model.sci


.. _xcos: xcos.html


