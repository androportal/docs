


C_struct
========

C Block structure of a computational function



Description
~~~~~~~~~~~


::






Contents
~~~~~~~~


+ `C_struct - C Block structure of a computational function`_
  +

    + `Module`_
    + `Description`_
    + `Inputs/outputs`_
    + `Events`_
    + `Parameters`_
    + `States and work`_
    + `Zero crossing surfaces and modes`_
    + `Miscallaneous`_





Module
~~~~~~


+ `xcos`_




Description
~~~~~~~~~~~

The C structure of a Scicos block defines all the fields to handle
data provided by the simulator such inputs/outputs, parameters,
states, ...

That structure of type `scicos_block` is defined in the file
scicos_block4.h, and user must include that header in each
computational functions in the form :



The fields, that can be either C pointers or directly data, are then
accessible via the `*block` structure :



This access is a approach and most of users should prefer the approach
for facilities purpose.

In the current version of Scicos, the `scicos->block` structure is
defined :







Inputs/outputs
~~~~~~~~~~~~~~




+ **block->nin :** Integer that gives the number of regular input
  ports of the block. One can't override the index when reading sizes of
  input ports in the array and the index when reading data in the array
  with a C computational function. The number of regular input ports can
  also be got by the use of the C macros .
+ **block->insz :** An array of integers of size that respectively
  gives the first dimensions, the second dimensions and the type of data
  driven by regular input ports. Note that this array of size differs
  from the array and to provide full compatibility with blocks that only
  use a single dimension. Suppose that you have a block with three
  inputs : the first is an int32 matrix of size 3,2, the second a single
  complex number (matrix of size 1,1) and the last a real matrix of size
  4,1. In the`scicos_model`_ of such a block, the inputs will be defined
  :

::

    model.in    = [3;1;4] 
    
    model.in2   = [2;1;1] 
    
    model.intyp = [2;1;3]

  and the corresponding

::

    block->insz

  field at C computational function level will be coded as : Do the
  difference here in the type numbers defined at the **Scilab level**
  (2,1,3) and the type numbers defined at the **C level** (84,11,10).
  The following table gives the correspondance for all Scicos type:
  **Scilab Type** **Scilab Number** **C Type** **C Number** real 1
  double 10 complex 2 double 11 int32 3 long 84 int16 4 short 82 int8 5
  char 81 uint32 6 unsigned long 814 uint16 7 unsigned short 812 uint8 8
  unsigned char 811
+ **block->inptr :** An array of pointers of size nin,1 that allow to
  directly acces to the data contained in the regular input matrices.
  Suppose the previous example (block with three inputs : an int32
  matrix of size [3,2], a complex scalar and a real matrix of size
  [4,1]). contains three pointers, and should be viewed as arrays
  contained the data for the int32, the real and the complex matrices :
  For i.e., to directly access to the data, the user can use theses
  instructions :

::

    #include "scicos_block4.h"
    ...
    
    SCSINT32_COP *ptr_i;
    
    SCSCOMPLEX_COP *ptr_dc;
    
    SCSREAL_COP *ptr_d;
    
    `int`_ n1,m1;
    
    SCSINT32_COP cumsum_i=0;
    
    `int`_ i;
    ...
    
    void mycomputfunc(scicos_block *block,`int`_ flag) 
    {
    ...
    /*`get`_ the ptrs of the first int32 regular input port*/
    
    ptr_i = (SCSINT32_COP *) block->inptr[0];
    /*`get`_ the ptrs of the second complex regular input port*/
    
    ptr_dc = (SCSCOMPLEX_COP *) block->inptr[1];
    /*`get`_ the ptrs of the third real regular input port*/
    
    ptr_d = (SCSREAL_COP *) block->inptr[2];
    ...
    /*`get`_ the dimension of the first int32 regular input port*/
    
    n1=block->insz[0];
    
    m1=block->insz[3];
    ...
    /*compute the `cumsum`_ of the input int32 matrix*/
    
    for(i=0;i<n1*m1;i++) {
    
    cumsum_i += ptr_i[i];
    }
    ...
    }

  One can also use the set of C macros :

::

    GetInPortPtrs(blk,x)

  ,

::

    GetRealInPortPtrs(block,x)

  ,

::

    GetImagInPortPtrs(block,x)

  ,

::

    Getint8InPortPtrs(block,x)

  ,

::

    Getint16InPortPtrs(block,x)

  ,

::

    Getint32InPortPtrs(block,x)

  ,

