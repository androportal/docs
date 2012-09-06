


C_utils
=======

Utilities C functions



Contents
~~~~~~~~


+ `C_utils - Utilities C functions`_
  +

    + `Module`_
    + `Description`_





Module
~~~~~~


+ `xcos`_




Description
~~~~~~~~~~~

The header provides some utilities functions to interact with the
simulator in the C computational functions.




+ **void do_cold_restart();** This function forces the solver to do a
  cold restart. It should be used in situations where the block creates
  a non smooth signal. Note that in most situations, non smooth
  situations are detected by zero-crossings and this function is not
  needed. This block is used in very exceptional situations.
+ **int get_phase_simulation();** That function returns an integer
  which says if the simulator is realizing time domain integration. It
  can returns :

    + **1:** The simulator is on a discrete activation time.
    + **2:** The simulator is realizing a continuous time domain
      integration.

+ **double get_scicos_time();** That function returns the current time
  of simulator.
+ **int get_block_number();** That function returns an integer : the
  block index in the compiled structure. Each block in the simulated
  diagram have a single index, and blocks are numbered from 1 to nblk
  (the total number of blocks in the compiled structure).
+ **void set_block_error(int);** Function to set a specific error
  during the simulation for the current block. If it is used, then after
  the execution of the computational function of the block, the
  simulator will end and will return an error message associated to the
  number given in the integer argument. The following calls are allowed
  :

    + **set_block_error(-1); :** the block has been called with input out
      of its domain,
    + **set_block_error(-2); :** singularity in a block,
    + **set_block_error(-3); :** block produces an internal error,
    + **set_block_error(-16); :** cannot allocate memory in block.

+ **void end_scicos_sim();** A very specific function to set the
  current time of the simulator to the final time integration. Only
  expert user should use this function.
+ **void set_pointer_xproperty(int* pointer);** This function set a
  vector of integer to inform the type (algebraic or differential) of
  the continuous state variables of the block.
+ **void * scicos_malloc(size_t);** That function must be used to do
  allocation of scicos pointers inside a C computational function and in
  particular for =4 for the work pointer .
+ **void scicos_free(void *p);** That function must be used to free
  scicos pointers inside a C computational function and in particular
  for =5 for the work pointer .


.. _Description: C_utils.html#Description_C_utils
.. _Module: C_utils.html#Module_C_utils
.. _xcos: xcos.html
.. _C_utils - Utilities C functions: C_utils.html


