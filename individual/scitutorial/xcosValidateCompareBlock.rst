


xcosValidateCompareBlock
========================

Function to compare two Xcos Blocks.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [status, message] = xcosValidateCompareBlock(block1, block2)




Arguments
~~~~~~~~~

:block1: An Xcos block.: :block2: An Xcos block.:



Module
~~~~~~


+ `xcos`_




Description
~~~~~~~~~~~
This function is used to compare two Blocks.
Function will go through each block field and compare the two values.
The function returns true if the two blocks are equal, false
otherwise. `message` will contain some information about non-
homogeneous fields.



File content
~~~~~~~~~~~~


+ SCI/modules/xcos/macros/xcosValidateCompareBlock.sci




Examples
~~~~~~~~



::

    `loadXcosLibs`_();
    block1 = CONST_m("define");
    block2 = CONST_m("define");
    [status, message] = xcosValidateCompareBlock(block1,block2)
    
    block2.model.rpar = 42;
    [status, message] = xcosValidateCompareBlock(block1,block2)





See Also
~~~~~~~~


+ `scs_m structure`_
+ `xcos: Block diagram editor and GUI for the hybrid simulator`_




History
~~~~~~~
Version Description 5.4.0 Function xcosValidateCompareBlock
introduced.
.. _scs_m structure: scicos_diagram.html
.. _xcos: Block diagram editor and GUI for the hybrid simulator: xcos.html


