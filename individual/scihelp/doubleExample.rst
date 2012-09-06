


double example
==============

Double use case.



Description
~~~~~~~~~~~

This example shows how to get a double variable and return it to
Scilab.



Gateway Source
~~~~~~~~~~~~~~


::

    #include "api_scilab.h"
    
    int doubleExample(char *fname,unsigned long fname_len)
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
    
    	if(isEmptyMatrix(pvApiCtx, piAddr))
    	{
    		iRet = createEmptyMatrix(pvApiCtx, nbInputArgument + 1);
    		if(iRet)
    		{
    			return iRet;
    		}
    
    		AssignOutputVariable(1) = 0;
    	}
    	else if(isDoubleType(pvApiCtx, piAddr))
    	{
    		if(isScalar(pvApiCtx, piAddr))
    		{
    			double dblReal	= 0;
    			double dblImg   = 0;
    
    			if(isVarComplex(pvApiCtx, piAddr))
    			{
    				iRet = getScalarComplexDouble(pvApiCtx, piAddr, &dblReal, &dblImg);
    				if(iRet)
    				{
    					return iRet;
    				}
    
    				iRet = createScalarComplexDouble(pvApiCtx, nbInputArgument + 1, dblReal, dblImg);
    				if(iRet)
    				{
    					return iRet;
    				}
    			}
    			else
    			{
    				iRet = getScalarDouble(pvApiCtx, piAddr, &dblReal);
    				if(iRet)
    				{
    					return iRet;
    				}
    
    				iRet = createScalarDouble(pvApiCtx, nbInputArgument + 1, dblReal);
    				if(iRet)
    				{
    					return iRet;
    				}
    			}
    		}
    		else
    		{
    			int iRows			= 0;
    			int iCols			= 0;
    			double* pdblReal	= NULL;
    			double* pdblImg		= NULL;
    
    			if(isVarComplex(pvApiCtx, piAddr))
    			{
    				sciErr = getComplexMatrixOfDouble(pvApiCtx, piAddr, &iRows, &iCols, &pdblReal, &pdblImg);
    				if(sciErr.iErr)
    				{
    					printError(&sciErr, 0);
    					return sciErr.iErr;
    				}
    
    				sciErr = createComplexMatrixOfDouble(pvApiCtx, nbInputArgument + 1, iRows, iCols, pdblReal, pdblImg);
    				if(sciErr.iErr)
    				{
    					printError(&sciErr, 0);
    					return sciErr.iErr;
    				}
    			}
    			else
    			{
    				sciErr = getMatrixOfDouble(pvApiCtx, piAddr, &iRows, &iCols, &pdblReal);
    				if(sciErr.iErr)
    				{
    					printError(&sciErr, 0);
    					return sciErr.iErr;
    				}
    
    				sciErr = createMatrixOfDouble(pvApiCtx, nbInputArgument + 1, iRows, iCols, pdblReal);
    				if(sciErr.iErr)
    				{
    					printError(&sciErr, 0);
    					return sciErr.iErr;
    				}
    			}
    		}
    
            AssignOutputVariable(1) = nbInputArgument + 1;
    	}
    
    	return 0;
    }




Scilab test script
~~~~~~~~~~~~~~~~~~


::

    a = 1;
    b = %i;
    c = [1,2,3;4,5,6];
    d = c(1:$) + c($:-1:1) * %i;
    
    doubleExample(a) == a
    doubleExample(b) == b
    doubleExample(c) == c
    doubleExample(d) == d




