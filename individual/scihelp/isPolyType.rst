


isPolyType
==========

Check if it is a polynomial variable.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    int isPolyType(void* _pvCtx, int* _piAddress)



::

    int isNamedPolyType(void* _pvCtx, const char* _pstName)




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

1 if variable is a polynomial type, otherwise 0



