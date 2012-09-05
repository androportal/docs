


getAllocatedMatrixOfPoly
========================

Get matrix of polynomial variable.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    int getAllocatedMatrixOfPoly(void* _pvCtx, int* _piAddress, int* _piRows, int* _piCols, int** _piNbCoef, double*** _pdblReal)



::

    int getAllocatedNamedMatrixOfPoly(void* _pvCtx, const char* _pstName, int* _piRows, int* _piCols, int** _piNbCoef, double*** _pdblReal)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_piAddress Address of the Scilab variable.
: :_pstName Name of the variable for "named" functions.
: :_piRows Return number of rows.
: :_piCols Return number of columns.
: :_piNbCoef Return number of coefficient for each polynomialial.
  (must be allocated)
: :_pdblReal Return array of coefficients.
:



Return value
~~~~~~~~~~~~

if successful 0, otherwise print error(s) message(s) in the Scilab
console and returns first error number.



