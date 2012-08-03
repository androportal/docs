====
"TCL_ExistVar"
====

Scilab Function Last update : 18/11/2005
**TCL_ExistVar** - Return %T if a tcl variable exists



Calling Sequence
~~~~~~~~~~~~~~~~

OK=TCL_ExistVar(varname [,interp])




Parameters
~~~~~~~~~~


+ **varname** : character string. Contains the name of the tcl/tk
  variable.
+ **interp** : optional character string parameter. Name of the slave
  tcl interpreter in which the operation has to be performed. If not
  provided, it defaults to the main tcl interpreter created by Scilab.
+ **ok** : boolean. %T if varname exists.




Description
~~~~~~~~~~~

This routine allows to test if a tcl variable exists.



Examples
~~~~~~~~


::

    
    TCL_SetVar("Scilab","OK")
    TCL_GetVar("Scilab")
    TCL_UnsetVar("Scilab")
    TCL_ExistVar("Scilab")
                                 
    TCL_SetVar("aa",1)
    TCL_CreateSlave('SlaveInterp');
    TCL_SetVar("aa",2,'SlaveInterp')
    TCL_ExistVar("aa")
    TCL_GetVar("aa")
    TCL_UnsetVar("aa")
    TCL_GetVar("aa",'SlaveInterp')
    TCL_UnsetVar("aa",'SlaveInterp')
    TCL_ExistVar("aa",'SlaveInterp')
    TCL_DeleteInterp('SlaveInterp')




See Also
~~~~~~~~

` **ScilabEval** `_,` **TCL_EvalFile** `_,` **TCL_EvalStr** `_,`
**TCL_GetVar** `_,` **TCL_SetVar** `_,` **TCL_UnsetVar** `_,`
**TCL_UpVar** `_,` **TCL_CreateSlave** `_,



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
      : ://./tksci/TCL_CreateSlave.htm
.. _
      : ://./tksci/TCL_SetVar.htm
.. _
      : ://./tksci/TCL_UpVar.htm
.. _
      : ://./tksci/TCL_UnsetVar.htm


