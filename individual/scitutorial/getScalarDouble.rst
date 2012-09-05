


getScalarDouble
===============

Get scalar double variable.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    int getScalarDouble(void* _pvCtx, int* _piAddress, double* _pdblReal)



::

    int getNamedScalarDouble(void* _pvCtx, const char* _pstName, double* _pdblReal)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_piAddress Address of the Scilab variable.
: :_pstName Name of the variable for "named" functions.
: :_pdblReal Double value.
:



Return value
~~~~~~~~~~~~

if successful 0, otherwise print error(s) message(s) in the Scilab
console and returns first error number.



