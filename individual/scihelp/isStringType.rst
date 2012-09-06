


isStringType
============

Check if it is a string variable.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    int isStringType(void* _pvCtx, int* _piAddress)



::

    int isNamedStringType(void* _pvCtx, const char* _pstName)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_piAddress Address of the Scilab variable.
: :_pstName Name of the variable for "named" functions.
:



Return value
~~~~~~~~~~~~

1 if variable is a string type, otherwise 0



