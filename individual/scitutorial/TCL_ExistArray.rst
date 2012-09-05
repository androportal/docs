


TCL_ExistArray
==============

Return %T if a tcl array exists



Calling Sequence
~~~~~~~~~~~~~~~~


::

    OK=TCL_ExistArray(arrayname [,interp])




Arguments
~~~~~~~~~

:arrayname character string. Contains the name of the tcl/tk array.
: :interp optional character string parameter. Name of the slave tcl
  interpreter in which the operation has to be performed. If not
  provided, it defaults to the main tcl interpreter created by Scilab.
: :ok boolean. %T if arrayname exists.
:



Description
~~~~~~~~~~~

This routine allows to test if a tcl array exists.

More information about Tcl/Tk: `http://www.tcl.tk/doc/`_



Examples
~~~~~~~~


::

    `TCL_ExistVar`_("A")
    a=["A","B","C";"D","E","F"];
    `TCL_SetVar`_("A",a)
    `TCL_ExistVar`_("A")
    TCL_ExistArray("A")




See Also
~~~~~~~~


+ `ScilabEval`_ tcl instruction : Evaluate a string with scilab
  interpreter
+ `TCL_EvalFile`_ Reads and evaluate a tcl/tk file
+ `TCL_EvalStr`_ Evaluate a string whithin the Tcl/Tk interpreter
+ `TCL_GetVar`_ Get a tcl/tk variable value
+ `TCL_SetVar`_ Set a tcl/tk variable value
+ `TCL_UnsetVar`_ Remove a tcl variable
+ `TCL_UpVar`_ Make a link from a tcl source variable to a tcl
  destination variable
+ `TCL_CreateSlave`_ Create a TCL slave interpreter


.. _TCL_UpVar: TCL_UpVar.html
.. _TCL_SetVar: TCL_SetVar.html
.. _TCL_EvalFile: TCL_EvalFile.html
.. _http://www.tcl.tk/doc/: http://www.tcl.tk/doc/
.. _TCL_UnsetVar: TCL_UnsetVar.html
.. _TCL_GetVar: TCL_GetVar.html
.. _ScilabEval: ScilabEval.html
.. _TCL_EvalStr: TCL_EvalStr.html
.. _TCL_CreateSlave: TCL_CreateSlave.html


