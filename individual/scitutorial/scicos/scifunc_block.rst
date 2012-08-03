====
"scifunc_block"
====

Subsections

+ `Library`_
+ `Description`_
+ `Dialog Box`_
+ `Default properties`_
+ `Interfacing function`_
+ `Computational function (type 3)`_







Scilab
------



Library
~~~~~~~
Others


Description
~~~~~~~~~~~
This block can realize any type of Scicos block. The function of the
block is defined interactively using dialogue boxes and in Scilab
language. During simulation, these instructions are interpreted by
Scilab; the simulation of diagrams that include these types of blocks
is slower. For more information see Scicos reference manual.


Dialog Box
~~~~~~~~~~
Set scifunc_block parameters input ports sizes 1 output port sizes 1
input event ports sizes [] output events ports sizes [] initial
continuous state [] initial discrete state [] System parameters vector
[] initial firing vector ( 0 for no firing) [] is block always active
(0:no, 1:yes) 0

+ input ports sizes: a scalar. Number of regular input ports
+ output port sizes: a scalar. Number of regular output ports
+ input event ports sizes: a scalar. Number of input event ports
+ output events ports sizes: a scalar. Number of output event ports
+ initial continuous state:a column vector.
+ initial discrete state: a column vector.
+ System parameters vector:a string: c or d ( **CBB** or ** DBB**,
  other types are not supported).
+ initial firing vector :vector. Size of this vector corresponds to
  the number of event outputs. The value of the i-th entry specifies the
  time of the preprogrammed event firing on the i-th output event port.
  If less than zero, no event is preprogrammed.
+ is block always active :other dialogues are opened consecutively
  where used may input Scilab code associated with the computations
  needed (block initialization, outputs, continuous and discrete state,
  output events date, block ending)




Default properties
~~~~~~~~~~~~~~~~~~


+ always active: no
+ direct-feedthrough: yes
+ zero-crossing: no
+ mode: no
+ number/sizes of inputs: 1 / 1
+ number/sizes of outputs: 1 / 1
+ number/sizes of activation inputs: 0 /
+ number/sizes of activation outputs: 0 /
+ continuous-time state: no
+ discrete-time state: no
+ name of computational function: *scifunc*



Interfacing function
~~~~~~~~~~~~~~~~~~~~
scilab/macros/scicos_blocks/misc/scifunc_block.sci


Computational function (type 3)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

          subroutine scifunc(mlhs,mrhs)
    c     execute scilab function with mrhs input args and mlhs output
    c     variables
    c     input args are supposed to be stored in the top of the stack
    c     at positions top-mrhs+1:top
    c     function adress is given by the integer ptr in the common /scsptr/
    c
    c     Copyright INRIA
          include "../stack.h"
          integer ptr
          integer mlhs,mrhs
          integer iadr
          logical allowptr
    C
          common /scsptr/ ptr   
    c
          iadr(l) = l + l - 1
    c   
    
    C     macro execution 
    C     
          pt = pt + 1
          if (pt .gt. psiz) then
            call error(26)
            goto 9999
          endif
          ids(1,pt) = lhs
          ids(2,pt) = rhs
          rstk(pt) = 1001
          lhs = mlhs
          rhs = mrhs
          niv = niv + 1
          fun = 0
          fin = ptr
    C     
          icall = 5
          krec = -1
          include "../callinter.h"
     200  lhs = ids(1,pt)
          rhs = ids(2,pt)
          pt = pt - 1
          niv = niv - 1
    C+    
     9999 continue
          iero=1
          niv=niv-1
          return
          end



Ramine Nikoukhah 2004-06-22
.. _Default properties: ://./scicos/scifunc_block.htm#SECTION00574400000000000000
.. _Interfacing function: ://./scicos/scifunc_block.htm#SECTION00574500000000000000
.. _Library: ://./scicos/scifunc_block.htm#SECTION00574100000000000000
.. _Computational function (type 3): ://./scicos/scifunc_block.htm#SECTION00574600000000000000
.. _Description: ://./scicos/scifunc_block.htm#SECTION00574200000000000000
.. _Dialog Box: ://./scicos/scifunc_block.htm#SECTION00574300000000000000


