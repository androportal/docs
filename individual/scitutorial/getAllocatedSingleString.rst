


getAllocatedSingleString
========================

Get single string variable.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    int getAllocatedSingleString(void* _pvCtx, int* _piAddress, char** _pstData)



::

    int getAllocatedNamedSingleString(void* _pvCtx, const char* _pstName, char** _pstData)



::

    int getAllocatedSingleWideString(void* _pvCtx, int* _piAddress, wchar_t** _pwstData)



::

    int getAllocatedNamedSingleWideString(void* _pvCtx, const char* _pstName, wchar_t** _pwstData)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_piAddress Address of the Scilab variable.
: :_pstName Name of the variable for "named" functions.
: :_pstData Return string address.
: :_pwstData Return wide string address.
:



Return value
~~~~~~~~~~~~

if successful 0, otherwise print error(s) message(s) in the Scilab
console and returns first error number.



