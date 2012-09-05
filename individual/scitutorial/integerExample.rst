


integer example
===============

Integer use case.



Description
~~~~~~~~~~~

This example shows how to get an integer variable and return it to
Scilab.



Gateway Source
~~~~~~~~~~~~~~


::

    #include "api_scilab.h"
    
    int integerExample(char *fname,unsigned long fname_len)
    {
    	SciErr sciErr;
    	int* piAddr     = NULL;
    	int iType       = 0;
    	int iRet        = 0;
    	int iPrec       = 0;
    
        CheckInputArgument(pvApiCtx, 1, 1);
        CheckOutputArgument(pvApiCtx, 0, 1);
    
    	sciErr = getVarAddressFromPosition(pvApiCtx, 1, &piAddr);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	if(isIntegerType(pvApiCtx, piAddr))
    	{
    		sciErr = getMatrixOfIntegerPrecision(pvApiCtx, piAddr, &iPrec);
    		if(sciErr.iErr)
    		{
    			printError(&sciErr, 0);
    			return sciErr.iErr;
    		}
    
    		switch(iPrec)
    		{
    		case SCI_INT8 :
    			if(isScalar(pvApiCtx, piAddr))
    			{
    				char cData  = 0;
    				iRet = getScalarInteger8(pvApiCtx, piAddr, &cData);
    				if(iRet)
    				{
    					return iRet;
    				}
    
    				iRet = createScalarInteger8(pvApiCtx, nbInputArgument + 1, cData);
    				if(iRet)
    				{
    					return iRet;
    				}
    			}
    			else
    			{
    				int iRows       = 0;
    				int iCols       = 0;
    				char* pcData    = NULL;
    
    				sciErr = getMatrixOfInteger8(pvApiCtx, piAddr, &iRows, &iCols, &pcData);
    				if(sciErr.iErr)
    				{
    					printError(&sciErr, 0);
    					return sciErr.iErr;
    				}
    
    				sciErr = createMatrixOfInteger8(pvApiCtx, nbInputArgument + 1, iRows, iCols, pcData);
    				if(sciErr.iErr)
    				{
    					printError(&sciErr, 0);
    					return sciErr.iErr;
    				}
    			}
    			break;
    		case SCI_INT16 :
    			if(isScalar(pvApiCtx, piAddr))
    			{
    				short sData = 0;
    				iRet = getScalarInteger16(pvApiCtx, piAddr, &sData);
    				if(iRet)
    				{
    					return iRet;
    				}
    
    				iRet = createScalarInteger16(pvApiCtx, nbInputArgument + 1, sData);
    				if(iRet)
    				{
    					return iRet;
    				}
    			}
    			else
    			{
    				int iRows       = 0;
    				int iCols       = 0;
    				short* psData   = NULL;
    
    				sciErr = getMatrixOfInteger16(pvApiCtx, piAddr, &iRows, &iCols, &psData);
    				if(sciErr.iErr)
    				{
    					printError(&sciErr, 0);
    					return sciErr.iErr;
    				}
    
    				sciErr = createMatrixOfInteger16(pvApiCtx, nbInputArgument + 1, iRows, iCols, psData);
    				if(sciErr.iErr)
    				{
    					printError(&sciErr, 0);
    					return sciErr.iErr;
    				}
    			}
    			break;
    		case SCI_INT32 :
    			if(isScalar(pvApiCtx, piAddr))
    			{
    				int iData = 0;
    				iRet = getScalarInteger32(pvApiCtx, piAddr, &iData);
    				if(iRet)
    				{
    					return iRet;
    				}
    
    				iRet = createScalarInteger32(pvApiCtx, nbInputArgument + 1, iData);
    				if(iRet)
    				{
    					return iRet;
    				}
    			}
    			else
    			{
    				int iRows       = 0;
    				int iCols       = 0;
    				int* piData     = NULL;
    
    				sciErr = getMatrixOfInteger32(pvApiCtx, piAddr, &iRows, &iCols, &piData);
    				if(sciErr.iErr)
    				{
    					printError(&sciErr, 0);
    					return sciErr.iErr;
    				}
    
    				sciErr = createMatrixOfInteger32(pvApiCtx, nbInputArgument + 1, iRows, iCols, piData);
    				if(sciErr.iErr)
    				{
    					printError(&sciErr, 0);
    					return sciErr.iErr;
    				}
    			}
    			break;
    #ifdef __SCILAB_INT64__
    		case SCI_INT64 :
    #endif
    		case SCI_UINT8 :
    			if(isScalar(pvApiCtx, piAddr))
    			{
    				unsigned char ucData = 0;
    				iRet = getScalarUnsignedInteger8(pvApiCtx, piAddr, &ucData);
    				if(iRet)
    				{
    					return iRet;
    				}
    
    				iRet = createScalarUnsignedInteger8(pvApiCtx, nbInputArgument + 1, ucData);
    				if(iRet)
    				{
    					return iRet;
    				}
    			}
    			else
    			{
    				int iRows               = 0;
    				int iCols               = 0;
    				unsigned char* pucData  = NULL;
    
    				sciErr = getMatrixOfUnsignedInteger8(pvApiCtx, piAddr, &iRows, &iCols, &pucData);
    				if(sciErr.iErr)
    				{
    					printError(&sciErr, 0);
    					return sciErr.iErr;
    				}
    
    				sciErr = createMatrixOfUnsignedInteger8(pvApiCtx, nbInputArgument + 1, iRows, iCols, pucData);
    				if(sciErr.iErr)
    				{
    					printError(&sciErr, 0);
    					return sciErr.iErr;
    				}
    			}
    			break;
    
    		case SCI_UINT16 :
    			if(isScalar(pvApiCtx, piAddr))
    			{
    				unsigned short usData = 0;
    				iRet = getScalarUnsignedInteger16(pvApiCtx, piAddr, &usData);
    				if(iRet)
    				{
    					return iRet;
    				}
    
    				iRet = createScalarUnsignedInteger16(pvApiCtx, nbInputArgument + 1, usData);
    				if(iRet)
    				{
    					return iRet;
    				}
    			}
    			else
    			{
    				int iRows               = 0;
    				int iCols               = 0;
    				unsigned short* pusData = NULL;
    
    				sciErr = getMatrixOfUnsignedInteger16(pvApiCtx, piAddr, &iRows, &iCols, &pusData);
    				if(sciErr.iErr)
    				{
    					printError(&sciErr, 0);
    					return sciErr.iErr;
    				}
    
    				sciErr = createMatrixOfUnsignedInteger16(pvApiCtx, nbInputArgument + 1, iRows, iCols, pusData);
    				if(sciErr.iErr)
    				{
    					printError(&sciErr, 0);
    					return sciErr.iErr;
    				}
    			}
    			break;
    		case SCI_UINT32 :
    			if(isScalar(pvApiCtx, piAddr))
    			{
    				unsigned int uiData = 0;
    				iRet = getScalarUnsignedInteger32(pvApiCtx, piAddr, &uiData);
    				if(iRet)
    				{
    					return iRet;
    				}
    
    				iRet = createScalarUnsignedInteger32(pvApiCtx, nbInputArgument + 1, uiData);
    				if(iRet)
    				{
    					return iRet;
    				}
    			}
    			else
    			{
    				int iRows               = 0;
    				int iCols               = 0;
    				unsigned int* puiData   = NULL;
    
    				sciErr = getMatrixOfUnsignedInteger32(pvApiCtx, piAddr, &iRows, &iCols, &puiData);
    				if(sciErr.iErr)
    				{
    					printError(&sciErr, 0);
    					return sciErr.iErr;
    				}
    
    				sciErr = createMatrixOfUnsignedInteger32(pvApiCtx, nbInputArgument + 1, iRows, iCols, puiData);
    				if(sciErr.iErr)
    				{
    					printError(&sciErr, 0);
    					return sciErr.iErr;
    				}
    			}
    			break;
    
    #ifdef __SCILAB_INT64__
    		case SCI_UINT64 :
    #endif
    		default :
    			break;
    		}
    	}
        
        AssignOutputVariable(1) = nbInputArgument + 1;
    	return 0;
    }




