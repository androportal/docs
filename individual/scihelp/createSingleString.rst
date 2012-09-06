


createSingleString
==================

create a single string variable.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    int createSingleString(void* _pvCtx, int _iVar, const char* _pstStrings)



::

    int createNamedSingleString(void* _pvCtx, const char* _pstName, const char* _pstStrings)



::

    int createSingleString(void* _pvCtx, int _iVar, const char* _pstStrings)



::

    int createNamedSingleWideString(void* _pvCtx, const char* _pstName, const wchar_t* _pwstStrings)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_iVar Position in the Scilab memory where you want to put the
  variable
: :_pstName Name of the variable for "named" functions.
: :_pstStrings Address of string.
: :_pwstStrings Address of wide string.
:



Return value
~~~~~~~~~~~~

if successful 0, otherwise print error(s) message(s) in the Scilab
console and returns first error number.



