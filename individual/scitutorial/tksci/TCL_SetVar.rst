====
"TCL_SetVar"
====

Scilab Function Last update : 18/11/2005
**TCL_SetVar** - Set a tcl/tk variable value



Calling Sequence
~~~~~~~~~~~~~~~~

TCL_SetVar(varname, value [,interp])




Parameters
~~~~~~~~~~


+ **varname** : character string. Contains the name of the tcl/tk
  variable to set.
+ **value** : may be a character string, a scalar, a real or string
  matrix (m x n). Contains the value to give to the tcl/tk variable.
+ **interp** : optional character string parameter. Name of the slave
  tcl interpreter in which the operation has to be performed. If not
  provided, it defaults to the main tcl interpreter created by Scilab.




Description
~~~~~~~~~~~

This routine allows to set a variable within a tcl/tk interpreter.
When tcl/tk support is enabled in scilab, this routine can be used to
set up the value of a tcl/tk variable. This can be useful to change
some value in the tcl/tk interpreter without having to build a tcl/tk
instruction (and use **TCL_EvalStr** ).



Examples
~~~~~~~~


::

    
    //----------------------------------------------------
    TCL_EvalStr("toplevel .tst1");
    // creates a toplevel TK window. 
    TCL_EvalStr("entry .tst1.e -textvariable tvar");
    // create an editable entry
    TCL_EvalStr("set tvar foobar");
    // set the entry value
    TCL_EvalStr("pack .tst1.e");
    // pack the entry widget. It appears on the screen.
    text=TCL_GetVar("tvar")
    // retrieve the variable value
    // change the entry text and repeat the last command ...
    //delete the toplevel TK window.
    TCL_EvalStr("destroy .tst1")
    //----------------------------------------------------
    a=["A","B","C";"D","E","F"];
    TCL_SetVar("A",a)
    AfromTCL=TCL_GetVar("A")
    //----------------------------------------------------
    b=[6,4,1;2,3,5];
    TCL_SetVar("B",b)
    BfromTCL=TCL_GetVar("B")
    //----------------------------------------------------
    TCL_SetVar("StringTCL","string")
    StringFromTCL=TCL_GetVar("StringTCL")
    //----------------------------------------------------
    TCL_SetVar("ScalarTCL",1.22)
    ScalarFromTCL=TCL_GetVar("ScalarTCL")
    
    //----------------------------------------------------
    // Examples with a slave interpreter
    //----------------------------------------------------
    TCL_CreateSlave('TCLSlave')
    a=['AA','BB','CC';'DD','EE','FF'];
    TCL_SetVar("A_slave",a,'TCLSlave')
    AfromTCL_slave=TCL_GetVar('A_slave','TCLSlave')
    TCL_DeleteInterp('TCLSlave')
    //----------------------------------------------------
    TCL_CreateSlave('TCLSlave')
    b=[66,44,11;22,33,55];
    TCL_SetVar("B_slave",b,'TCLSlave')
    BfromTCL_slave=TCL_GetVar('B_slave','TCLSlave')
    TCL_DeleteInterp('TCLSlave')
    //----------------------------------------------------
    TCL_CreateSlave('TCLSlave')
    TCL_SetVar("StringTCL_slave","string in slave interpreter",'TCLSlave')
    StringFromTCL_slave=TCL_GetVar("StringTCL_slave",'TCLSlave')
    TCL_DeleteInterp('TCLSlave')
    //----------------------------------------------------
    TCL_CreateSlave('TCLSlave')
    TCL_SetVar("ScalarTCL_slave",1.22,'TCLSlave')
    ScalarFromTCL_slave=TCL_GetVar("ScalarTCL_slave",'TCLSlave')
    TCL_DeleteInterp('TCLSlave')
    //----------------------------------------------------
    
    




See Also
~~~~~~~~

` **ScilabEval** `_,` **TCL_EvalFile** `_,` **TCL_EvalStr** `_,`
**TCL_GetVar** `_,` **TCL_ExistVar** `_,` **TCL_UnsetVar** `_,`
**TCL_UpVar** `_,` **TCL_CreateSlave** `_,` **TCL_DeleteInterp** `_,



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
      : ://./tksci/TK_EvalStr.htm
.. _
      : ://./tksci/TCL_ExistVar.htm
.. _
      : ://./tksci/TCL_CreateSlave.htm
.. _
      : ://./tksci/TCL_UpVar.htm
.. _
      : ://./tksci/TCL_DeleteInterp.htm
.. _
      : ://./tksci/TCL_UnsetVar.htm


