====
"TCL_DeleteInterp"
====

Scilab Function Last update : 30/11/2005
**TCL_DeleteInterp** - delete TCL interpreter



Calling Sequence
~~~~~~~~~~~~~~~~

TCL_DeleteInterp(interp)
TCL_DeleteInterp()




Parameters
~~~~~~~~~~


+ **interp** : character string parameter. Name of the slave tcl
  interpreter to delete. If not provided, it defaults to the main tcl
  interpreter created by Scilab.




Description
~~~~~~~~~~~

This routine allows to delete a TCL slave interpreter or the main
scilab TCL interpreter.



Examples
~~~~~~~~


::

    
    TCL_SetVar("Scilab","OK")
    TCL_ExistVar("Scilab")
    TCL_DeleteInterp()
    TCL_ExistVar("Scilab")
    TCL_CreateSlave('BisInterp')
    TCL_ExistInterp('BisInterp')
    TCL_SetVar("Scilab","OK",'BisInterp')
    TCL_ExistVar("Scilab",'BisInterp')
    TCL_DeleteInterp('BisInterp')
    TCL_ExistInterp('BisInterp')




See Also
~~~~~~~~

` **TCL_SetVar** `_,` **TCL_ExistVar** `_,` **TCL_CreateSlave** `_,`
**TCL_ExistInterp** `_,



Author
~~~~~~

Allan CORNET

.. _
      : ://./tksci/TCL_ExistVar.htm
.. _
      : ://./tksci/TCL_ExistInterp.htm
.. _
      : ://./tksci/TCL_CreateSlave.htm
.. _
      : ://./tksci/TCL_SetVar.htm


