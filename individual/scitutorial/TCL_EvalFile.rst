


TCL_EvalFile
============

Reads and evaluate a tcl/tk file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    TCL_EvalFile(filename [,interp])




Arguments
~~~~~~~~~

:filename character string. Contains the name of the file to read and
  evaluate.
: :interp optional character string parameter. Name of the slave tcl
  interpreter in which the operation has to be performed. If not
  provided, it defaults to the main tcl interpreter created by Scilab.
:



Description
~~~~~~~~~~~

With this routine, one can read and evaluate the content of a file
containing tcl/tk scripts. This allows to create powerful tk
interfaces.

The filename might be relative or absolute.



Advantages and drawbacks of this functionality
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This routines allows to use directly tcl/tk scripts. This thus allows,
for instance to use Interface Builders such as SpecTcl to design the
interface. The interfaces built directly with tcl/tk scripts are much
faster than the ones built with the Scilab Graphic Object library
provided with tksci (see uicontrol for example). Indeed, those Objects
are warpings around tk graphic widgets. Nevertheless, this way of
creating graphic user interface should only be used when one aims at
addressing directly specific tk/tcl features. There are two main
reasons for this. First of all, there is no simple way to manipulate
Scilab objects from within a tcl/tk script. Thus, the interface
designer has to write two sets of callbacks routines. One to describe
the changes occuring in the interface when the user acts on the
widgets. The second set of call routines will perform the (pure)
Scilab reactions to the user actions.

Here is an example: Suppose you design a scrollbar corresponding to a
spline tension value. You want the spline to be displayed in a graphic
windows and updated each time the user moves the scrollbar. At the
same time, you want the value of this tension parameter to be
displayed within the Interface. You will have to write a first tcl/tk
(callback) function which will be automatically called by the tk
scrollbar ("-command" option). This callback function will update the
displayed value of the parameter in the interface and will then call
the scilab routine ("ScilabEval" command) to update the graph.



Remarks on the tcl/tk script style
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Because Scilab manages the tcl/tk events, it creates the root window
".", this window should not be destroyed nor directly used by your
tcl/tk scripts. You should thus always create your own toplevel
windows. Moreover, since this module was written at a time when
namespaces didn't exist, some variables defined by scilab tcl/tk
scripts could collide your code. Running your scripts in a slave
interpreter may help in such a case.

More information about Tcl/Tk: `http://www.tcl.tk/doc/`_



Examples
~~~~~~~~


::

    TCL_EvalFile(SCI+"/modules/tclsci/demos/tk/puzzle");




See Also
~~~~~~~~


+ `ScilabEval`_ tcl instruction : Evaluate a string with scilab
  interpreter
+ `TCL_EvalStr`_ Evaluate a string whithin the Tcl/Tk interpreter
+ `TCL_GetVar`_ Get a tcl/tk variable value
+ `TCL_SetVar`_ Set a tcl/tk variable value
+ `TCL_ExistVar`_ Return %T if a tcl variable exists
+ `TCL_UnsetVar`_ Remove a tcl variable
+ `TCL_UpVar`_ Make a link from a tcl source variable to a tcl
  destination variable


.. _TCL_UpVar: TCL_UpVar.html
.. _TCL_SetVar: TCL_SetVar.html
.. _TCL_ExistVar: TCL_ExistVar.html
.. _http://www.tcl.tk/doc/: http://www.tcl.tk/doc/
.. _TCL_UnsetVar: TCL_UnsetVar.html
.. _TCL_GetVar: TCL_GetVar.html
.. _ScilabEval: ScilabEval.html
.. _TCL_EvalStr: TCL_EvalStr.html


