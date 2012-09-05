


scicos_state
============

Define a state structure



Module
~~~~~~


+ `xcos`_




state
~~~~~

Scilab typed list of type xcs. It contains all the states of the
model, that is, everything than can evolve during the simulation.

state contains x, z, oz, iz, tevts, evtspt, pointi and outtb.





Size : 9.

Type : scilab tlist.




+ **x** The continuous-time state register, which is obtained by
  concatenating the continuous-time states of all the blocks. Size :
  total of all the size of continuous-time state registers. Type :
  column vector of real numbers.
+ **z** The discrete-time state register, which is obtained by
  concatenating the discrete-time states of all the blocks. Size : total
  of all the size of discrete-time state registers. Type : column vector
  of real number.
+ **oz** The list of the object discrete-time state, which is obtained
  by concatenating the object discrete-time states of all the blocks.
  Size : total of all the size of object state. Type : list of scilab
  object.
+ **iz** Vector of size equal to the number of blocks. That vector is
  used to store pointers of the working state register (work). If a
  block needs to allocate memory at initialization (flag 4), the
  associated pointer is saved here. Size : number of blocks. Type :
  column vector of real numbers.
+ **tevts** Vector of size equal to the number of activation sources.
  It contains the scheduled times for programmed activations in evtspt.
  Size : number of activation sources. Type : column vector of integers.
+ **evtspt** Vector of size equal to the number of activation sources.
  It is an event scheduler. Size : number of activation sources. Type :
  column vector of integers.
+ **pointi** The number of the next programmed event. Size : 1. Type :
  integer.
+ **outtb** Scilab list containing all output registers of blocks.
  Each element of that list contains typed matrix-based data. Size :
  number of regular output ports. Type : list of scilab matrix.




File content
~~~~~~~~~~~~


+ SCI/modules/scicos/macros/scicos_scicos/scicos_state.sci


.. _xcos: xcos.html


