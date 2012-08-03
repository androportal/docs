====
"scicos_cpr"
====

Subsections

+ `scicos_cpr ( *cpr*)`_
+ `scicos_state ( *xcs*)`_
+ `scicos_sim ( *scs*)`_






Compilation
-----------



scicos_cpr ( *cpr*)
~~~~~~~~~~~~~~~~~~~
Scilab Data structure of compilation result with fieds:

+ ** state: ** Scilab object of type scicos_state
+ ** sim: ** Scilab object of type scicos_sim
+ ** cor: ** It is a list with same recursive structure as scs_m each
  leaf contains the index of associated block in sim data structure.
+ ** corinv: ** corinv(i) is the path of i th block defined in sim
  data structure in the scs_m data structure.



scicos_state
~~~~~~~~~~~~
System state data structure with fields

+ ** x: ** continuous state vector. Default value: `[]`
+ ** z: ** discrete state vector. Default value: `[]`
+ ** iz: ** unused Default value: `[]`
+ ** tevts: ** vector of event dates. Default value: `[]`
+ ** evtspt: **vector of event pointers . Default value: `[]`
+ ** pointi: **pointer to next event. Default value: `1`
+ ** outtb: **vector of inputs/outputs values . Default value: `[]`



scicos_sim
~~~~~~~~~~


+ ** funs: **l ist of character strings containing the names of each
  block simulation function (a linked C or Fortran procedure or a Scilab
  function). Default value: `[]`
+ ** xptr: ** (nblk+1) x 1 vector of integers,
  cpr.state.x(cpr.sim.xptr(i):cpr.sim.xptr(i+1)-1) is the continuous
  state vector of the ith block (see scicos_cpr and scicos_state).
  Default value: `[]`
+ ** zptr: ** (nblk+1) x 1 vector of integers,
  cpr.state.z(cpr.sim.zptr(i):cpr.sim.zptr(i+1)-1) is the discrete state
  vector of the ith block. Default value: `[]`
+ ** zcptr: ** . Default value: `[]`
+ ** inpptr: **(nblk+1) x 1 vector of integers,
  (cpr.sim.inpptr(i+1)-cpr.sim.inpptr(i)) gives the number of input
  ports. inpptr(i)th points to the beginning of ith block inputs within
  the indirection table inplnk. Default value: `[]`
+ ** outptr: **(nblk+1) x 1 vector of integers,
  (cpr.sim.outptr(i+1)-cpr.sim.outptr(i)) gives the number of output
  ports. outptr(i)th points to the beginning of ith block outputs within
  the indirection table outlnk.
+ ** inplnk: **nblink x 1 vector of integers,
  (cpr.sim.inplnk(cpr.sim.inpptr(i)-1+j)) is the index of the link
  connected to the jth input port of the ith block. where j goes from 1
  to (cpr.sim.inpptr(i+1)-cpr.sim.inpptr(i)).
+ ** outlnk: ** nblink x 1 vector of integers,
(cpr.sim.outlnk(cpr.sim.outptr(i)-1+j)) is the index of the link
connected to the jth output port of the ith block. where j goes from 1
to (cpr.sim.outptr(i+1)-cpr.sim.outptr(i)). /LI>
+ ** lnkptr: ** (nblink+1) x 1 vector of integers, kth entry points to
the beginning of region within outtb dedicated to link indexed k. /LI>
+ ** rpar: **vector of blocks' floating point parameters . Default
  value: `[]`
+ ** rpptr: ** (nblk+1) x 1 vector of integers,
  cpr.sim.rpar(cpr.sim.rpptr(i):cpr.sim.rpptr(i+1)-1) is the vector of
  floating point parameters of the ith block. Default value: `[]`
+ ** ipar: **vector of blocks' integer parameters . Default value:
  `[]`
+ ** ipptr: ** (nblk+1) x 1 vector of integers,
  cpr.sim.ipar(cpr.sim.ipptr(i):cpr.sim.ipptr(i+1)-1) is the vector of
  integer parameters of the ith block. Default value: `[]`
+ ** clkptr: ** (nblk+1) x 1 vector of integers,
  (cpr.sim.clkptr(i):cpr.sim.clkptr(i+1)-1) gives the number of output
  event ports. Default value: `[]`
+ ** ordptr: **1 vector of integers,
  (cpr.sim.ordptr(i):cpr.sim.ordptr(i+1)-1) points to the region within
  ordclk indicates the number of blocks activated by the output event
  ports numbered i. Default value: `[]`
+ ** execlk: ** unused. Default value: `[]`
+ ** ordclk: ** two-column matrix of integers, the first indicates the
  number of activated blocks and the second indicates the number of the
  corresponding input event port. Default value: `[]`
+ ** cord: ** two-column matrix of integers, the first indicates the
  number of permanently (continuous time) activated blocks and the
  second indicates the number of the corresponding input event port.
  Default value: `[]`
+ ** oord: ** two-column matrix of integers, subset of cord whose
  outputs affect computation of continuous state derivatives. Default
  value: `[]`
+ ** zord: **two-column matrix of integers, subset of cord whose
  outputs affect computation of zero-crossing surfaces. Default value:
  `[]`
+ ** critev: **1 vector of integers . Default value: `[]`
+ ** nb: **unused . Default value: `[]`
+ ** ztyp: **(nblk+1) x 1 vector of integers, (cpr.sim.ztyp(i) is
  coded 1 if the block numbered i is from Zcross type (0 if else).
  Default value: `[]`
+ ** nblk: **number of blocks (unused) . Default value: `[]`
+ ** ndcblk: **unused . Default value: `[]`
+ ** subscr: ** . Default value: `[]`
+ ** funtyp: ** (nblk+1) x 1 vector of integers, indicates the routine
  type of blocks . Default value: `[]`
+ ** iord: **two-column matrix of integers, the first contains all the
  numbers of blocks to be updated in the initialization of the
  simulation among which the continuous blocks. The second column
  indicates the number of the corresponding input event port. Default
  value: `[]`
+ ** labels: **(nblk+1) x 1 vector of character strings, contains the
  label (if any) associated to each block. Default value: `[]`
+ ** modptr: ** . Default value: `[]`



Ramine Nikoukhah 2004-06-22
.. _): ://./scicos/scicos_cpr.htm#SECTION00314100000000000000
.. _): ://./scicos/scicos_cpr.htm#SECTION00314300000000000000
.. _): ://./scicos/scicos_cpr.htm#SECTION00314200000000000000


