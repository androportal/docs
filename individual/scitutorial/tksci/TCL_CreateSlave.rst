====
"TCL_CreateSlave"
====

Scilab Function Last update : 18/11/2005
**TCL_CreateSlave** - Create a TCL slave interpreter



Calling Sequence
~~~~~~~~~~~~~~~~

TCL_CreateSlave(interp)




Parameters
~~~~~~~~~~


+ **interp** : character string parameter. Name of the slave tcl
  interpreter in which the operation has to be performed.




Description
~~~~~~~~~~~

This routine allows to create a TCL slave interpreter.



Examples
~~~~~~~~


::

    
      TCL_CreateSlave('TCLinterp')
      TCL_SetVar('a','r','TCLinterp')
      TCL_ExistVar('a','TCLinterp')
      TCL_ExistVar('a')
      TCL_DeleteInterp('TCLinterp')
    




See Also
~~~~~~~~

` **TCL_SetVar** `_,` **TCL_ExistVar** `_,` **TCL_DeleteInterp** `_,



Author
~~~~~~

Allan CORNET

.. _
      : ://./tksci/TCL_ExistVar.htm
.. _
      : ://./tksci/TCL_DeleteInterp.htm
.. _
      : ://./tksci/TCL_SetVar.htm


