====
"scicos"
====

Scilab Function
**scicos** - Block diagram editor and GUI for the hybrid simulator `
**scicosim** `_



Calling Sequence
~~~~~~~~~~~~~~~~

scs_m = scicos([toto])




Parameters
~~~~~~~~~~


+ **toto** : either a Scicos diagram structure (scs_m) or a character
  string containing the path of the diagram file (.cos or .cosf
  extension). If no input argument is used, an empty diagram is opened
  (default name Untitled).
+ **scs_m** : Scicos diagram structure after edition.




Description
~~~~~~~~~~~

**** Scicos is a visual editor for constructing models of hybrid
  dynamical systems. Invoking Scicos with no argument opens up an empty
  Scicos window. Models can then be assembled, loaded, saved, compiled,
  simulated, using GUI of Scicos. Scicos serves as an interface to the
  various block diagram compilers and the hybrid simulator scicosim.
**** The input and output arguments are useful for debugging purposes.




See Also
~~~~~~~~

` ** scicosim** `_,` ** scicos_simulate** `_,



Authors
~~~~~~~

**Ramine Nikoukhah**


.. _
      : ://./scicos/scicosim.htm
.. _
      : ://./scicos/scicos_simulate.htm


