


TCL_ExistInterp
===============

Return %T if a tcl slave interperter exists



Calling Sequence
~~~~~~~~~~~~~~~~


::

    OK=TCL_ExistInterp(interp)




Arguments
~~~~~~~~~

:interp character string parameter. Name of the slave tcl interpreter.
: :ok boolean. %T if TCL interpreter exists.
:



Description
~~~~~~~~~~~

This routine allows to test if TCL interpreter exists.

More information about Tcl/Tk: `http://www.tcl.tk/doc/`_



Examples
~~~~~~~~


::

    TCL_ExistInterp('SlaveInterp')
    `TCL_CreateSlave`_('SlaveInterp')
    TCL_ExistInterp('SlaveInterp')
    `TCL_DeleteInterp`_('SlaveInterp')




See Also
~~~~~~~~


+ `TCL_CreateSlave`_ Create a TCL slave interpreter
+ `TCL_DeleteInterp`_ delete TCL interpreter


.. _TCL_DeleteInterp: TCL_DeleteInterp.html
.. _http://www.tcl.tk/doc/: http://www.tcl.tk/doc/
.. _TCL_CreateSlave: TCL_CreateSlave.html


