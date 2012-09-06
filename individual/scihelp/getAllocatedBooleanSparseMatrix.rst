


getAllocatedBooleanSparseMatrix
===============================

Get sparse matrix attributs.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    int getAllocatedBooleanSparseMatrix(void* _pvCtx, int* _piAddress, int* _piRows, int* _piCols, int* _piNbItem, int** _piNbItemRow, int** _piColPos)



::

    int getNamedAllocatedBooleanSparseMatrix(void* _pvCtx, const char* _pstName, int* _piRows, int* _piCols, int* _piNbItem, int** _piNbItemRow, int** _piColPos)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_piAddress Address of the Scilab variable.
: :_pstName Name of the variable for "named" functions.
: :_piRows Return number of rows of the variable.
: :_piCols Return number of columns of the variable.
: :_piNbItem Return number of non %f value.
: :_piNbItemRow Return number of item in each rows (size: *_piRows).
: :_piColPos Return column position for each item (size: *_piNbItem).
:



Return value
~~~~~~~~~~~~

if successful 0, otherwise print error(s) message(s) in the Scilab
console and returns first error number.



