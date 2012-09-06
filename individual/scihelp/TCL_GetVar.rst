


TCL_GetVar
==========

Get a tcl/tk variable value



Calling Sequence
~~~~~~~~~~~~~~~~


::

    value=TCL_GetVar(Varname [,interp])




Arguments
~~~~~~~~~

:varname character string. Contains the name of the tcl/tk variable.
: :interp optional character string parameter. Name of the slave tcl
  interpreter in which the operation has to be performed. If not
  provided, it defaults to the main tcl interpreter created by Scilab.
: :value may be a character string or a strings matrix. Contains the
  value of the tcl/tk variable `varname` in the interpreter `interp`.
:



Description
~~~~~~~~~~~

When tcl/tk support is enabled in Scilab, this routine can be used to
retreive the value of a tcl/tk variable.

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
    text=TCL_GetVar("tvar")
    
    // retrieve the variable value
    // change the entry text and repeat the last command ...
    //delete the toplevel TK window.
    `TCL_EvalStr`_("destroy .tst1")
    
    //----------------------------------------------------
    a=["A","B","C";"D","E","F"];
    `TCL_SetVar`_("A",a)
    AfromTCL=TCL_GetVar("A")
    
    //----------------------------------------------------
    b=[6,4,1;2,3,5];
    `TCL_SetVar`_("B",b)
    BfromTCL=TCL_GetVar("B")
    
    //----------------------------------------------------
    `TCL_SetVar`_("StringTCL","string")
    StringFromTCL=TCL_GetVar("StringTCL")
    
    //----------------------------------------------------
    `TCL_SetVar`_("ScalarTCL",1.22)
    ScalarFromTCL=TCL_GetVar("ScalarTCL")
    
    //----------------------------------------------------
    // Examples with a slave interpreter
    //----------------------------------------------------
    a=['AA','BB','CC';'DD','EE','FF'];
    `TCL_CreateSlave`_('SlaveInterp')
    `TCL_SetVar`_("A_slave",a,'SlaveInterp')
    AfromTCL_slave=TCL_GetVar('A_slave','SlaveInterp')
    `TCL_DeleteInterp`_('SlaveInterp')
    
    //----------------------------------------------------
    b=[66,44,11;22,33,55];
    `TCL_CreateSlave`_('SlaveInterp1')
    `TCL_SetVar`_("B_slave",b,'SlaveInterp1')
    BfromTCL_slave=TCL_GetVar('B_slave','SlaveInterp1')
    `TCL_DeleteInterp`_('SlaveInterp1')
    
    //----------------------------------------------------
    `TCL_CreateSlave`_('SlaveInterp2')
    `TCL_SetVar`_("StringTCL_slave","string in slave interpreter",'SlaveInterp2')
    StringFromTCL_slave=TCL_GetVar("StringTCL_slave",'SlaveInterp2')
    `TCL_DeleteInterp`_('SlaveInterp2')
    
    //----------------------------------------------------
    `TCL_CreateSlave`_('SlaveInterp3')
    `TCL_SetVar`_("ScalarTCL_slave",1.22,'SlaveInterp3')
    ScalarFromTCL_slave=TCL_GetVar("ScalarTCL_slave",'SlaveInterp3')
    `TCL_DeleteInterp`_('SlaveInterp3')




See Also
~~~~~~~~


+ `ScilabEval`_ tcl instruction : Evaluate a string with scilab
  interpreter
+ `TCL_EvalFile`_ Reads and evaluate a tcl/tk file
+ `TCL_EvalStr`_ Evaluate a string whithin the Tcl/Tk interpreter
+ `TCL_SetVar`_ Set a tcl/tk variable value
+ `TCL_ExistVar`_ Return %T if a tcl variable exists
+ `TCL_UnsetVar`_ Remove a tcl variable
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
.. _TCL_UnsetVar: TCL_UnsetVar.html
.. _ScilabEval: ScilabEval.html
.. _TCL_EvalStr: TCL_EvalStr.html
.. _TCL_CreateSlave: TCL_CreateSlave.html


