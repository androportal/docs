====
"ScilabEval"
====

TCL Function Last update : 08/02/2006
**ScilabEval** - tcl instruction : Evaluate a string with scilab
interpreter



Calling Sequence
~~~~~~~~~~~~~~~~

ScilabEval instruction
ScilabEval instruction "seq"
ScilabEval instruction "sync"
ScilabEval instruction "sync" "seq"
ScilabEval "flush"




Parameters
~~~~~~~~~~


+ **instruction** : tcl string character contains a Scilab instruction
  to evaluate with the current Scilab interpreter.




Description
~~~~~~~~~~~

This function must be called in a tcl/tk script executed from Scilab.
It allows to associate Scilab actions to tcl/tk widgets (graphic
objects) or to use Scilab to perform some computations within a tcl
script.



