


string example
==============

String use case.



Description
~~~~~~~~~~~

This example shows how to get a string variable and return it to
Scilab.



Gateway Source
~~~~~~~~~~~~~~


::

    #include "api_scilab.h"
    int stringExample(char *fname,unsigned long fname_len)
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
    
    	if(isStringType(pvApiCtx, piAddr))
    	{
    		if(isScalar(pvApiCtx, piAddr))
    		{
    			char* pstData = NULL;
    
    			iRet = getAllocatedSingleString(pvApiCtx, piAddr, &pstData);
    			if(iRet)
    			{
    				freeAllocatedSingleString(pstData);
    				return iRet;
    			}
    
    			iRet = createSingleString(pvApiCtx, nbInputArgument + 1, pstData);
    			if(iRet)
    			{
    				freeAllocatedSingleString(pstData);
    				return iRet;
    			}
    
    			freeAllocatedSingleString(pstData);
    		}
    		else
    		{
    			int iRows       = 0;
    			int iCols       = 0;
    			char** pstData  = NULL;
    
    			iRet = getAllocatedMatrixOfString(pvApiCtx, piAddr, &iRows, &iCols, &pstData);
    			if(iRet)
    			{
    				freeAllocatedMatrixOfString(iRows, iCols, pstData);
    				return iRet;
    			}
    
    			sciErr = createMatrixOfString(pvApiCtx, nbInputArgument + 1, iRows, iCols, pstData);
    			if(sciErr.iErr)
    			{
    				freeAllocatedMatrixOfString(iRows, iCols, pstData);
    				printError(&sciErr, 0);
    				return sciErr.iErr;
    			}
    
    			freeAllocatedMatrixOfString(iRows, iCols, pstData);
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

    a = "Scilab";
    b = ["New","Scilab";"API","functions"];
    if stringExample(a) <> a then pause, end
    if stringExample(b) <> b then pause, end




