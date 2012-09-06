


getAllocatedSinglePoly
======================

Get single complex polynomial variable.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    int getAllocatedSingleComplexPoly(void* _pvCtx, int* _piAddress, int* _piNbCoef, double** _pdblReal, double** _pdblImg)



::

    int getAllocatedNamedSingleComplexPoly(void* _pvCtx, const char* _pstName, int* _piNbCoef, double** _pdblReal, double** _pdblImg)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_piAddress Address of the Scilab variable.
: :_pstName Name of the variable for "named" functions.
: :_piNbCoef Returns number of coefficient.
: :_pdblReal Return array of real part.
: :_pdblImg Return array of imaginary part.
:



Return value
~~~~~~~~~~~~

if successful 0, otherwise print error(s) message(s) in the Scilab
console and returns first error number.



