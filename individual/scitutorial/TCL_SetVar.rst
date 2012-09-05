


TCL_SetVar
==========

Set a tcl/tk variable value



Calling Sequence
~~~~~~~~~~~~~~~~


::

    TCL_SetVar(varname, value [,interp])




Arguments
~~~~~~~~~

:varname character string. Contains the name of the tcl/tk variable to
  set.
: :value may be a character string, a scalar, a real or string matrix
  (m x n). Contains the value to give to the tcl/tk variable.
: :interp optional character string parameter. Name of the slave tcl
  interpreter in which the operation has to be performed. If not
  provided, it defaults to the main tcl interpreter created by Scilab.
:



Description
~~~~~~~~~~~

This routine allows to set a variable within a tcl/tk interpreter.
When tcl/tk support is enabled in scilab, this routine can be used to
set up the value of a tcl/tk variable. This can be useful to change
some value in the tcl/tk interpreter without having to build a tcl/tk
instruction (and use `TCL_EvalStr`).

More information about Tcl/Tk: `http://www.tcl.tk/doc/`_



Examples
~~~~~~~~


::

    `TCL_EvalStr`_("toplevel .tst1");
    
    // creates a toplevel TK window. 
    `TCL_EvalStr`_("entry .tst1.e -textvariable tvar");
    
    // create an editable entry
    `TCL_EvalStr`_("set tvar foobar");
    
    // set the entry value
    `TCL_EvalStr`_("pack .tst1.e");
    
    // pack the entry widget. It appears on the screen.
    text=`TCL_GetVar`_("tvar")
    
    // retrieve the variable value
    // change the entry text and repeat the last command ...
    //delete the toplevel TK window.
    `TCL_EvalStr`_("destroy .tst1")
    
    //----------------------------------------------------
    a=["A","B","C";"D","E","F"];
    TCL_SetVar("A",a)
    AfromTCL=`TCL_GetVar`_("A")
    
    //----------------------------------------------------
    b=[6,4,1;2,3,5];
    TCL_SetVar("B",b)
    BfromTCL=`TCL_GetVar`_("B")
    
    //----------------------------------------------------
    TCL_SetVar("StringTCL","string")
    StringFromTCL=`TCL_GetVar`_("StringTCL")
    
    //----------------------------------------------------
    TCL_SetVar("ScalarTCL",1.22)
    ScalarFromTCL=`TCL_GetVar`_("ScalarTCL")
    
    //----------------------------------------------------
    // Examples with a slave interpreter
    //----------------------------------------------------
    `TCL_CreateSlave`_('TCLSlave')
    a=['AA','BB','CC';'DD','EE','FF'];
    TCL_SetVar("A_slave",a,'TCLSlave')
    AfromTCL_slave=`TCL_GetVar`_('A_slave','TCLSlave')
    `TCL_DeleteInterp`_('TCLSlave')
    
    //----------------------------------------------------
    `TCL_CreateSlave`_('TCLSlave')
    b=[66,44,11;22,33,55];
    TCL_SetVar("B_slave",b,'TCLSlave')
    BfromTCL_slave=`TCL_GetVar`_('B_slave','TCLSlave')
    `TCL_DeleteInterp`_('TCLSlave')
    
    //----------------------------------------------------
    `TCL_CreateSlave`_('TCLSlave')
    TCL_SetVar("StringTCL_slave","string in slave interpreter",'TCLSlave')
    StringFromTCL_slave=`TCL_GetVar`_("StringTCL_slave",'TCLSlave')
    `TCL_DeleteInterp`_('TCLSlave')
    
    //----------------------------------------------------
    `TCL_CreateSlave`_('TCLSlave')
    TCL_SetVar("ScalarTCL_slave",1.22,'TCLSlave')
    ScalarFromTCL_slave=`TCL_GetVar`_("ScalarTCL_slave",'TCLSlave')
    `TCL_DeleteInterp`_('TCLSlave')




See Also
~~~~~~~~


+ `ScilabEval`_ tcl instruction : Evaluate a string with scilab
  interpreter
+ `TCL_EvalFile`_ Reads and evaluate a tcl/tk file
+ `TCL_EvalStr`_ Evaluate a string whithin the Tcl/Tk interpreter
+ `TCL_GetVar`_ Get a tcl/tk variable value
+ `TCL_ExistVar`_ Return %T if a tcl variable exists
+ `TCL_UnsetVar`_ Remove a tcl variable
+ `TCL_UpVar`_ Make a link from a tcl source variable to a tcl
  destination variable
+ `TCL_CreateSlave`_ Create a TCL slave interpreter
+ `TCL_DeleteInterp`_ delete TCL interpreter


.. _TCL_ExistVar: TCL_ExistVar.html
.. _TCL_UpVar: TCL_UpVar.html
.. _TCL_DeleteInterp: TCL_DeleteInterp.html
.. _TCL_EvalFile: TCL_EvalFile.html
.. _http://www.tcl.tk/doc/: http://www.tcl.tk/doc/
.. _TCL_UnsetVar: TCL_UnsetVar.html
.. _TCL_GetVar: TCL_GetVar.html
.. _ScilabEval: ScilabEval.html
.. _TCL_EvalStr: TCL_EvalStr.html
.. _TCL_CreateSlave: TCL_CreateSlave.html