::

    Getuint8InPortPtrs(block,x)

  ,

::

    Getuint16InPortPtrs(block,x)

  ,

::

    Getuint32InPortPtrs(block,x)

  to have the appropriate pointer of the data to handle and

::

    GetNin(block)

  ,

::

    GetInPortRows(block,x)

  ,

::

    GetInPortCols(block,x)

  ,

::

    GetInPortSize(block,x,y)

  ,

::

    GetInType(block,x)

  ,

::

    GetSizeOfIn(block,x)

  to handle number, dimensions and type of regular input ports. ( **x is
  numbered from 1 to nin and y numbered from 1 to 2**). For the previous
  example that gives :

::

    #include "scicos_block4.h"
    ...
    
    SCSINT32_COP *ptr_i;
    
    SCSCOMPLEX_COP *ptr_dc;
    
    SCSREAL_COP *ptr_d;
    
    `int`_ n1,m1;
    
    SCSINT32_COP cumsum_i=0;
    
    `int`_ i;
    ...
    
    void mycomputfunc(scicos_block *block,`int`_ flag)
    {
    ...
    /*`get`_ the ptrs of the first int32 regular input port*/
    
    ptr_i = Getint32InPortPtrs(block,1);
    /*`get`_ the ptrs of the second complex regular input port*/
    
    ptr_dc = GetRealInPortPtrs(block,2);
    /*`get`_ the ptrs of the third real regular input port*/
    
    ptr_d = GetRealInPortPtrs(block,3);
    ...
    /*`get`_ the dimension of the first int32 regular input port*/
    
    n1=GetInPortRows(block,1);
    
    m1=GetInPortCols(block,1);
    ...
    }

  Finally note that the regular input port registers are only accessible
  for reading.
+ **block->nout :** Integer that gives the number of regular output
  ports of the block. One can't override the index when reading sizes of
  output ports in the array and the index when reading data in the array
  with a C computational function. The number of regular output ports
  can also be got by the use of the C macros .
+ **block->outsz :** An array of integers of size that respectively
  gives the first dimensions, the second dimensions and the type of data
  driven by regular output ports. Note that this array of size differs
  from the array and to provide full compatibility with blocks that only
  use a single dimension. Suppose that you have a block with two outputs
  : the first is an int32 matrix of size 3,2, the second a single
  complex number (matrix of size 1,1) and the last a real matrix of size
  4,1. In the`scicos_model`_ of such a block, the outputs will be
  defined :

::

    model.out   = [3;1;4] 
    
    model.out2   = [2;1;1] 
    
    model.outtyp = [2;1;3]

  and the corresponding

::

    block->outsz

  field at C computational function level will be coded as : Do the
  difference here in the type numbers defined at the **Scilab level**
  (2,1,3) and the type numbers defined at the **C level** (84,11,10) and
  please report to the previous table to have the correspondence for all
  Scicos type.
+ **block->outptr :** An array of pointers of size nout,1 that allow
  to directly acces to the data contained in the regular output
  matrices. Suppose the previous example (block with three outputs : an
  int32 matrix of size [3,2], a complex scalar and a real matrix of size
  [4,1]). contains three pointers, and should be viewed as arrays
  contained the data for the int32, the real and the complex matrices :
  For i.e., to directly access to the data, the user can use theses
  instructions :

::

    #include "scicos_block4.h"
    ...
    
    SCSINT32_COP *ptr_i;
    
    SCSCOMPLEX_COP *ptr_dc;
    
    SCSREAL_COP *ptr_d;
    
    `int`_ n1,m1;
    
    SCSINT32_COP cumsum_i=0;
    
    `int`_ i;
    ...
    
    void mycomputfunc(scicos_block *block,`int`_ flag)
    {
    /*`get`_ the ptrs of the first int32 regular output port*/
    
    ptr_i = (SCSINT32_COP *) block->outptr[0];
    /*`get`_ the ptrs of the second complex regular output port*/
    
    ptr_dc = (SCSCOMPLEX_COP *) block->outptr[1];
    /*`get`_ the ptrs of the third real regular output port*/
    
    ptr_d = (SCSREAL_COP *) block->outptr[2];
    ...
    /*`get`_ the dimension of the first int32 regular output port*/
    
    n1=block->outsz[0];
    
    m1=block->outsz[3];
    ...
    /*compute the `cumsum`_ of the output int32 matrix*/
    
    for(i=0;i<n1*m1;i++) {
    
    cumsum_i += ptr_i[i];
    }
    ...
    }

  One can also use the set of C macros :

