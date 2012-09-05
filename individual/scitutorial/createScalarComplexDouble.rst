


createScalarComplexDouble
=========================

Create a scalar complex double in Scilab memory.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    int createScalarComplexDouble(void* _pvCtx, int _iVar, double _dblReal, double _dblImg)



::

    int createNamedScalarComplexDouble(void* _pvCtx, const char* _pstName, double _dblReal, double _dblImg)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_iVar Position in the Scilab memory where you want to put the
  variable.
: :_pstName Name of the variable for "named" functions.
: :_dblReal Real part value.
: :_dblImg imaginary part value.
:



Return value
~~~~~~~~~~~~

if successful 0, otherwise print error(s) message(s) in the Scilab
console and returns first error number.



