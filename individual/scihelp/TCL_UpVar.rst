


TCL_UpVar
=========

Make a link from a tcl source variable to a tcl destination variable



Calling Sequence
~~~~~~~~~~~~~~~~


::

    OK=TCL_UpVar(varname1,varname2,[interp])




Arguments
~~~~~~~~~

:varname1 character string. Contains the name of the tcl source
  variable.
: :varname2 character string. Contains the name of the tcl destination
  variable.
: :interp optional character string parameter. Name of the slave tcl
  interpreter in which the operation has to be performed. If not
  provided, it defaults to the main tcl interpreter created by Scilab.
: :ok boolean. %T if it is ok.
:



Description
~~~~~~~~~~~

Make a link from a tcl source variable to a tcl destination variable.

More information about Tcl/Tk: `http://www.tcl.tk/doc/`_



Examples
~~~~~~~~


::

    `TCL_SetVar`_("Scilab","OK")
    TCL_UpVar("Scilab","ScilabBis")
    `TCL_GetVar`_("ScilabBis")
    `TCL_SetVar`_("Scilab","NOK")
    `TCL_GetVar`_("ScilabBis")
    `TCL_SetVar`_("ScilabBis","modified")
    `TCL_GetVar`_("ScilabBis")
    `TCL_GetVar`_("Scilab")
    
    `TCL_CreateSlave`_('InterpBis')
    `TCL_SetVar`_("Scilab","Good",'InterpBis')
    TCL_UpVar("Scilab","ScilabBis",'InterpBis')
    `TCL_GetVar`_("ScilabBis",'InterpBis')
    `TCL_SetVar`_("Scilab","Not good",'InterpBis')
    `TCL_GetVar`_("ScilabBis",'InterpBis')
    `TCL_SetVar`_("ScilabBis","modified again",'InterpBis')
    `TCL_GetVar`_("ScilabBis",'InterpBis')
    `TCL_GetVar`_("Scilab",'InterpBis')
    `TCL_DeleteInterp`_('InterpBis')




See Also
~~~~~~~~


+ `ScilabEval`_ tcl instruction : Evaluate a string with scilab
  interpreter
+ `TCL_EvalFile`_ Reads and evaluate a tcl/tk file
+ `TCL_EvalStr`_ Evaluate a string whithin the Tcl/Tk interpreter
+ `TCL_GetVar`_ Get a tcl/tk variable value
+ `TCL_SetVar`_ Set a tcl/tk variable value
+ `TCL_ExistVar`_ Return %T if a tcl variable exists
+ `TCL_UnsetVar`_ Remove a tcl variable
+ `TCL_CreateSlave`_ Create a TCL slave interpreter
+ `TCL_DeleteInterp`_ delete TCL interpreter


.. _TCL_ExistVar: TCL_ExistVar.html
.. _TCL_SetVar: TCL_SetVar.html
.. _TCL_DeleteInterp: TCL_DeleteInterp.html
.. _TCL_EvalFile: TCL_EvalFile.html
.. _http://www.tcl.tk/doc/: http://www.tcl.tk/doc/
.. _TCL_UnsetVar: TCL_UnsetVar.html
.. _TCL_GetVar: TCL_GetVar.html
.. _ScilabEval: ScilabEval.html
.. _TCL_EvalStr: TCL_EvalStr.html
.. _TCL_CreateSlave: TCL_CreateSlave.html


