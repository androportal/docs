


TCL_UnsetVar
============

Remove a tcl variable



Calling Sequence
~~~~~~~~~~~~~~~~


::

    OK=TCL_UnsetVar(varname [,interp])




Arguments
~~~~~~~~~

:varname character string. Contains the name of the tcl/tk variable to
  unset.
: :interp optional character string parameter. Name of the slave tcl
  interpreter in which the operation has to be performed. If not
  provided, it defaults to the main tcl interpreter created by Scilab.
: :ok boolean. %T if varname was deleted.
:



Description
~~~~~~~~~~~

This routine allows to unset a tcl variable.

More information about Tcl/Tk: `http://www.tcl.tk/doc/`_



Examples
~~~~~~~~


::

    `TCL_SetVar`_("Scilab","OK")
    `TCL_GetVar`_("Scilab")
    TCL_UnsetVar("Scilab")
    `TCL_ExistVar`_("Scilab")
    
    `TCL_CreateSlave`_('InterpSlave');
    `TCL_SetVar`_("Scilab","Good",'InterpSlave')
    `TCL_GetVar`_("Scilab",'InterpSlave')
    TCL_UnsetVar("Scilab",'InterpSlave')
    `TCL_ExistVar`_("Scilab",'InterpSlave')
    `TCL_DeleteInterp`_('InterpSlave')




See Also
~~~~~~~~


+ `ScilabEval`_ tcl instruction : Evaluate a string with scilab
  interpreter
+ `TCL_EvalFile`_ Reads and evaluate a tcl/tk file
+ `TCL_EvalStr`_ Evaluate a string whithin the Tcl/Tk interpreter
+ `TCL_GetVar`_ Get a tcl/tk variable value
+ `TCL_SetVar`_ Set a tcl/tk variable value
+ `TCL_ExistVar`_ Return %T if a tcl variable exists
+ `TCL_UpVar`_ Make a link from a tcl source variable to a tcl
  destination variable
+ `TCL_CreateSlave`_ Create a TCL slave interpreter
+ `TCL_DeleteInterp`_ delete TCL interpreter


.. _TCL_ExistVar: TCL_ExistVar.html
.. _TCL_UpVar: TCL_UpVar.html
.. _TCL_SetVar: TCL_SetVar.html
.. _TCL_DeleteInterp: TCL_DeleteInterp.html
.. _TCL_EvalFile: TCL_EvalFile.html
.. _http://www.tcl.tk/doc/: http://www.tcl.tk/doc/
.. _TCL_GetVar: TCL_GetVar.html
.. _ScilabEval: ScilabEval.html
.. _TCL_EvalStr: TCL_EvalStr.html
.. _TCL_CreateSlave: TCL_CreateSlave.html


