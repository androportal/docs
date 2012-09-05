


getAllocatedMatrixOfString
==========================

Get matrix of string variable.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    int getAllocatedMatrixOfString(void* _pvCtx, int* _piAddress, int* _piRows, int* _piCols, char*** _pstData)



::

    int getAllocatedNamedMatrixOfString(void* _pvCtx, const char* _pstName, int* _piRows, int* _piCols, char*** _pstData)



::

    int getAllocatedMatrixOfWideString(void* _pvCtx, int* _piAddress, int* _piRows, int* _piCols, wchar_t*** _pwstData)



::

    int getAllocatedNamedMatrixOfWideString(void* _pvCtx, const char* _pstName, int* _piRows, int* _piCols, wchar_t*** _pwstData)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_piAddress Address of the Scilab variable.
: :_pstName Name of the variable for "named" functions.
: :_piRows Return number of rows.
: :_piCols Return number of columns.
: :_pstData Return array of string
: :_pwstData Return array of wide string.
:



Return value
~~~~~~~~~~~~

if successful 0, otherwise print error(s) message(s) in the Scilab
console and returns first error number.



