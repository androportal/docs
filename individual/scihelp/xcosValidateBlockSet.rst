


xcosValidateBlockSet
====================

Function to validate Xcos Block interface function.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [status, message] = xcosValidateBlockSet(interfFunctionName)




Arguments
~~~~~~~~~

:interfFunctionName: A Xcos block interface function name. :



Module
~~~~~~


+ `xcos`_




Description
~~~~~~~~~~~
This function is used to test if a Block interface function will not
fail while called by xcos simulation process.
Function will try to perform a `define` then a `set` job on the given
interface function name like the xcos simulation do. Function override
some configuration functions: `getvalue`, `x_mdialog`, ...



File content
~~~~~~~~~~~~


+ SCI/modules/xcos/macros/xcosValidateBlockSet.sci




Examples
~~~~~~~~



::

    `loadXcosLibs`_();
    [status, message] = xcosValidateBlockSet("SPLIT_f")
    [status, message] = xcosValidateBlockSet("CONST_m")
    [status, message] = xcosValidateBlockSet("foo")





See Also
~~~~~~~~


+ `scs_m structure`_
+ `xcos: Block diagram editor and GUI for the hybrid simulator`_




History
~~~~~~~
Version Description 5.4.0 Function xcosValidateBlockSet introduced.
.. _scs_m structure: scicos_diagram.html
.. _xcos: Block diagram editor and GUI for the hybrid simulator: xcos.html


