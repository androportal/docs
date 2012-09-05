


getScalarComplexDouble
======================

Get scalar complex double variable.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    int getScalarComplexDouble(void* _pvCtx, int* _piAddress, double* _pdblReal, double* _pdblImg)



::

    int getNamedScalarComplexDouble(void* _pvCtx, const char* _pstName, double* _pdblReal, double* _pdblImg)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_piAddress Position in the Scilab memory where you want to put the
  variable.
: :_pstName Name of the variable for "named" functions.
: :_pdblReal Real part value.
: :_pdblImg Imaginary part value.
:



Return value
~~~~~~~~~~~~

if successful 0, otherwise print error(s) message(s) in the Scilab
console and returns first error number.



