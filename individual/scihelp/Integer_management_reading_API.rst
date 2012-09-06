


Integer reading (Scilab gateway)
================================

How to read matrices of integer in a gateway.



Calling Sequence
~~~~~~~~~~~~~~~~

Input argument profile:

Signed integer :


::

    SciErr getMatrixOfInteger8(void* _pvCtx, int* _piAddress, int* _piRows, int* _piCols, char** _pcData8)



::

    SciErr getMatrixOfInteger16(void* _pvCtx, int* _piAddress, int* _piRows, int* _piCols, short** _psData16)



::

    SciErr getMatrixOfInteger32(void* _pvCtx, int* _piAddress, int* _piRows, int* _piCols, int** _piData32)


Unsigned integer :


::

    SciErr getMatrixOfUnsignedInteger8(void* _pvCtx, int* _piAddress, int* _piRows, int* _piCols, unsigned char** _pucData8)



::

    SciErr getMatrixOfUnsignedInteger16(void* _pvCtx, int* _piAddress, int* _piRows, int* _piCols, unsigned short** _pusData16)



::

    SciErr getMatrixOfUnsignedInteger32(void* _pvCtx, int* _piAddress, int* _piRows, int* _piCols, unsigned int** _puiData32)


Named variable profile:

Signed integer :


::

    SciErr readNamedMatrixOfInteger8(void* _pvCtx, const char* _pstName, int* _piRows, int* _piCols, char* _pcData8)



::

    SciErr readNamedMatrixOfInteger16(void* _pvCtx, const char* _pstName, int* _piRows, int* _piCols, short* _psData16)



::

    SciErr readNamedMatrixOfInteger32(void* _pvCtx, const char* _pstName, int* _piRows, int* _piCols, int* _piData32)


Unsigned integer :


::

    SciErr readNamedMatrixOfUnsignedInteger8(void* _pvCtx, const char* _pstName, int* _piRows, int* _piCols, unsigned char* _pucData8)



::

    SciErr readNamedMatrixOfUnsignedInteger16(void* _pvCtx, const char* _pstName, int* _piRows, int* _piCols, unsigned short* _pusData16)



::

    SciErr readNamedMatrixOfUnsignedInteger32(void* _pvCtx, const char* _pstName, int* _piRows, int* _piCols, unsigned int* _puiData32)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_piAddress Address of the Scilab variable.
: :_pstName Name of the variable for "named" functions.
: :_piRows Return number of rows.
: :_piCols Return number of columns.
: :_pcData8, _pucData8, _psData16, _pusData16, _piData32, _puiData32
  Returns address of array ( size: _piRows * _piCols). For "Named"
  function, _pcData must be allocated before calling function.
: :SciErr Error structure where is stored errors messages history and
  first error number.
:



Description
~~~~~~~~~~~

This help describes how matrices of integer can be handled through the
Scilab API.



Gateway Source
~~~~~~~~~~~~~~


