


.' (Matlab operator)
====================

Elementwise transpose



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    .'



::

    .'




Particular cases
~~~~~~~~~~~~~~~~

:Character string elementwise transpose In Scilab, the result of a
  character string elementwise transpose is the string itself; but in
  Matlab, elementwise transpose of a character string gives a column
  vector of characters. To have the same result in Scilab, use:
  **mtlb_0**.
:



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    s = ('str1')'
    s = ['s';'t';'r';'1']



::

    s = ('str1')'
    s = 'str1'
    s = `mtlb_0`_('str1')
    s = ['s';'t';'r';'1']