::

    GetOutPortPtrs(block,x)

  ,

::

    GetRealOutPortPtrs(block,x)

  ,

::

    GetImagOutPortPtrs(block,x)

  ,

::

    Getint8OutPortPtrs(block,x)

  ,

::

    Getint16OutPortPtrs(block,x)

  ,

::

    Getint32OutPortPtrs(block,x)

  ,

::

    Getuint8OutPortPtrs(block,x)

  ,

::

    Getuint16OutPortPtrs(block,x)

  ,

::

    Getuint32OutPortPtrs(block,x)

  to have the appropriate pointer of the data to handle and

::

    GetNout(block)

  ,

::

    GetOutPortRows(block,x)

  ,

::

    GetOutPortCols(block,x)

  ,

::

    GetOutPortSize(block,x,y)

  ,

::

    GetOutType(block,x)

  ,

::

    GetSizeOfOut(block,x)

  to handle number, dimensions and type of regular output ports. ( **x
  is numbered from 1 to nout and y is numbered from 1 to 2**). For the
  previous example that gives :

::

    #include "scicos_block4.h"
    ...
    
    SCSINT32_COP *ptr_i;
    
    SCSCOMPLEX_COP *ptr_dc;
    
    SCSREAL_COP *ptr_d;
    
    `int`_ n1,m1;
    
    SCSINT32_COP cumsum_i=0;
    
    `int`_ i;
    ...
    
    void mycomputfunc(scicos_block *block,`int`_ flag)
    {
    ...
    /*`get`_ the ptrs of the first int32 regular output port*/
    
    ptr_i = GetOutPortPtrs(block,1);
    /*`get`_ the ptrs of the second complex regular output port*/
    
    ptr_dc = GetRealOutPortPtrs(block,2);
    /*`get`_ the ptrs of the third real regular output port*/
    
    ptr_d = GetRealOutPortPtrs(block,3);
    ...
    /*`get`_ the dimension of the first int32 regular output port*/
    
    n1=GetOutPortRows(block,1);
    
    m1=GetOutPortCols(block,1);
    ...
    }

  Finally note that the regular output port registers must be only
  written for

::

    flag

  =1.






Events
~~~~~~




+ **block->nevprt :** Integer that gives the event input port number
  by which the block has been activated. This number is a binary coding.
  For i.e, if block has two event inputs ports, can take the value 1 if
  the block has been called by its first event input port, the value 2
  if it has been called by the second event input port and 3 if it is
  called by the same event on both input port 1 and 2. Note that can be
  -1 if the block is internally called. One can also retrieve this
  number by using the C macros .
+ **block->nevout :** Integer that gives the number of event output
  ports of the block (also called the length of the output event
  register). One can't override the index when setting value of events
  in the output event register . The number of event output ports can
  also be got by the use of the C macro .
+ **block->evout :** Array of double of size nevout,1 corresponding to
  the output event register. That register is used to program date of
  events during the simulation. When setting values in that array, you
  must understand that you give a delay relative to the current time of
  simulator : where is the date of the programmed event, is the current
  time in the simulator and the value that must be informed in the
  output event register. For i.e, suppose that you want generate an
  event with the first event output port, 1ms after each calls of the
  block, then you'll use :

::

    #include "scicos_block4.h"
    ...
    
    void mycomputfunc(scicos_block *block,`int`_ flag)
    {
    ...
    
    if (flag==3) { 
    
    block->evout[0]=0.001;
    }
    ...
    }

  Note that every events generated from output event register will be
  asynchronous with event coming from event input port (even if you set

::

    block->evout[x]=0

  ). The event output register must be only written for

::

    flag

  =3.






Arguments
~~~~~~~~~




+ **block->nrpar :** Integer that gives the length of the real
  parameter register. One can't override the index when reading value of
  real parameters in the register . The total number of real parameters
  can also be got by the use of the C macro .
+ **block->rpar :** Array of double of size nrpar,1 corresponding to
  the real parameter register. That register is used to pass real
  parameters coming from the scilab/scicos environment to your block
  model. The C type of that array is (or C scicos type ). Suppose that
  you have defined the following real parameters in the`scicos_model`_
  of a block :

::

    model.rpar   = [%pi;%pi/2;%pi/4]

  you can retrieve the previous data in the C computational function
  with :

