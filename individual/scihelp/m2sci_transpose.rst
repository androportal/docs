


' (Matlab operator)
===================

Transpose



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    '



::

    '




Particular cases
~~~~~~~~~~~~~~~~

:Character string transpose: In Scilab, the result of a character
  string transpose is the string itself; but in Matlab, transpose of a
  character string gives a column vector of characters. To have the same
  result in Scilab, use: **mtlb_t**.
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
    s = `mtlb_t`_('str1')
    s = ['s';'t';'r';'1']




