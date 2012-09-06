


scicos_cpr
==========

Compiled Scicos structure



Module
~~~~~~


+ `xcos`_




cpr
~~~

The Scilab object `cpr`_ contains the result of the compilation.

That structure includes fields `state`_, `sim`_, cor and corinv.





Size : 5.

Type : scilab list.




+ **state** Scilab typed list of type xcs. It contains all the states
  of the model, that is, everything than can evolve during the
  simulation. state contains x, z, oz, iz, tevts, evtspt, pointi and
  outtb. Size : 9. Type : scilab tlist.
+ **sim** Scilab typed list of type scs. It contains static arrays
  coming from the result of the compilation. That arrays does not evolve
  during the simulation. Size : 33. Type : scilab tlist.
+ **cor** It is a list with same recursive structure as scs_m. Each
  leaf contains the index of associated block in sim data structure.
  Size : number of objects in scs_m. Type : scilab list.
+ **corinv** corinv(i) is the path of i th block defined in sim data
  structure in the scs_m data structure. Size : number of blocks in the
  compiled structre. Type : scilab list.




File content
~~~~~~~~~~~~


+ SCI/modules/scicos/macros/scicos_scicos/scicos_cpr.sci


.. _sim: scicos_sim.html
.. _xcos: xcos.html
.. _state: scicos_state.html
.. _cpr: scicos_cpr.html


