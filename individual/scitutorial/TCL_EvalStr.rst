


TCL_EvalStr
===========

Evaluate a string whithin the Tcl/Tk interpreter



Calling Sequence
~~~~~~~~~~~~~~~~


::

    TCL_EvalStr(str [,interp])
    res = TCL_EvalStr(str [,interp])




Arguments
~~~~~~~~~

:str string or matrix of strings, contains a Tcl/Tk script in each
  element.
: :interp optional character string parameter. Name of the slave Tcl
  interpreter in which the operation has to be performed. If not
  provided, it defaults to the main Tcl interpreter created by Scilab.
: :res result of the evaluation, if it is successful. This is a
  character string matrix giving the evaluation result for each element
  of the input argument str
:



Description
~~~~~~~~~~~

This routine allows to evaluate Tcl/Tk instructions with the Tcl/Tk
interpreter launched with Scilab (when the `interp` parameter is not
given), or in a slave interpreter.

When Tcl/Tk support is enabled in Scilab, you can evaluate Tcl/Tk
expression from Scilab interpreter. In fact, Scilab launches a main
Tcl/Tk interpreter. The Scilab instruction `TCL_EvalStr` can be used
to evaluate expressions without having to write Tcl/Tk instructions in
a separated file (this capability is provided by `TCL_EvalFile`).

More information about Tcl/Tk: `http://www.tcl.tk/doc/`_



Examples
~~~~~~~~


::

    //with one call
    TCL_EvalStr(["toplevel .foo1"
                 "label .foo1.l -text ""TK married Scilab !!!"""
                 "pack .foo1.l"
                 "button .foo1.b -text close -command {destroy .foo1}"
                 "pack .foo1.b"])
    
    //step by step (debugging)
    TCL_EvalStr("toplevel .foo2");
    
    // creates a toplevel TK window. 
    TCL_EvalStr("label .foo2.l -text ""TK married Scilab !!!""");
    
    // create a static label
    TCL_EvalStr("pack .foo2.l");
    
    // pack the label widget. It appears on the screen.
    text="button .foo2.b -text close -command {destroy .foo2}";
    TCL_EvalStr(text);
    TCL_EvalStr("pack .foo2.b");
    
    //kill the windows by program
    TCL_EvalStr("destroy .foo1");
    TCL_EvalStr("destroy .foo2");
     
    //with one call, and in a slave interpreter
    `TCL_CreateSlave`_('TCLSlave');
    TCL_EvalStr('set test ""in Slave TCL Interp""','TCLSlave');
    `TCL_GetVar`_('test','TCLSlave')
    
    `TCL_DeleteInterp`_('TCLSlave')
    
    // return a result
    res = TCL_EvalStr("expr 1+1")
    res = TCL_EvalStr("tk_messageBox -message Hello -type okcancel")
    res = TCL_EvalStr(["expr 4+5" "lsearch -all {a b c a b c} c" ; "list [list a b c] [list d e f] [list g h i]" "llength  {a b c d e}"])




See Also
~~~~~~~~


+ `ScilabEval`_ tcl instruction : Evaluate a string with scilab
  interpreter
+ `TCL_EvalFile`_ Reads and evaluate a tcl/tk file
+ `TCL_GetVar`_ Get a tcl/tk variable value
+ `TCL_SetVar`_ Set a tcl/tk variable value
+ `TCL_ExistVar`_ Return %T if a tcl variable exists
+ `TCL_UnsetVar`_ Remove a tcl variable
+ `TCL_UpVar`_ Make a link from a tcl source variable to a tcl
  destination variable


.. _TCL_UpVar: TCL_UpVar.html
.. _TCL_SetVar: TCL_SetVar.html
.. _TCL_EvalFile: TCL_EvalFile.html
.. _http://www.tcl.tk/doc/: http://www.tcl.tk/doc/
.. _TCL_UnsetVar: TCL_UnsetVar.html
.. _TCL_GetVar: TCL_GetVar.html
.. _ScilabEval: ScilabEval.html
.. _TCL_ExistVar: TCL_ExistVar.html