::

    #include "scicos_block4.h"
    ...
    
    `double`_ PI;
    
    `double`_ PI_2;
    
    `double`_ PI_4;
    ...
    
    void mycomputfunc(scicos_block *block,`int`_ flag)
    {
    ...
    /*`get`_ the first value of the real param register*/
    
    PI = block->rpar[0];
    /*`get`_ the second value of the real param register*/
    
    PI_2 = block->rpar[1];
    /*`get`_ the third value of the real param register*/
    
    PI_4 = block->rpar[2];
    ...
    }

  You can also use the C macro

::

    GetRparPtrs(block)

  to get the pointer of the real parameter register. For i.e., if we
  define the following `scicos_model`_ in an interfacing function of a
  scicos block :

::

    A = [1.3 ; 4.5 ; 7.9 ; 9.8];
    
    B = [0.1 ; 0.98]; 
    
    model.rpar   = [A;B]

  in the corresponding C computational function of that block, we'll use
  :

::

    #include "scicos_block4.h"
    ...
    
    `double`_ *rpar;
    
    `double`_ *A; 
    
    `double`_ *B; 
    ...
    
    void mycomputfunc(scicos_block *block,`int`_ flag)
    {
    ...
    /*`get`_ ptrs of the real param register*/
    
    rpar = GetRparPtrs(block); 
    /*`get`_ the A ptrs array*/
    
    A = rpar;
    /*`get`_ the B ptrs array*/
    
    B = &rpar[4];
    /*`or`_ B = rpar + 4;*/
    ...
    }

  Note that real parameters register is only accessible for reading.
+ **block->nipar :** Integer that gives the length of the integer
  parameter register. One can't override the index when reading value of
  integer parameters in the register . The total number of integer
  parameters can also be got by the use of the C macro .
+ **block->ipar :** Array of int of size nipar,1 corresponding to the
  integer parameter register. That register is used to pass integer
  parameters coming from the scilab/scicos environment to your block
  model. The C type of that array is (or C scicos type ). Suppose that
  you have defined the following integer parameters in
  the`scicos_model`_ of a block :

