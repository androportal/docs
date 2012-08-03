====
"TCL_UpVar"
====

Scilab Function Last update : 18/11/2005
**TCL_UpVar** - Make a link from a tcl source variable to a tcl
destination variable



Calling Sequence
~~~~~~~~~~~~~~~~

OK=TCL_UpVar(varname1,varname2,[interp])




Parameters
~~~~~~~~~~


+ **varname1** : character string. Contains the name of the tcl source
  variable.
+ **varname2** : character string. Contains the name of the tcl
  destination variable.
+ **interp** : optional character string parameter. Name of the slave
  tcl interpreter in which the operation has to be performed. If not
  provided, it defaults to the main tcl interpreter created by Scilab.
+ **ok** : boolean. %T if it is ok.




Description
~~~~~~~~~~~

Make a link from a tcl source variable to a tcl destination variable.



Examples
~~~~~~~~


::

    
    TCL_SetVar("Scilab","OK")
    TCL_UpVar("Scilab","ScilabBis")
    TCL_GetVar("ScilabBis")
    TCL_SetVar("Scilab","NOK")
    TCL_GetVar("ScilabBis")
    TCL_SetVar("ScilabBis","modified")
    TCL_GetVar("ScilabBis")
    TCL_GetVar("Scilab")
    
    TCL_CreateSlave('InterpBis')
    TCL_SetVar("Scilab","Good",'InterpBis')
    TCL_UpVar("Scilab","ScilabBis",'InterpBis')
    TCL_GetVar("ScilabBis",'InterpBis')
    TCL_SetVar("Scilab","Not good",'InterpBis')
    TCL_GetVar("ScilabBis",'InterpBis')
    TCL_SetVar("ScilabBis","modified again",'InterpBis')
    TCL_GetVar("ScilabBis",'InterpBis')
    TCL_GetVar("Scilab",'InterpBis')
    TCL_DeleteInterp('InterpBis')
     
      




See Also
~~~~~~~~

` **ScilabEval** `_,` **TCL_EvalFile** `_,` **TCL_EvalStr** `_,`
**TCL_GetVar** `_,` **TCL_SetVar** `_,` **TCL_ExistVar** `_,`
**TCL_UnsetVar** `_,` **TCL_CreateSlave** `_,` **TCL_DeleteInterp**
`_,



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
      : ://./tksci/TCL_DeleteInterp.htm
.. _
      : ://./tksci/TCL_UnsetVar.htm


