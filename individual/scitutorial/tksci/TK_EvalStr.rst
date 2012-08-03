====
"TK_EvalStr"
====

Scilab Function Last update : 16/12/2005
**TCL_EvalStr** - Evaluate a string whithin the tcl/tk interpreter

**TK_EvalStr** - Evaluate a string whithin the tcl/tk interpreter
(obsolete)



Calling Sequence
~~~~~~~~~~~~~~~~

TCL_EvalStr(str [,interp])




Parameters
~~~~~~~~~~


+ **str** : string or vector of strings, contains the tcl/tk
  instructions
+ **interp** : optional character string parameter. Name of the slave
  tcl interpreter in which the operation has to be performed. If not
  provided, it defaults to the main tcl interpreter created by Scilab.




Description
~~~~~~~~~~~

This routine allows to evaluate tcl/tk instructions with the tcl/tk
interpreter launched with Scilab (when the **interp** parameter is not
given), or in a slave interpreter.

When tcl/tk support is enabled in Scilab, you can evaluate tcl/tk
expression from Scilab interpreter. In fact, Scilab launches a main
tcl/tk interpreter. The Scilab instruction **TCL_EvalStr** can be used
to evaluate expressions without having to write tcl/tk instructions in
a separated file (this capability is provided by **TCL_EvalFile** ).



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
    TCL_CreateSlave('TCLSlave');
    TCL_EvalStr('set test ""in Slave TCL Interp""','TCLSlave');
    TCL_GetVar('test','TCLSlave')
    
    TCL_DeleteInterp('TCLSlave')




See Also
~~~~~~~~

` **ScilabEval** `_,` **TCL_EvalFile** `_,` **TCL_GetVar** `_,`
**TCL_SetVar** `_,` **TCL_ExistVar** `_,` **TCL_UnsetVar** `_,`
**TCL_UpVar** `_,



Author
~~~~~~

Allan CORNET

.. _
      : ://./tksci/TCL_GetVar.htm
.. _
      : ://./tksci/TK_EvalFile.htm
.. _
      : ://./tksci/ScilabEval.htm
.. _
      : ://./tksci/TCL_ExistVar.htm
.. _
      : ://./tksci/TCL_SetVar.htm
.. _
      : ://./tksci/TCL_UpVar.htm
.. _
      : ://./tksci/TCL_UnsetVar.htm