::

    model.ipar   = [(1:3)';5]

  you can retrieve the previous data in the C computational function
  with :

::

    #include "scicos_block4.h"
    ...
    
    `int`_ one;
    
    `int`_ two;
    
    `int`_ three;
    
    `int`_ five;
    ...
    
    void mycomputfunc(scicos_block *block,`int`_ flag)
    {
    ...
    /*`get`_ the first value of the integer param register*/
    
    one = block->ipar[0]; 
    /*`get`_ the second value of the integer param register*/
    
    two = block->ipar[1]; 
    /*`get`_ the third value of the integer param register*/
    
    three = block->ipar[2]; 
    /*`get`_ the fourth value of the integer param register*/
    
    five = block->ipar[3]; 
    ...
    }

  You can also use the C macro

::

    GetIparPtrs(block)

  to get the pointer of the real parameter register. Most of time in the
  scicos C block libraries, the integer register is used to parametrize
  the length of real parameters. For i.e. if you define the following
  `scicos_model`_ in a block :

::

    // set a random size for the first real parameters 
    
    A_sz = `int`_(`rand`_(10)*10); 
    // set a random size for the second real parameters 
    
    B_sz = `int`_(`rand`_(10)*10); 
    // set the first real parameters 
    
    A = `rand`_(A_sz,1,``uniform''); 
    // set the second real parameters 
    
    B = `rand`_(B_sz,1,``normal''); 
    // set ipar 
    
    model.ipar = [A_sz;B_sz] 
    // set rpar (length of A_sz+B_sz) 
    
    model.rpar = [A;B]

  the array of real parameters (parametrized by ipar) can be retrieved
  in the correspondig C computational function with :

::

    #include "scicos_block4.h"
    ...
    
    `int`_ A_sz; 
    
    `int`_ B_sz; 
    
    `double`_ *rpar; 
    
    `double`_ *A; 
    
    `double`_ *B; 
    
    `double`_ cumsum;
    
    `int`_ i;Â 
    ...
    
    void mycomputfunc(scicos_block *block,`int`_ flag)
    {
    ...
    /*`get`_ ptrs of the real param register*/
    
    rpar = GetRparPtrs(block); 
    /*`get`_ size of the first real param register*/
    
    A_sz = block->ipar[0]; 
    /*`get`_ size of the second real param register*/
    
    B_sz = block->ipar[1]; 
    /*`get`_ the A ptrs array*/
    
    A = rpar; 
    /*`get`_ the B ptrs array*/
    
    B = &rpar[A_sz]; 
    ...
    /*compute the `cumsum`_ of the first real parameter array*/
    
    `cumsum`_ = 0;
    
    for(i=0;i<A_sz;i++) {
    
    `cumsum`_ += A[i];
    }
    ...
    /*compute the `cumsum`_ of the second real parameter array*/
    
    `cumsum`_ = 0;
    
    for(i=0;i<B_sz;i++) {
    
    `cumsum`_ += B[i]; 
    }

  Note that integer parameters register is only accessible for reading.
+ **block->nopar :** Integer that gives the number of the object
  parameters. One can't override the index when accessing data in the
  arrays , and in a C computational function. This value is also
  accessible via the C macro .
+ **block->oparsz :** An array of integer of size nopar,2 that
  contains the dimensions of matrices of object parameters. The first
  column is for the first dimension and the second for the second
  dimension. For i.e. if we want the dimensions of the last object
  parameters, we'll use the instructions :

::

    #include "scicos_block4.h"
    ...
    
    `int`_ nopar;
    
    `int`_ n,m;
    ...
    
    void mycomputfunc(scicos_block *block,`int`_ flag)
    {
    ...
    /*`get`_ the number of object parameter*/
    
    nopar=block>nopar;
    ...
    /*`get`_ number of row of the last object parameter*/
    
    n=block>oparsz[nopar-1];
    /*`get`_ number of column of the last object parameter*/
    
    m=block>oparsz[2*nopar-1];
    ...
    }

  The dimensions of object parameters can be get with the following C
  macro :

::

    GetOparSize(block,x,1); /*`get`_ first dimension of opar*/ 
    
    GetOparSize(block,x,2); /*`get`_ second dimension of opar*/

  with

::

    x

  an integer that gives the index of the object parameter, **numbered
  from 1 to nopar** .
+ **block->opartyp :** An array of integer of size nopar,1 that
  contains the type of matrices of object parameters. The following
  table gives the correspondence for scicos type expressed in Scilab
  number, in C number and also corresponding C pointers and C macros
  used for : The type of object parameter can also be got by the use of
  the C macro

::

    GetOparType(block,x)

  . For i.e, if we want the C number type of the first object parameter,
  we'll use the following C instructions:

::

    #include "scicos_block4.h"
    ...
    
    `int`_ opartyp_1;
    ...
    
    void mycomputfunc(scicos_block *block,`int`_ flag)
    {
    ...
    /*`get`_ the number type of the first object parameter*/
    
    opartyp_1 = GetOparType(block,1);
    ...
    }


+ **block->oparptr :** An array of pointers of size nopar,1 that allow
  to directly acces to the data contained in the object parameter.
  Suppose that you have defined in the editor a block with the following
  **opar** field in`scicos_model`_ :

::

    model.opar=`list`_(`int32`_([1,2;3,4]),[1+%i %i 0.5]);

  Then we have two object parameters, one is an 32-bit integer matrix
  with two rows and two columns and the second is a vector of complex
  numbers that can be understand as a matrix of size 1,3. At the C
  computational function level, the instructions

::

    block->oparsz[0]

  ,

::

    block->oparsz[1]

  ,Â

::

    block->oparsz[2]

  ,

::

    block->oparsz[3]

  will respectively return the values 2,1,2,3 and the instructions

::

    block->opartyp[0]

  ,

::

    block->opartyp[1]

  the values 11 and 84.

::

    block->oparptr

  will contain then two pointers, and should be viewed as arrays
  contained data of object parameter as shown in the following figure :
  For i.e., to directly access to the data, the user can use theses
  instructions :

::

    #include "scicos_block4.h"
    ...
    
    SCSINT32_COP *ptr_i;
    
    SCSINT32_COP cumsum_i;
    
    SCSCOMPLEX_COP *ptr_d;
    
    SCSREAL_COP cumsum_d;
    ...
    
    void mycomputfunc(scicos_block *block,`int`_ flag)
    {
    ...
    /*`get`_ the ptrs of an int32 object parameter*/
    
    ptr_i = (SCSINT32_COP *) block->oparptr[0];
    /*`get`_ the ptrs of a double object parameter*/
    
    ptr_d = (SCSCOMPLEX_COP *) block->oparptr[1];
    ...
    /*compute the `cumsum`_ of the int32 matrix*/
    
    cumsum_i = ptr_i[0]+ptr_i[1]+ptr_i[2]+ptr_i[3];
    ...
    /*compute the `cumsum`_ of the real part of the complex matrix*/
    
    cumsum_d = ptr_d[0]+ptr_d[1]+ptr_d[2];
    ...
    }

  One can also use the set of C macros :

::

    GetRealOparPtrs(block,x)

  ,

::

    GetImagOparPtrs(block,x)

  ,

::

    Getint8OparPtrs(block,x)

  ,

::

    Getint16OparPtrs(block,x)

  ,

::

    Getint32OparPtrs(block,x)

  ,

::

    Getuint8OparPtrs(block,x)

  ,

::

    Getuint16OparPtrs(block,x)

  ,

::

    Getuint32OparPtrs(block,x)

  to have the appropriate pointer of the data to handle ( **x is
  numbered from 1 to nopar**). For the previous example that gives :

::

    #include "scicos_block4.h"
    ...
    
    SCSINT32_COP *ptr_i;
    
    SCSREAL_COP *ptr_dr;
    
    SCSREAL_COP *ptr_di;
    ...
    
    void mycomputfunc(scicos_block *block,`int`_ flag)
    {
    ...
    /*`get`_ the ptrs of an int32 object parameter*/
    
    ptr_i = Getint32OparPtrs(block,1);
    /*`get`_ the ptrs of a double object parameter*/
    
    ptr_dr = GetRealOparPtrs(block,2);
    
    ptr_di = GetImagOparPtrs(block,2);
    ...
    }

  Note that object parameters register is only accessible for reading.






States and work
~~~~~~~~~~~~~~~




+ **block->nx :** Integer that gives the length of the continus state
  register. One can't override the index when reading or writing data in
  the array , or with a C computational function.
+ **block->x :** Array of double of size nx,1 corresponding to the
  continuous state register. That gives the result of the computation of
  the state derivative. A value of a continuous state is readable (for
  i.e the first state) with the C instructions :

::

    #include "scicos_block4.h"
    ...
    
    `double`_ x_1;
    ...
    
    void mycomputfunc(scicos_block *block,`int`_ flag)
    {
    ...
    
    x_1=block->x[0];
    ...
    }

  Note that on

::

    flag

  =4, user can write some initial conditions in that register. The
  pointer of that array can also be retrieve via the C macro

::

    GetState(block)

  .
+ **block->xd :** Array of double of size nx,1 corresponding to the
  derivative of the continuous state register. When systems are
  explicitly given in terms of Ordinary Differential Equations (ODE), it
  can be explicitly expressed or implicitly used in the residual vector
  when systems are expressed in terms of Differantial Algebraic
  Equations (DAE). Both systems must be programmed with . For i.e the
  Lorentz attractor written as an ODE system with three state variables,
  of the form : will be defined :

::

    #include "scicos_block4.h"
    ...
    
    `double`_ *x = block->x;
    
    `double`_ *xd = block->xd;
    ...
    /* define parameters */
    
    `double`_ a = 10;
    
    `double`_ b = 28;
    
    `double`_ c = 8/3;
    ...
    
    void mycomputfunc(scicos_block *block,`int`_ flag)
    {
    ...
    
    if (flag == 0) {
    
    xd[0] = a*(x[1]-x[0]);
    
    xd[1] = x[1]*(b-x[2])-x[1];
    
    xd[2] = x[0]*x[1]-c*x[2];
    }
    ...
    }


+ **block->res :** Array of double of size nx,1 corresponding to
  Differential Algebraic Equation (DAE) residual. It is used to write
  the vector of systems that have the following form : For i.e the
  Lorentz attractor written as a DAE system with three state variables,
  will be defined :

::

    #include "scicos_block4.h"
    ...
    
    `double`_ *x = block->x;
    
    `double`_ *xd = block->xd;
    
    `double`_ *res = block->res;
    ...
    /* define parameters */
    
    `double`_ a = 10;
    
    `double`_ b = 28;
    
    `double`_ c = 8/3;
    ...
    
    void mycomputfunc(scicos_block *block,`int`_ flag)
    {
    ...
    
    if (flag == 0) {
    
    res[0] =  - xd[0] + (a*(x[1]-x[0]));
    
    res[1] =  - xd[1] + (x[0]*(b-x[2])-x[1]);
    
    res[2] =  - xd[2] + (x[0]*x[1]-c*x[2]);
    }
    ...
    }


+ **block->nz :** Integer that gives the length of the discrete state
  register. One can't override the index when reading data in the array
  with a C computational function. This value is also accessible via the
  C macros .
+ **block->z :** Array of double of size nz,1 corresponding to the
  discrete state register. A value of a discrete state is directly
  readable (for i.e the second state) with the C instructions :

::

    #include "scicos_block4.h"
    ...
    
    `double`_ z_2;
    ...
    
    void mycomputfunc(scicos_block *block,`int`_ flag)
    {
    ...
    
    z_2=block->z[1];
    ...
    }

  Note that the state register should be only written for

::

    flag

  =4 and

::

    flag

  =2. The pointer of that array can also be retrieve via the C macro

::

    GetDstate(block)

  .
+ **block->noz :** Integer that gives the number of the discrete
  object states. One can't override the index when accessing data in the
  arrays , and in a C computational function. This value is also
  accessible via the C macro .
+ **block->ozsz :** An array of integer of size noz,2 that contains
  the dimensions of matrices of discrete object states. The first column
  is for the first dimension and the second for the second dimension.
  For i.e. if we want the dimensions of the last object state, we'll use
  the instructions :

::

    #include "scicos_block4.h"
    ...
    
    `int`_ noz;
    
    `int`_ n,m;
    ...
    /*`get`_ the number of object state*/
    
    noz=block>noz;
    ...
    
    void mycomputfunc(scicos_block *block,`int`_ flag)
    {
    ...
    /*`get`_ number of row of the last object state*/
    
    n=block>ozsz[noz-1];
    /*`get`_ number of column of the last object state*/
    
    m=block>ozsz[2*noz-1];
    ...
    }

  The dimensions of object discrete states can be get with the following
  C macro :

::

    GetOzSize(block,x,1); /*`get`_ first dimension of oz*/ 
    
    GetOzSize(block,x,2); /*`get`_ second dimension of oz*/

  with

::

    x

  an integer that gives the index of the discrete object state,
  **numbered from 1 to noz** .
+ **block->oztyp :** An array of integer of size noz,1 that contains
  the type of matrices of discrete object states. The following table
  gives the correspondence table for scicos type expressed in Scilab
  number, in C number and also corresponding C pointers and C macros
  used for : The type of discrete object state can also be got by the
  use of the C macro

::

    GetOzType(block,x)

  . For i.e, if we want the C number type of the first discrete object
  state, we'll use the following C instructions:

::

    #include "scicos_block4.h"
    ...
    
    `int`_ oztyp_1;
    ...
    
    void mycomputfunc(scicos_block *block,`int`_ flag)
    {
    ...
    /*`get`_ the number type of the first object state*/
    
    oztyp_1 = GetOzType(block,1);
    ...
    }


+ **block->ozptr :** An array of pointers of size noz,1 that allow to
  directly acces to the data contained in the discrete object state.
  Suppose that you have defined in the editor a block with the following
  **odstate** field in`scicos_model`_ :

::

    model.odstate=`list`_(`int32`_([1,2;3,4]),[1+%i %i 0.5]);

  Then we have two discrete object states, one is an 32-bit integer
  matrix with two rows and two columns and the second is a vector of
  complex numbers that can be understand as a matrix of size 1,3. At the
  C computational function level, the instructions

::

    block->ozsz[0]

  ,

::

    block->ozsz[1]

  ,Â

::

    block->ozsz[2]

  ,

::

    block->ozsz[3]

  will respectively return the values 2,1,2,3 and the instructions

::

    block->oztyp[0]

  ,

::

    block->oztyp[1]

  the values 11 and 84.

::

    block->ozptr

  will contain then two pointers, and should be viewed as arrays
  contained data of discrete object state as shown in the following
  figure : For i.e., to directly access to the data, the user can use
  theses instructions :

::

    #include "scicos_block4.h"
    ...
    
    SCSINT32_COP *ptr_i;
    
    SCSINT32_COP cumsum_i;
    
    SCSCOMPLEX_COP *ptr_d;
    
    SCSREAL_COP cumsum_d;
    ...
    
    void mycomputfunc(scicos_block *block,`int`_ flag)
    {
    ...
    /*`get`_ the ptrs of an int32 discrete object state*/
    
    ptr_i = (SCSINT32_COP *) block->ozptr[0];
    /*`get`_ the ptrs of a double discrete object state*/
    
    ptr_d = (SCSCOMPLEX_COP *) block->ozptr[1];
    ...
    /*compute the `cumsum`_ of the int32 matrix*/
    
    cumsum_i = ptr_i[0]+ptr_i[1]+ptr_i[2]+ptr_i[3];
    ...
    /*compute the `cumsum`_ of the real part of the complex matrix*/
    
    cumsum_d = ptr_d[0]+ptr_d[1]+ptr_d[2];
    ...
    }

  One can also use the set of C macros :

::

    GetRealOzPtrs(block,x)

  ,

::

    GetImagOzPtrs(block,x)

  ,

::

    Getint8OzPtrs(block,x)

  ,

::

    Getint16OzPtrs(block,x)

  ,

::

    Getint32OzPtrs(block,x)

  ,

::

    Getuint8OzPtrs(block,x)

  ,

::

    Getuint16OzPtrs(block,x)

  ,

::

    Getuint32OzPtrs(block,x)

  to have the appropriate pointer of the data to handle ( **x is
  numbered from 1 to noz**). For the previous example that gives :

::

    #include "scicos_block4.h"
    ...
    
    SCSINT32_COP *ptr_i;
    
    SCSREAL_COP *ptr_dr;
    
    SCSREAL_COP *ptr_di;
    ...
    
    void mycomputfunc(scicos_block *block,`int`_ flag)
    {
    ...
    /*`get`_ the ptrs of an int32 discrete object state*/
    
    ptr_i = Getint32OzPtrs(block,1);
    /*`get`_ the ptrs of a double discrete object state*/
    
    ptr_dr = GetRealOzPtrs(block,2);
    
    ptr_di = GetImagOzPtrs(block,2);
    ...
    }

  Finally note that the discrete objects state should be only written
  for

::

    flag

  =4 and

::

    flag

  =2.
+ **block->work :** A free pointer to set a working array for the
  block. The work pointer must be firstly allocated when = 4 and finally
  be free in the = 5. Then a basic life cyle of that pointer in a C
  computational function should be :

::

    #include "scicos_block4.h"
    ...
    
    void** work=block->work;
    ...
    
    void mycomputfunc(scicos_block *block,`int`_ flag)
    {
    ...
    /*initialization*/
    
    if (flag==4) {
      /*allocation of work*/
    
    if (*work=scicos_malloc(sizeof(`double`_))==NULL) {
    
    set_block_error(-16);
    
    return;
      }
    ...
    }
    ...
    /*other flag treatment*/
    ...
    /*finish*/
    
    else if (flag==5) {
    
    scicos_free(*work);
    }
    ...
    }

  Note that if a block use a

::

    work

  pointer, it will be called with

::

    flag

  =2 even if the block do not use discrete states. The pointer of that
  array can also be retrieve via the C macro

::

    GetWorkPtrs(block)

  .






Zero crossing surfaces and modes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~




+ **block->ng :** Integer that gives the number of zero crossing
  surface of the block. One can't override the index when
  reading/writing data in the array with a C computational function. The
  number of zero crossing surface can also be got by the use of the C
  macro .
+ **block->g :** Array of double of size ng,1 corresponding to the
  zero crossing surface register. That register is used to detect zero
  crossing of state variable during time domain integration. Note that
  it is accessible for writing for = 9. The pointer of that array can
  also be retrieve via the C macro .
+ **block->nmode :** Integer that gives the number of mode of the
  block. One can't override the index when reading/writing data in the
  array with a C computational function. The number of mode can also be
  got by the use of the C macro .
+ **block->mode :** Array of integer of size nmode,1 corresponding to
  the mode register. That register is used to set the mode of state
  variable during time domain integration. It is typically accessible
  for writing for = 9. The pointer of that array can also be retrieve
  via the C macro .






Miscallaneous
~~~~~~~~~~~~~




+ **block->type :** Integer that gives the type of the computational
  function. For C blocks, this number is equal to 4.
+ **block->label :** Strings array that allows to retrieve the label
  of the block.


.. _xcos: xcos.html
.. _Inputs/outputs: C_struct.html#Inputsoutputs_C_struct
.. _C_struct - C Block structure of a computational function: C_struct.html
.. _Module: C_struct.html#Module_C_struct
.. _Zero crossing surfaces and modes: C_struct.html#Zerocrossingsurfacesandmodes_C_struct
.. _Events: C_struct.html#Events_C_struct
.. _Parameters: C_struct.html#Parameters_C_struct
.. _Miscallaneous: C_struct.html#Miscallaneous_C_struct
.. _States and work: C_struct.html#Statesandwork_C_struct
.. _scicos_model: scicos_model.html
.. _Description: C_struct.html#Description_C_struct


