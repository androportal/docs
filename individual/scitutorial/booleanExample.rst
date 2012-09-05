


boolean example
===============

Boolean use case.



Description
~~~~~~~~~~~

This example shows how to get a boolean variable and return it to
Scilab.



Gateway Source
~~~~~~~~~~~~~~


::

    #include "api_scilab.h"
    
    int booleanExample(char *fname,unsigned long fname_len)
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
        if(isBooleanType(pvApiCtx, piAddr))
        {
            if(isScalar(pvApiCtx, piAddr))
            {
                int iBool = 0;
                iRet = getScalarBoolean(pvApiCtx, piAddr, &iBool);
                if(iRet)
                {
                    return 0;
                }
                iRet = createScalarBoolean(pvApiCtx, nbInputArgument + 1, iBool);
                if(iRet)
                {
                    return 0;
                }
            }
            else
            {
                int iRows	= 0;
                int iCols	= 0;
                int *piBool	= NULL;
    
                sciErr = getMatrixOfBoolean(pvApiCtx, piAddr, &iRows, &iCols, &piBool);
                if(sciErr.iErr)
                {
                    printError(&sciErr, 0);
                    return 0;
                }
    
                sciErr = createMatrixOfBoolean(pvApiCtx, nbInputArgument + 1, iRows, iCols, piBool);
                if(sciErr.iErr)
                {
                    printError(&sciErr, 0);
                    return 0;
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

    a = %t;
    b = %f;
    c = [a,b;b,a;a,b;b,a];
    d = c';
    
    booleanExample(a) == a
    booleanExample(b) == b
    booleanExample(c) == c
    booleanExample(d) == d




