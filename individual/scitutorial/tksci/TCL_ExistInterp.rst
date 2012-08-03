====
"TCL_ExistInterp"
====

Scilab Function Last update : 18/11/2005
**TCL_ExistInterp** - Return %T if a tcl slave interperter exists



Calling Sequence
~~~~~~~~~~~~~~~~

OK=TCL_ExistInterp(interp)




Parameters
~~~~~~~~~~


+ **interp** : character string parameter. Name of the slave tcl
  interpreter.
+ **ok** : boolean. %T if TCL interpreter exists.




Description
~~~~~~~~~~~

This routine allows to test if TCL interpreter exists.



Examples
~~~~~~~~


::

    
      TCL_ExistInterp('SlaveInterp')
      TCL_CreateSlave('SlaveInterp')
      TCL_ExistInterp('SlaveInterp')
      TCL_DeleteInterp('SlaveInterp')




See Also
~~~~~~~~

` **TCL_CreateSlave** `_,` **TCL_DeleteInterp** `_,



Author
~~~~~~

Allan CORNET

.. _
      : ://./tksci/TCL_DeleteInterp.htm
.. _
      : ://./tksci/TCL_CreateSlave.htm


