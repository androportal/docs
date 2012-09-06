


Sparse writing (Scilab gateway)
===============================

How to write sparse matrix in a gateway.
Create from existing data.


Calling Sequence
~~~~~~~~~~~~~~~~

Input argument profile:


::

    SciErr createSparseMatrix(void* _pvCtx, int _iVar, int _iRows, int _iCols, int _iNbItem, const int* _piNbItemRow, const int* _piColPos, const double* _pdblReal)



::

    SciErr createComplexSparseMatrix(void* _pvCtx, int _iVar, int _iRows, int _iCols, int _iNbItem, const int* _piNbItemRow, const int* _piColPos, const double* _pdblReal, const double* _pdblImg)


Named variable profile:


::

    SciErr createNamedSparseMatrix(void* _pvCtx, const char* _pstName, int _iRows, int _iCols, int _iNbItem, const int* _piNbItemRow, const int* _piColPos, const double* _pdblReal)



::

    SciErr createNamedComplexSparseMatrix(void* _pvCtx, const char* _pstName, int _iRows, int _iCols, int _iNbItem, const int* _piNbItemRow, const int* _piColPos, const double* _pdblReal, const double* _pdblImg)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h
: :_iVar Position in the Scilab memory where you want to put the
  variable.
: :_pstName Name of the variable for "named" functions.
: :_iRows Number of rows of the new variable.
: :_iCols Number of columns of the new variable.
: :_iNbItem Number of non zero itmes in the sparse.
: :_piNbItemRow Number of item in each rows (size: _iRows).
: :_piColPos Column position for each item (size: _iNbItem).
: :_pdblReal Address of real data array (size: _iNbItem).
: :_pdblImg Address of imaginary data array (size: _iNbItem). This
  argument does not exist with createSparseMatrix and
  createNamedSparseMatrix.
: :SciErr Error structure where is stored errors messages history and
  first error number.
:
Write directly in Scilab memory.


Calling Sequence
~~~~~~~~~~~~~~~~

Input argument profile:


::

    SciErr allocSparseMatrix(void* _pvCtx, int _iVar, int _iRows, int _iCols, int _iNbItem, int** _piNbItemRow, int** _piColPos, double** _pdblReal)



::

    SciErr allocComplexSparseMatrix(void* _pvCtx, int _iVar, int _iRows, int _iCols, int _iNbItem, int** _piNbItemRow, int** _piColPos, double** _pdblReal, double** _pdblImg)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_iVar Position in the Scilab memory where you want to put the
  variable.
: :_iRows Number of rows of the new variable.
: :_iCols Number of columns of the new variable.
: :_iNbItem Number of non zero itmes in the sparse.
: :_piNbItemRow Return address of number of item in each rows (size:
  _iRows).
: :_piColPos Return address of column position for each item (size:
  _iNbItem).
: :_pdblReal Address of real data array (size: _iNbItem).
: :_pdblImg Address of imaginary data array (size: _iNbItem). This
  argument does not exist with allocSparseMatrix.
: :SciErr Error structure where is stored errors messages history and
  first error number.
:



Description
~~~~~~~~~~~

This help describes how to add sparse matrix.

Two types of functions can be used to write in the memory of Scilab.



Gateway Source
~~~~~~~~~~~~~~


::

    #include "api_scilab.h"
    int write_sparse(char *fname,unsigned long fname_len)
    {
    	SciErr sciErr;
    	int piNbItemRow[]	= {1,2,1};
    	int piColPos[]		= {8,4,7,2};
    	double pdblSReal[]	= {1,2,3,4};
    	double pdblSImg[]	= {4,3,2,1};
    	int iNbItem			= 4;
    
    	sciErr = createComplexSparseMatrix(pvApiCtx, nbInputArgument + 1, 3, 10, iNbItem, piNbItemRow, piColPos, pdblSReal, pdblSImg);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	AssignOutputVariable(1) = nbInputArgument + 1;
    	return 0;
    }




Scilab test script
~~~~~~~~~~~~~~~~~~


::

    sp_ref = `sparse`_([1,8;2,4;2,7;3,2],[1+4*%i,2+3*%i,3+2*%i,4+%i], [3,10]);
    sp = write_sparse();
    if `or`_(sp <> sp_ref) then `error`_("failed"), end




