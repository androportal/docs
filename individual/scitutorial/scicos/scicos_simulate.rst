====
"scicos_simulate"
====

Scilab Function
**scicos_simulate** - Function for running scicos simulation in batch
mode.



Calling Sequence
~~~~~~~~~~~~~~~~

Info=scicos_simulate(scs_m,Info[,%scicos_context][,flag])




Parameters
~~~~~~~~~~


+ **scs_m** : scicos diagram (obtained by "load file.cos"). Note that
  the version of file.cos must be the current version. If not, load into
  scicos and save.
+ **Info** : a list. It must be list() at the first call, then use
  output Info as input Info for the next calls. Info contains
  compilation and simulation information and is used to avoid
  recompilation when not needed.
+ **%scicos_context** : a scilab struct containing values of symbolic
  variables used in the context and Scicos blocks. This is often used to
  change a parameter in the diagram context. In that case, make sure
  that in the diagram context the variable is defined such that it can
  be modified. Say a variable "a" is to be defined in the context having
  value 1, and later in batch mode, we want to change the value of "a".
  In that case, in the context of the diagram place: if ~exists('a')
  then a=1,end If you want then to run the simulation in batch mode
  using the value a=2, set: %scicos_context.a=2
+ **flag** : string. If it equals 'nw' (no window), then blocks using
  graphical windows are not executed. Note that the list of such blocks
  must be updated as new blocks are added.
+ **Info** : contains compilation and simulation information and is
  used to avoid recompilation when not needed. Normally it should not be
  modified.




Description
~~~~~~~~~~~

This function is used to simulate scicos diagrams in batch mode. It
requires the scs_m structure which can be obtained by loading in
Scilab the .cos file (e.g. load mydiagram.cos).

Contrary to the function ` ** scicosim** `_, the diagram need not be
compiled before being saved.



See Also
~~~~~~~~

` ** scicosim** `_,` ** scicos** `_,` ** steadycos** `_,` ** lincos**
`_,



Authors
~~~~~~~

**Ramine Nikoukhah**


.. _
      : ://./scicos/steadycos.htm
.. _
      : ://./scicos/lincos.htm
.. _
      : ://./scicos/scicosim.htm
.. _
      : ://./scicos/scicos.htm


