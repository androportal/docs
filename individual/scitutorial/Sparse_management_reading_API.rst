


Sparse matrix reading (Scilab gateway)
======================================

How to read sparse matrices in a gateway.



Calling Sequence
~~~~~~~~~~~~~~~~

Input argument profile:


::

    SciErr getSparseMatrix(void* _pvCtx, int* _piAddress, int* _piRows, int* _piCols, int* _piNbItem, int** _piNbItemRow, int** _piColPos, double** _pdblReal)



::

    SciErr getComplexSparseMatrix(void* _pvCtx, int* _piAddress, int* _piRows, int* _piCols, int* _piNbItem, int** _piNbItemRow, int** _piColPos, double** _pdblReal, double** _pdblImg)


Named variable profile:


::

    SciErr readNamedSparseMatrix(void* _pvCtx, const char* _pstName, int* _piRows, int* _piCols, int* _piNbItem, int* _piNbItemRow, int* _piColPos, double* _pdblReal)



::

    SciErr readNamedComplexSparseMatrix(void* _pvCtx, const char* _pstName, int* _piRows, int* _piCols, int* _piNbItem, int* _piNbItemRow, int* _piColPos, double* _pdblReal, double* _pdblImg)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_piAddress Address of the Scilab variable.
: :_pstName Name of the variable for "named" functions.
: :_piRows Return number of rows.
: :_piCols Return number of columns.
: :_piNbItem Return number of non zero value.
: :_piNbItemRow Return number of item in each rows (size: _iRows).
: :_piColPos Return column position for each item (size: _iNbItem).
: :_pdblReal Return address of real data array (size: _iCols * _iRows)
  For "Named" function, _pdblReal must be allocated before calling
  function.
: :_pdblImg Return address of imaginary data array (size: _iCols *
  _iRows) For "Named" function, _pdblImg must be allocated before
  calling function.
: :SciErr Error structure where is stored errors messages history and
  first error number.
:



Description
~~~~~~~~~~~

This help describes how sparse matrix can be handled through the
Scilab API.



Gateway Source
~~~~~~~~~~~~~~


::

    #include "api_scilab.h"
    int read_sparse(char *fname,unsigned long fname_len)
    {
    	SciErr sciErr;
    	int i,j,k;
    	int* piAddr			= NULL;
    	int iRows			= 0;
    	int iCols			= 0;
    	int iNbItem			= 0;
    	int* piNbItemRow	= NULL;
    	int* piColPos		= NULL;
    	double* pdblReal	= NULL;
    	double* pdblImg		= NULL;
    
        CheckInputArgument(pvApiCtx, 1, 1);
    
    	sciErr = getVarAddressFromPosition(pvApiCtx, 1, &piAddr);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	if(isVarComplex(pvApiCtx, piAddr))
    	{
    		sciErr = getComplexSparseMatrix(pvApiCtx, piAddr, &iRows, &iCols, &iNbItem, &piNbItemRow, &piColPos, &pdblReal, &pdblImg);
    	}
    	else
    	{
    		sciErr = getSparseMatrix(pvApiCtx, piAddr, &iRows, &iCols, &iNbItem, &piNbItemRow, &piColPos, &pdblReal);
    	}
    
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	sciprint("Sparse %d item(s)\n", iNbItem);
    	k = 0;
    
    	for(i = 0 ; i < iRows ; i++)
    	{
    		for(j = 0 ; j < piNbItemRow[i] ; j++)
    		{
    			sciprint("(%d,%d) = %f", i+1, piColPos[k], pdblReal[k]);
    			if(isVarComplex(pvApiCtx, piAddr))
    			{
    				sciprint(" %+fi", pdblImg[k]);
    			}
    
    			sciprint("\n");
    			k++;
    		}
    	}
    
    	//assign allocated variables to Lhs position
    	AssignOutputVariable(1) = 0;
    	return 0;
    }




Scilab test script
~~~~~~~~~~~~~~~~~~


::

    sp=`sparse`_([1,2;4,5;3,10],[1 + 2*%i,2 - 3*%i,-3 + 4*%i]);
    read_sparse(sp);




