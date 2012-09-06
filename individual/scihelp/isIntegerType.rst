


isIntegerType
=============

Check if it is a double variable.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    int isIntegerType(void* _pvCtx, int* _piAddress)



::

    int isNamedIntegerType(void* _pvCtx, const char* _pstName)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_piAddress Position in the Scilab memory where you want to put the
  variable.
: :_pstName Name of the variable for "named" functions.
:



Return value
~~~~~~~~~~~~

1 if variable is of integer type, otherwise 0