Scilab test script
~~~~~~~~~~~~~~~~~~


::

    i8_1 = `int8`_(1);
    i8_2 = `int8`_([1,2,3;4,5,6]);
    ui8_1 = `uint8`_(1);
    ui8_2 = `uint8`_([1,2,3;4,5,6]);
    
    i16_1 = `int16`_(1);
    i16_2 = `int16`_([1,2,3;4,5,6]);
    ui16_1 = `uint16`_(1);
    ui16_2 = `uint16`_([1,2,3;4,5,6]);
    
    i32_1 = `int32`_(1);
    i32_2 = `int32`_([1,2,3;4,5,6]);
    ui32_1 = `uint32`_(1);
    ui32_2 = `uint32`_([1,2,3;4,5,6]);
    
    if integerExample(i8_1) <> i8_1 then pause;end
    if integerExample(i8_2) <> i8_2 then pause;end
    if integerExample(ui8_1) <> ui8_1 then pause;end
    if integerExample(ui8_2) <> ui8_2 then pause;end
    
    if integerExample(i16_1) <> i16_1 then pause;end
    if integerExample(i16_2) <> i16_2 then pause;end
    if integerExample(ui16_1) <> ui16_1 then pause;end
    if integerExample(ui16_2) <> ui16_2 then pause;end
    
    if integerExample(i8_1) <> i16_1 then pause;end
    if integerExample(i8_2) <> i16_2 then pause;end
    if integerExample(ui8_1) <> ui16_1 then pause;end
    if integerExample(ui8_2) <> ui16_2 then pause;end




