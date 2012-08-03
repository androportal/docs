====
"TCL_GetVar"
====

Scilab Function Last update : 18/11/2005
**TCL_GetVar** - Get a tcl/tk variable value



Calling Sequence
~~~~~~~~~~~~~~~~

value=TCL_GetVar(Varname [,interp])




Parameters
~~~~~~~~~~


+ **varname** : character string. Contains the name of the tcl/tk
  variable.
+ **interp** : optional character string parameter. Name of the slave
  tcl interpreter in which the operation has to be performed. If not
  provided, it defaults to the main tcl interpreter created by Scilab.
+ **value** : may be a character string or a strings matrix. Contains
  the value of the tcl/tk variable **varname** in the interpreter
  **interp** .




Description
~~~~~~~~~~~

When tcl/tk support is enabled in Scilab, this routine can be used to
retreive the value of a tcl/tk variable.



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
    a=['AA','BB','CC';'DD','EE','FF'];
    TCL_CreateSlave('SlaveInterp')
    TCL_SetVar("A_slave",a,'SlaveInterp')
    AfromTCL_slave=TCL_GetVar('A_slave','SlaveInterp')
    TCL_DeleteInterp('SlaveInterp')
    //----------------------------------------------------
    b=[66,44,11;22,33,55];
    TCL_CreateSlave('SlaveInterp1')
    TCL_SetVar("B_slave",b,'SlaveInterp1')
    BfromTCL_slave=TCL_GetVar('B_slave','SlaveInterp1')
    TCL_DeleteInterp('SlaveInterp1')
    //----------------------------------------------------
    TCL_CreateSlave('SlaveInterp2')
    TCL_SetVar("StringTCL_slave","string in slave interpreter",'SlaveInterp2')
    StringFromTCL_slave=TCL_GetVar("StringTCL_slave",'SlaveInterp2')
    TCL_DeleteInterp('SlaveInterp2')
    //----------------------------------------------------
    TCL_CreateSlave('SlaveInterp3')
    TCL_SetVar("ScalarTCL_slave",1.22,'SlaveInterp3')
    ScalarFromTCL_slave=TCL_GetVar("ScalarTCL_slave",'SlaveInterp3')
    TCL_DeleteInterp('SlaveInterp3')
    //----------------------------------------------------




See Also
~~~~~~~~

` **ScilabEval** `_,` **TCL_EvalFile** `_,` **TCL_EvalStr** `_,`
**TCL_SetVar** `_,` **TCL_ExistVar** `_,` **TCL_UnsetVar** `_,`
**TCL_UpVar** `_,` **TCL_CreateSlave** `_,` **TCL_DeleteInterp** `_,



Author
~~~~~~

Allan CORNET

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
      : ://./tksci/TCL_SetVar.htm
.. _
      : ://./tksci/TCL_UpVar.htm
.. _
      : ://./tksci/TCL_DeleteInterp.htm
.. _
      : ://./tksci/TCL_UnsetVar.htm


