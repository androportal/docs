====
"TCL_UnsetVar"
====

Scilab Function Last update : 18/11/2005
**TCL_UnsetVar** - Remove a tcl variable



Calling Sequence
~~~~~~~~~~~~~~~~

OK=TCL_UnsetVar(varname [,interp])




Parameters
~~~~~~~~~~


+ **varname** : character string. Contains the name of the tcl/tk
  variable to unset.
+ **interp** : optional character string parameter. Name of the slave
  tcl interpreter in which the operation has to be performed. If not
  provided, it defaults to the main tcl interpreter created by Scilab.
+ **ok** : boolean. %T if varname was deleted.




Description
~~~~~~~~~~~

This routine allows to unset a tcl variable.



Examples
~~~~~~~~


::

    
    TCL_SetVar("Scilab","OK")
    TCL_GetVar("Scilab")
    TCL_UnsetVar("Scilab")
    TCL_ExistVar("Scilab")
    
    TCL_CreateSlave('InterpSlave');
    TCL_SetVar("Scilab","Good",'InterpSlave')
    TCL_GetVar("Scilab",'InterpSlave')
    TCL_UnsetVar("Scilab",'InterpSlave')
    TCL_ExistVar("Scilab",'InterpSlave')
    TCL_DeleteInterp('InterpSlave')
    
      




See Also
~~~~~~~~

` **ScilabEval** `_,` **TCL_EvalFile** `_,` **TCL_EvalStr** `_,`
**TCL_GetVar** `_,` **TCL_SetVar** `_,` **TCL_ExistVar** `_,`
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
      : ://./tksci/TCL_SetVar.htm
.. _
      : ://./tksci/TCL_UpVar.htm
.. _
      : ://./tksci/TCL_DeleteInterp.htm


