


getscicosvars
=============

Supervisor utility function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [myvar]=getscicosvars(str) [myvar]=getscicosvars([str1;str2;...])




Module
~~~~~~


+ `xcos`_




Description
~~~~~~~~~~~

That utility function is used to retrieve working arrays of Scicos
simulator and compiler during simulation.

It can be used inside a Scilab block to get information of all type of
blocks. That function is very useful to debug diagrams and to do
prototypes of simulations.




::

    [myvar]=getscicosvars(str)
    [myvar]=getscicosvars([str1;str2;...])




Arguments
~~~~~~~~~


+ **str,str1,str2,... :** That parameter can be a string or a matrix
  of string. The following entries are allowed : "x" : get the
  continuous state register. "nx" : get the length of the continuous
  state register. "xptr" : get the pointers register of the continuous
  state register. "zcptr" : get the pointers register of the zero-
  crossing surfaces register. "z" : get the discrete state register.
  "nz" : get the length of the continuous state register. "zptr" : get
  the pointers register of the discrete state register. "noz" : get the
  number of elements of the discrete object state list. "oz" : get the
  discrete object state list. "ozsz" : get the size of the elements of
  the discrete object state list. "oztyp" : get the type of the elements
  of the discrete object state list. "ozptr" : get the pointers register
  of the discrete object state list. "rpar" : get the real parameter
  register. "rpptr" : get the pointers register of the real parameter
  register. "ipar" : get the integer parameter register. "ipptr" : get
  the pointers register of the integer parameter register. "opar" : get
  the object parameter list. "oparsz" : get the size of the elements of
  the object parameter list. "opartyp" : get the type of the elements of
  the object parameter list. "opptr" : get the pointers register of the
  object parameter list. "outtb" : get the output register. "inpptr" :
  get the pointers register of the number of regular input ports.
  "outptr" : get the pointers register of the number of regular output
  ports. "inplnk" : get the pointers register of the links connected to
  regular input ports. "outlnk" : get the pointers register of the links
  connected to regular output ports. "subs" : not used "tevts" : get the
  current date register of the agenda. "evtspt" : get the current event
  register of the agenda. "pointi" : get the next event to be activated.
  "iord" : get the vector of blocks activated at the start of the
  simulation. "oord" : get the vector of blocks whose outputs affects
  computation of continuous state derivatives. "zord" : get the vector
  of blocks whose outputs affects computation of zero-crossing surfaces.
  "funtyp" : get the vector of type of computational functions. "ztyp" :
  get the pointers vector for blocks which use zero-crossing surfaces.
  "cord" : get the vector of blocks whose outputs evolve continuously.
  "ordclk" : get the matrix associated to blocks activated by output
  activation ports. "clkptr" : get the pointers vector for output
  activation ports. "ordptr" : get the pointers vector to ordclk
  designating the part of ordclk corresponding to a given activation.
  "critev" : get the vector of the critical events. "mod" : get the
  vector pointers of block modes. "nmod" : get the length of the vector
  pointers of block modes. "iz" : get the register that store pointers
  of block- work. "izptr" : get the pointers vector of the register that
  store C pointers of block- work. "nblk" : get the number of block.
  "outtbptr" : get the register that store C pointers of outtb.
  "outtbpsz" : get the register that store the size of the elements of
  outtb. "outtbtyp" : get the register that store the type of the
  elements of outtb. "nlnk" : get the number of output. "ncord" : get
  the number of blocks whose outputs evolve continuously. "nordptr" :
  get the number of blocks whose outputs evolve by activation. "iwa" :
  n.d. "blocks" : get a scilab list that contains all block structures
  contains in the diagram. "ng" : get length of the zero-crossing
  surfaces register. "g" : get the zero-crossing surfaces register. "t0"
  : get the current time of the simulation. "tf" : get the final time of
  the simulation. "Atol" : get the integrator absolute tolerance for the
  numerical solver. "rtol" : get the integrator relative tolerance for
  the numerical solver. "ttol" : get the tolerance on time of the
  simulator. "deltat" : get the maximum integration time interval.
  "hmax" : get the maximum step size for the numerical solver. "nelem" :
  get the number of elements in outtb. "outtb_elem" : get the vector of
  the number of elements in outtb.
+ **myvar :** That output parameter can be an int32 matrix, a double
  matrix or a Tlist. This is given by the input parameter.




See Also
~~~~~~~~


+ `DEBUG_SCICOS - Debug block (Scicos Block)`_


.. _DEBUG_SCICOS - Debug block (Scicos
            Block): scicos_debug.html
.. _xcos: xcos.html


