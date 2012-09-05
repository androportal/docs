


+ (Matlab operator)
===================

Plus



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    +



::

    +




Particular cases
~~~~~~~~~~~~~~~~

:Character strings addition: In Scilab, string addition is the same as
  string concatenation, what is done in Matlab by **strcat** function.
  In Matlab, string addition is the equivalent of the addition of
  corresponding ASCII codes.
: :Empty matrix and addition: In Matlab, addition can only be made if
  the operands have the same size unless one is a scalar. For exemple,
  empty matrices can only be added to another empty matrix or a scalar.
  Note that when you add a scalar and an empty matrix, Matlab result is
  always an empty matrix while in Scilab, result is equal to the scalar.
: :Unary plus: In Matlab, unary plus exists, but in Scilab it is
  automatically deleted when compiling so we can consider that Scilab
  unary plus does not exist.
:



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    str = 'str1'+'str2'
    str = [230,232,228,99]
    str = `strcat`_('str1','str2')
    str = 'str1str2'
    A = 1 + []
    A = []



::

    str = 'str1'+'str2'
    str = 'str1str2'
    str = `strcat`_(['str1','str2'])
    str = 'str1str2'
    A = 1 + []
    A = 1




