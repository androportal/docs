


TCL_DeleteInterp
================

delete TCL interpreter



Calling Sequence
~~~~~~~~~~~~~~~~


::

    TCL_DeleteInterp(interp)
    TCL_DeleteInterp()




Arguments
~~~~~~~~~

:interp character string parameter. Name of the slave tcl interpreter
  to delete. If not provided, it defaults to the main tcl interpreter
  created by Scilab.
:



Description
~~~~~~~~~~~

This routine allows to delete a TCL slave interpreter or the main
scilab TCL interpreter.

More information about Tcl/Tk: `http://www.tcl.tk/doc/`_



Examples
~~~~~~~~


::

    `TCL_SetVar`_("Scilab","OK")
    `TCL_ExistVar`_("Scilab")
    TCL_DeleteInterp()
    `TCL_ExistVar`_("Scilab")
    `TCL_CreateSlave`_('BisInterp')
    `TCL_ExistInterp`_('BisInterp')
    `TCL_SetVar`_("Scilab","OK",'BisInterp')
    `TCL_ExistVar`_("Scilab",'BisInterp')
    TCL_DeleteInterp('BisInterp')
    `TCL_ExistInterp`_('BisInterp')




See Also
~~~~~~~~


+ `TCL_SetVar`_ Set a tcl/tk variable value
+ `TCL_ExistVar`_ Return %T if a tcl variable exists
+ `TCL_CreateSlave`_ Create a TCL slave interpreter
+ `TCL_ExistInterp`_ Return %T if a tcl slave interperter exists


.. _TCL_SetVar: TCL_SetVar.html
.. _TCL_ExistVar: TCL_ExistVar.html
.. _http://www.tcl.tk/doc/: http://www.tcl.tk/doc/
.. _TCL_ExistInterp: TCL_ExistInterp.html
.. _TCL_CreateSlave: TCL_CreateSlave.html