::

    #include "api_scilab.h"
    void* create_output(int _iCoeff, int _iSize, int _iRows, int _iCols, void* _pvDataIn);
    
    int read_integer(char *fname,unsigned long fname_len)
    {
    	SciErr sciErr;
    	//output variable info
    	int iRows8					= 0;
    	int iCols8					= 0;
    	int iRows16					= 0;
    	int iCols16					= 0;
    	int iRows32					= 0;
    	int iCols32					= 0;
    	int iRowsu8					= 0;
    	int iColsu8					= 0;
    	int iRowsu16				= 0;
    	int iColsu16				= 0;
    	int iRowsu32				= 0;
    	int iColsu32				= 0;
    	int iPrec					= 0;
    	int* piAddr8				= NULL;
    	int* piAddr16				= NULL;
    	int* piAddr32				= NULL;
    	int* piAddru8				= NULL;
    	int* piAddru16				= NULL;
    	int* piAddru32				= NULL;
    	char* pcData				= NULL;
    	short* psData				= NULL;
    	int* piData					= NULL;
    	unsigned char* pucData		= NULL;
    	unsigned short* pusData		= NULL;
    	unsigned int* puiData		= NULL;
    	char* pcDataOut				= NULL;
    	short* psDataOut			= NULL;
    	int* piDataOut				= NULL;
    	unsigned char* pucDataOut	= NULL;
    	unsigned short* pusDataOut	= NULL;
    	unsigned int* puiDataOut	= NULL;
    
    	//check input/ouput arguments count
        CheckInputArgument(pvApiCtx, 6, 6);
        CheckOutputArgument(pvApiCtx, 6, 6);
    
    	//get varialbe address
    	sciErr = getVarAddressFromPosition(pvApiCtx, 1, &piAddr8);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	sciErr = getVarAddressFromPosition(pvApiCtx, 2, &piAddru8);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	sciErr = getVarAddressFromPosition(pvApiCtx, 3, &piAddr16);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	sciErr = getVarAddressFromPosition(pvApiCtx, 4, &piAddru16);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	sciErr = getVarAddressFromPosition(pvApiCtx, 5, &piAddr32);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	sciErr = getVarAddressFromPosition(pvApiCtx, 6, &piAddru32);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//check variable precision
    	sciErr = getMatrixOfIntegerPrecision(pvApiCtx, piAddr8, &iPrec);
    	if(sciErr.iErr || iPrec != SCI_INT8)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//check variable precision
    	sciErr = getMatrixOfIntegerPrecision(pvApiCtx, piAddru8, &iPrec);
    	if(sciErr.iErr || iPrec != SCI_UINT8)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//check variable precision
    	sciErr = getMatrixOfIntegerPrecision(pvApiCtx, piAddr16, &iPrec);
    	if(sciErr.iErr || iPrec != SCI_INT16)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//check variable precision
    	sciErr = getMatrixOfIntegerPrecision(pvApiCtx, piAddru16, &iPrec);
    	if(sciErr.iErr || iPrec != SCI_UINT16)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    	//check variable precision
    	sciErr = getMatrixOfIntegerPrecision(pvApiCtx, piAddr32, &iPrec);
    	if(sciErr.iErr || iPrec != SCI_INT32)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//check variable precision
    	sciErr = getMatrixOfIntegerPrecision(pvApiCtx, piAddru32, &iPrec);
    	if(sciErr.iErr || iPrec != SCI_UINT32)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//retrieve dimensions and data
    	sciErr = getMatrixOfInteger8(pvApiCtx, piAddr8, &iRows8, &iCols8, &pcData);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//retrieve dimensions and data
    	sciErr = getMatrixOfUnsignedInteger8(pvApiCtx, piAddru8, &iRowsu8, &iColsu8, &pucData);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//retrieve dimensions and data
    	sciErr = getMatrixOfInteger16(pvApiCtx, piAddr16, &iRows16, &iCols16, &psData);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//retrieve dimensions and data
    	sciErr = getMatrixOfUnsignedInteger16(pvApiCtx, piAddru16, &iRowsu16, &iColsu16, &pusData);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//retrieve dimensions and data
    	sciErr = getMatrixOfInteger32(pvApiCtx, piAddr32, &iRows32, &iCols32, &piData);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//retrieve dimensions and data
    	sciErr = getMatrixOfUnsignedInteger32(pvApiCtx, piAddru32, &iRowsu32, &iColsu32, &puiData);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//alloc and fill new variable
    	pcDataOut   = (char*)create_output(2, 1, iRows8, iCols8, (void*)pcData);
    	pucDataOut  = (unsigned char*)create_output(4, 1, iRowsu8, iColsu8, (void*)pucData);
    	psDataOut   = (short*)create_output(8, 2, iRows16, iCols16, (void*)psData);
    	pusDataOut  = (unsigned short*)create_output(16, 2, iRowsu16, iColsu16, (void*)pusData);
    	piDataOut   = (int*)create_output(32, 4, iRows32, iCols32, (void*)piData);
    	puiDataOut  = (unsigned int*)create_output(64, 4, iRowsu32, iColsu32, (void*)puiData);
    
    	//create new variable
    	sciErr = createMatrixOfInteger8(pvApiCtx, nbInputArgument + 1, iRows8, iCols8, pcDataOut);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//create new variable
    	sciErr = createMatrixOfUnsignedInteger8(pvApiCtx, nbInputArgument + 2, iRowsu8, iColsu8, pucDataOut);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//create new variable
    	sciErr = createMatrixOfInteger16(pvApiCtx, nbInputArgument + 3, iRows16, iCols16, psDataOut);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//create new variable
    	sciErr = createMatrixOfUnsignedInteger16(pvApiCtx, nbInputArgument + 4, iRowsu16, iColsu16, pusDataOut);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//create new variable
    	sciErr = createMatrixOfInteger32(pvApiCtx, nbInputArgument + 5, iRows32, iCols32, piDataOut);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//create new variable
    	sciErr = createMatrixOfUnsignedInteger32(pvApiCtx, nbInputArgument + 6, iRowsu32, iColsu32, puiDataOut);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//assign allocated variables to Lhs position
    	AssignOutputVariable(1) = nbInputArgument + 1;
    	AssignOutputVariable(2) = nbInputArgument + 2;
    	AssignOutputVariable(3) = nbInputArgument + 3;
    	AssignOutputVariable(4) = nbInputArgument + 4;
    	AssignOutputVariable(5) = nbInputArgument + 5;
    	AssignOutputVariable(6) = nbInputArgument + 6;
    	return 0;
    }
    
    void* create_output(int _iCoeff, int _iSize, int _iRows, int _iCols, void* _pvDataIn)
    {
    	int i = 0;
    	void* pvDataOut = (void*)malloc(_iSize * _iRows * _iCols);
    	for(i = 0 ; i < _iRows * _iCols ; i++)
    	{
    		int iVal = 0;
    		memcpy(&iVal, (char*)_pvDataIn + i * _iSize, _iSize);
    		iVal *= _iCoeff;
    		memcpy((char*)pvDataOut + i * _iSize, &iVal, _iSize);
    	}
    	return pvDataOut;
    }




