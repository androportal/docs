


getAllocatedComplexSparseMatrix
===============================

Get complex sparse matrix variable.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    int getAllocatedComplexSparseMatrix(void* _pvCtx, int* _piAddress, int* _piRows, int* _piCols, int* _piNbItem, int** _piNbItemRow, int** _piColPos, double** _pdblReal, double** _pdblImg)



::

    int getNamedAllocatedComplexSparseMatrix(void* _pvCtx, const char* _pstName, int* _piRows, int* _piCols, int* _piNbItem, int** _piNbItemRow, int** _piColPos, double** _pdblReal, double** _pdblImg)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_piAddress Address of the Scilab variable.
: :_pstName Name of the variable for "named" functions.
: :_piRows Return number of rows.
: :_piCols Return number of columns.
: :_piNbItem Return number of non zero value.
: :_piNbItemRow Return number of item in each rows.
: :_piColPos Return column position for each item.
: :_pdblReal Return address of real data array.
: :_pdblImg Return address of imaginary data array (size: _iCols *
  _iRows)
:



Return value
~~~~~~~~~~~~

if successful 0, otherwise print error(s) message(s) in the Scilab
console and returns first error number.



