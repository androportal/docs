


TCL_CreateSlave
===============

Create a TCL slave interpreter



Calling Sequence
~~~~~~~~~~~~~~~~


::

    TCL_CreateSlave(slaveName[, isSafe])




Arguments
~~~~~~~~~

:slaveName String: Name of the TCL slave interpreter to create.
: :isSafe Boolean: `%T` to create a safe slave interpreter, `%F`
  otherwise. The default value is `%F`. A safe slave is not allowed to
  perform some operations, see the TCL documentation for more
  information.
:



Description
~~~~~~~~~~~

This routine allows to create a TCL slave interpreter.

More information about Tcl/Tk: `http://www.tcl.tk/doc/`_



Examples
~~~~~~~~


::

    TCL_CreateSlave("TCLinterp")
    `TCL_SetVar`_("a","r","TCLinterp")
    `TCL_ExistVar`_("a","TCLinterp")
    `TCL_ExistVar`_("a")
    `TCL_DeleteInterp`_("TCLinterp")
    
    TCL_CreateSlave("TCLinterp", %T)
    `TCL_SetVar`_("a","r","TCLinterp")
    `TCL_ExistVar`_("a","TCLinterp")
    `TCL_ExistVar`_("a")
    `TCL_DeleteInterp`_("TCLinterp")




See Also
~~~~~~~~


+ `TCL_SetVar`_ Set a tcl/tk variable value
+ `TCL_ExistVar`_ Return %T if a tcl variable exists
+ `TCL_DeleteInterp`_ delete TCL interpreter


.. _TCL_ExistVar: TCL_ExistVar.html
.. _TCL_SetVar: TCL_SetVar.html
.. _http://www.tcl.tk/doc/: http://www.tcl.tk/doc/
.. _TCL_DeleteInterp: TCL_DeleteInterp.html


