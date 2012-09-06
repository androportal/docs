


getScalarBoolean
================

Read scalar boolean data from a gateway argument.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    int getScalarBoolean(void* _pvCtx, int* _piAddress, int* _piBool)



::

    int getNamedScalarBoolean(void* _pvCtx, const char* _pstName, int* _piBool)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_piAddress Address of the Scilab variable.
: :_pstName Name of the variable for "named" functions.
: :_piBool Return boolean value.
:



Return value
~~~~~~~~~~~~

if successful 0, otherwise print error(s) message(s) in the Scilab
console and returns first error number.