Scilab test script
~~~~~~~~~~~~~~~~~~


::

    a8  = `int8`_([    1   -2  3   -4  5; ..
                    -6  7   -8  9   -10; ..
                    11  -12 13  -14 15]);
    
    au8 = `uint8`_([   1   2   3   4   5; ..
                    6   7   8   9   10; ..
                    11  12  13  14  15]);
    
    a16  = `int16`_([  1   -2  3   -4  5; ..
                    -6  7   -8  9   -10; ..
                    11  -12 13  -14 15]);
    
    au16 = `uint16`_([ 1   2   3   4   5; ..
                    6   7   8   9   10; ..
                    11  12  13  14  15]);
    
    a32 = `int32`_([   1   -2  3   -4  5; ..
                    -6  7   -8  9   -10; ..
                    11  -12 13  -14 15]);
    
    au32 = `uint32`_([ 1   2   3   4   5; ..
                    6   7   8   9   10; ..
                    11  12  13  14  15]);
    
    [c8, cu8, c16, cu16, c32, cu32] = read_integer(a8, au8, a16, au16, a32, au32);
    
    if `or`_(c8 <> a8 * 2) then `error`_("failed"), end
    if `or`_(cu8 <> au8 * 4) then `error`_("failed"), end
    if `or`_(c16 <> a16 * 8) then `error`_("failed"), end
    if `or`_(cu16 <> au16 * 16) then `error`_("failed"), end
    if `or`_(c32 <> a32 * 32) then `error`_("failed"), end
    if `or`_(cu32 <> au32 * 64) then `error`_("failed"), end




