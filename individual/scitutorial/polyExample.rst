


polynomial example
==================

Polynom use case.



Description
~~~~~~~~~~~

This example shows how to get a polynomial variable and return it to
Scilab.



Gateway Source
~~~~~~~~~~~~~~


::

    int polyExample(char *fname,unsigned long fname_len)
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
    
    	if(isPolyType(pvApiCtx, piAddr))
    	{
    		char pstVarName[64];
    		int iLen = 0;
    
    		sciErr = getPolyVariableName(pvApiCtx, piAddr, pstVarName, &iLen);
    		if(sciErr.iErr)
    		{
    			printError(&sciErr, 0);
    			return sciErr.iErr;
    		}
    
    		if(isScalar(pvApiCtx, piAddr))
    		{
    			int iNbCoef				= 0;
    			double* pdblReal	= NULL;
    			double* pdblImg		= NULL;
    
    			if(isVarComplex(pvApiCtx, piAddr))
    			{
    				iRet = getAllocatedSingleComplexPoly(pvApiCtx, piAddr, &iNbCoef, &pdblReal, &pdblImg);
    				if(iRet)
    				{
    					freeAllocatedSingleComplexPoly(pdblReal, pdblImg);
    					return iRet;
    				}
    
    				sciErr = createComplexMatrixOfPoly(pvApiCtx, nbInputArgument + 1, pstVarName, 1, 1, &iNbCoef, &pdblReal, &pdblImg);
    				if(sciErr.iErr)
    				{
    					freeAllocatedSingleComplexPoly(pdblReal, pdblImg);
    					printError(&sciErr, 0);
    					return sciErr.iErr;
    				}
    
    				freeAllocatedSingleComplexPoly(pdblReal, pdblImg);
    			}
    			else
    			{
    				iRet = getAllocatedSinglePoly(pvApiCtx, piAddr, &iNbCoef, &pdblReal);
    				if(iRet)
    				{
    					freeAllocatedSinglePoly(pdblReal);
    					return iRet;
    				}
    
    				sciErr = createMatrixOfPoly(pvApiCtx, nbInputArgument + 1, pstVarName, 1, 1, &iNbCoef, &pdblReal);
    				if(sciErr.iErr)
    				{
    					freeAllocatedSinglePoly(pdblReal);
    					printError(&sciErr, 0);
    					return sciErr.iErr;
    				}
    
    				freeAllocatedSinglePoly(pdblReal);
    			}
    		}
    		else
    		{
    			int iRows           = 0;
    			int iCols           = 0;
    			int* piNbCoef       = NULL;
    			double** pdblReal   = NULL;
    			double** pdblImg    = NULL;
    
    			if(isVarComplex(pvApiCtx, piAddr))
    			{
    				iRet = getAllocatedMatrixOfComplexPoly(pvApiCtx, piAddr, &iRows, &iCols, &piNbCoef, &pdblReal, &pdblImg);
    				if(iRet)
    				{
    					freeAllocatedMatrixOfComplexPoly(iRows, iCols, piNbCoef, pdblReal, pdblImg);
    					return iRet;
    				}
    
    				sciErr = createComplexMatrixOfPoly(pvApiCtx, nbInputArgument + 1, pstVarName, iRows, iCols, piNbCoef, pdblReal, pdblImg);
    				if(sciErr.iErr)
    				{
    					freeAllocatedMatrixOfComplexPoly(iRows, iCols, piNbCoef, pdblReal, pdblImg);
    					printError(&sciErr, 0);
    					return sciErr.iErr;
    				}
    
    				freeAllocatedMatrixOfComplexPoly(iRows, iCols, piNbCoef, pdblReal, pdblImg);
    			}
    			else
    			{
    				iRet = getAllocatedMatrixOfPoly(pvApiCtx, piAddr, &iRows, &iCols, &piNbCoef, &pdblReal);
    				if(iRet)
    				{
    					freeAllocatedMatrixOfPoly(iRows, iCols, piNbCoef, pdblReal);
    					return iRet;
    				}
    
    				sciErr = createMatrixOfPoly(pvApiCtx, nbInputArgument + 1, pstVarName, iRows, iCols, piNbCoef, pdblReal);
    				if(sciErr.iErr)
    				{
    					freeAllocatedMatrixOfPoly(iRows, iCols, piNbCoef, pdblReal);
    					printError(&sciErr, 0);
    					return sciErr.iErr;
    				}
    
    				freeAllocatedMatrixOfPoly(iRows, iCols, piNbCoef, pdblReal);
    			}
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

    a = %s;
    b = (2 + 3*%i) * %s;
    c = [a, 2*a, 3*a;4*a, 5*a, 6*a];
    d = [c + c * %i];
    if polyExample(a) <> a then pause, end
    if polyExample(b) <> b then pause, end
    if polyExample(c) <> c then pause, end
    if polyExample(d) <> d then pause, end




