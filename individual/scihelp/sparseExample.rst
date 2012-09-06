


sparse example
==============

Sparse use case.



Description
~~~~~~~~~~~

This example shows how to get a sparse variable and return it to
Scilab.



Gateway Source
~~~~~~~~~~~~~~


::

    #include "api_scilab.h"
    int sparseExample(char *fname,unsigned long fname_len)
    {
    	SciErr sciErr;
    	int* piAddr = NULL;
    	int iType   = 0;
    	int iRet    = 0;
    
        CheckInputArgument(pvApiCtx, 1, 1);
        CheckOutputArgument(pvApiCtx, 0, 1);
    
    	sciErr = getVarAddressFromPosition(pvApiCtx, 1, &piAddr);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	if(isSparseType(pvApiCtx, piAddr))
    	{
    		int iRows           = 0;
    		int iCols           = 0;
    		int iNbItem         = 0;
    		int* piNbItemRow	= NULL;
    		int* piColPos       = NULL;
    		double* pdblReal	= NULL;
    		double* pdblImg		= NULL;
    
    		if(isVarComplex(pvApiCtx, piAddr))
    		{
    			iRet = getAllocatedComplexSparseMatrix(pvApiCtx, piAddr, &iRows, &iCols, &iNbItem, &piNbItemRow, &piColPos, &pdblReal, &pdblImg);
    			if(iRet)
    			{
    				freeAllocatedComplexSparseMatrix(piNbItemRow, piColPos, pdblReal, pdblImg);
    				return iRet;
    			}
    
    			sciErr = createComplexSparseMatrix(pvApiCtx, nbInputArgument + 1, iRows, iCols, iNbItem, piNbItemRow, piColPos, pdblReal, pdblImg);
    			if(sciErr.iErr)
    			{
    				freeAllocatedComplexSparseMatrix(piNbItemRow, piColPos, pdblReal, pdblImg);
    				printError(&sciErr, 0);
    				return sciErr.iErr;
    			}
    
    			freeAllocatedComplexSparseMatrix(piNbItemRow, piColPos, pdblReal, pdblImg);
    		}
    		else
    		{
    			iRet = getAllocatedSparseMatrix(pvApiCtx, piAddr, &iRows, &iCols, &iNbItem, &piNbItemRow, &piColPos, &pdblReal);
    			if(iRet)
    			{
    				freeAllocatedSparseMatrix(piNbItemRow, piColPos, pdblReal);
    				return iRet;
    			}
    
    			sciErr = createSparseMatrix(pvApiCtx, nbInputArgument + 1, iRows, iCols, iNbItem, piNbItemRow, piColPos, pdblReal);
    			if(sciErr.iErr)
    			{
    				freeAllocatedSparseMatrix(piNbItemRow, piColPos, pdblReal);
    				printError(&sciErr, 0);
    				return sciErr.iErr;
    			}
    
    			freeAllocatedSparseMatrix(piNbItemRow, piColPos, pdblReal);
    		}
    		AssignOutputVariable(1) = nbInputArgument + 1;
    	}
    	else
    	{
    		AssignOutputVariable(1) = 0;
    	}
    	return 0;
    }




Scilab test script
~~~~~~~~~~~~~~~~~~


::

    a = `sparse`_([1,1;2,2;3,3], [1, 2, 3]);
    b = `sparse`_([1,1;2,2;3,3], [1 + 2 * %i, 3 , -4 * %i]);
    if sparseExample(a) <> a then pause;end
    if sparseExample(b) <> b then pause;end




