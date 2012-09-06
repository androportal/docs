


boolean sparse example
======================

Boolean sparse use case.



Description
~~~~~~~~~~~

This example shows how to get a boolean sparse variable and return it
to Scilab.



Gateway Source
~~~~~~~~~~~~~~


::

    #include "api_scilab.h"
    
    int booleanSparseExample(char *fname,unsigned long fname_len)
    {
    	SciErr sciErr;
    	int* piAddr		= NULL;
    	int iType		= 0;
    	int iRet		= 0;
    
        CheckInputArgument(pvApiCtx, 1, 1);
        CheckOutputArgument(pvApiCtx, 0, 1);
    
    	sciErr = getVarAddressFromPosition(pvApiCtx, 1, &piAddr);
    	if(sciErr.iErr)
    	{
    			printError(&sciErr, 0);
    			return 0;
    	}
    
    	if(isBooleanSparseType(pvApiCtx, piAddr))
    	{
    		int iRows			= 0;
    		int iCols			= 0;
    		int iNbItem			= 0;
    		int* piNbItemRow	= NULL;
    		int* piColPos		= NULL;
    
    		iRet = getAllocatedBooleanSparseMatrix(pvApiCtx, piAddr, &iRows, &iCols, &iNbItem, &piNbItemRow, &piColPos);
    		if(iRet)
    		{
    			freeAllocatedBooleanSparse(piNbItemRow, piColPos);
    			return iRet;
    		}
    
    		sciErr = createBooleanSparseMatrix(pvApiCtx, nbInputArgument + 1, iRows, iCols, iNbItem, piNbItemRow, piColPos);
    		if(sciErr.iErr)
    		{
    			freeAllocatedBooleanSparse(piNbItemRow, piColPos);
    			printError(&sciErr, 0);
    			return sciErr.iErr;
    		}
    
    		freeAllocatedBooleanSparse(piNbItemRow, piColPos);
    		AssignOutputVariable(1) = nbInputArgument + 1;
    	}
    	return 0;
    }




Scilab test script
~~~~~~~~~~~~~~~~~~


::

    bsp = `sparse`_([1,1;2,2;3,3],[%t,%t,%t]);
    `or`_(booleanSparseExample(bsp) == bsp)




