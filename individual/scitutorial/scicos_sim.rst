


scicos_sim
==========

Define a sim structure



Module
~~~~~~


+ `xcos`_




sim
~~~

Scilab typed list of type scs. It contains static arrays coming from
the result of the compilation. That arrays does not evolve during the
simulation.





Size : 33.

Type : scilab tlist.




+ **funs** A list containing names of the computational functions or
  scilab functions. Size : number of blocks. Type : list of strings
  and/or scilab function.
+ **xptr** A vector pointer to the continuous time state register x.
  The continuous-time state of block i is
  state.x(sim.xptr(i):sim.xptr(i+1)-1). Size : number of blocks + 1.
  Type : column vector of integers.
+ **zptr** A vector pointer to the discrete time state register z. The
  discrete-time state of block i is
  state.z(sim.zptr(i):sim.zptr(i+1)-1). Size : number of blocks + 1.
  Type : column vector of integers.
+ **ozptr** A vector pointer to the object discrete state register oz.
  The object discrete state of block i is
  state.oz(sim.ozptr(i):sim.ozptr(i+1)-1). Size : number of blocks + 1.
  Type : column vector of integers.
+ **zcptr** A vector pointer to the zero-crossing surfaces. register.
  That vector gives by block the used number of the zero-crossing. Size
  : number of blocks + 1. Type : column vector of integers.
+ **inpptr** (sim.inpptr(i+1)-sim.inpptr(i)) gives the number of
  regular input ports of the i block. inpptr(i) points to the beginning
  of ith block inputs within the indirection table inplnk. Size : number
  of blocks + 1. Type : column vector of integers.
+ **outptr** (sim.outptr(i+1)-sim.outptr(i)) gives the number of
  regular ouyput ports of the i block. outptr(i) points to the beginning
  of ith block outputs within the indirection table outlnk. Size :
  number of blocks + 1. Type : column vector of integers.
+ **inplnk** (cpr.sim.inplnk(cpr.sim.inpptr(i)-1+j)) is the index of
  the link connected to the jth input port of the ith block where j goes
  from 1 to (cpr.sim.inpptr(i+1)-cpr.sim.inpptr(i)). Size : total number
  of regular input port. Type : column vector of integers.
+ **outlnk** (cpr.sim.outlnk(cpr.sim.outptr(i)-1+j)) is the index of
  the link connected to the jth output port of the ith block where j
  goes from 1 to (cpr.sim.outptr(i+1)-cpr.sim.outptr(i)). Size : total
  number of regular output port. Type : column vector of integers.
+ **rpar** Vector of real parameters that is obtained by concatenating
  the real parameters registers of all the blocks. Size : total number
  of real parameters. Type : column vector of real numbers.
+ **rpptr** A vector pointer to the real parameters register rpar. The
  real parameters of block i are
  sim.rpar(sim.rpptr(i):sim.rpptr(i+1)-1). Size : number of blocks + 1.
  Type : column vector of integer.
+ **ipar** Vector of integer parameters that is obtained by
  concatenating the integer parameters registers of all the blocks. Size
  : total number of integer parameters. Type : column vector of integer.
+ **ipptr** A vector pointer to the integer parameters register ipar.
  The integer parameters of block i are
  sim.ipar(sim.ipptr(i):sim.ipptr(i+1)-1). Size : number of blocks + 1.
  Type : column vector of real numbers.
+ **opar** List of object parameters that is obtained by concatenating
  the list of object parameters of all the blocks. Size : total number
  of object parameters. Type : list of scilab objects.
+ **opptr** A vector pointer to the object parameters list opar. The
  object parameters of block i are
  sim.opar(sim.opptr(i):sim.opptr(i+1)-1). Size : number of blocks + 1.
  Type : column vector of integers.
+ **clkptr** A vector pointer to output activation ports.
  (cpr.sim.clkptr(i):cpr.sim.clkptr(i+1)-1) gives the number of output
  event ports of the block i. Size : number of blocks + 1. Type : column
  vector of integers.
+ **ordptr** A vector pointer to ordclk designating the part of ordclk
  corresponding to a given activation.
  (cpr.sim.ordptr(i):cpr.sim.ordptr(i+1)-1) points to the region within
  ordclk indicates the number of blocks activated by the output event
  ports numbered i. Size : number of sources of activation + 1. Type :
  column vector of integers.
+ **execlk** Unused. Size : - Type : matrix of real.
+ **ordclk** A matrix associated to blocks activated by output
  activation ports. The first column contains the block number, and the
  second, the event code by which the block should be called. Size :
  total number of blocks summed by source of activations. Type : matrix
  of integers.
+ **cord** A matrix associated to always active blocks. The first
  column contains the block number, and the second, the event code by
  which the block should be called. Size : ncord. Type : matrix of
  integers.
+ **oord** Subset of cord. Blocks of that matrix have outputs which
  affect computation of continuous state derivatives. Size : noord. Type
  : matrix of integers.
+ **zord** Subset of zord. Blocks of that matrix have outputs which
  affect computation of zero-crossing surfaces. Size : nzord. Type :
  matrix of integers.
+ **critev** A vector of size equal to the number of activations and
  containing zeros and ones. The value one indicates that the activation
  is critical in the sense that the continuous-time solver must be cold
  restarted. Size : number of source of activation. Type : column vector
  of integers.
+ **nb** Number of blocks. Note that the number of blocks may differ
  from the original number of blocks in the diagram because c_pass2 may
  duplicate some conditional blocks. Size : 1. Type : integer.
+ **ztyp** A vector of size equal to the number of blocks. A 1 entry
  indicates that the block may have zero-crossings, even if it does not
  in the context of the diagram. Usually not used by the simulator. Size
  : number of blocks. Type : column vector of integers.
+ **nblk** Not used. Set to nb. Size : 1 Type : integer.
+ **ndcblk** Not used. Size : - Type : integer.
+ **subscr** Not used. Size : 0 Type : empty real.
+ **funtyp** A vector of size equal to the number of blocks indicating
  the type of the computational function of the block. Block type can be
  0 through 5. Currently only type 4 (C language) and type 5 (Scilab
  language) computational functions should be used. But older blocks can
  also be used. Size : number of blocks. Type : column vector of
  integer.
+ **iord** A matrix associated to blocks that must be activated at the
  start of the simulation. This includes blocks inheriting from constant
  blocks and always active blocks. Size : niord. Type : matrix of
  integers.
+ **labels** A string vector of size equal to the number of blocks
  containing block labels. Size : numbers of blocks. Type : column
  vector of strings.
+ **modptr** A vector pointer to the block modes. Size : number of
  blocks + 1. Type : column vector of integer.




File content
~~~~~~~~~~~~


+ SCI/modules/scicos/macros/scicos_scicos/scicos_sim.sci


.. _xcos: xcos.html


