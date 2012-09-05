


String reading (Scilab gateway)
===============================

How to read matrices of strings in a gateway.



Calling Sequence
~~~~~~~~~~~~~~~~

Input argument profile:


::

    SciErr getMatrixOfString(void* _pvCtx, int* _piAddress, int* _piRows, int* _piCols, int* _piLength, char** _pstStrings)



::

    SciErr getMatrixOfWideString(void* _pvCtx, int* _piAddress, int* _piRows, int* _piCols, int* _piLength, wchar_t** _pwstStrings)


Named variable profile:


::

    SciErr createNamedMatrixOfString(void* _pvCtx, const char* _pstName, int _iRows, int _iCols, char** _pstStrings)



::

    SciErr createNamedMatrixOfWideString(void* _pvCtx, const char* _pstName, int _iRows, int _iCols, wchar_t** _pwstStrings)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_piAddress Address of the Scilab variable.
: :_pstName Name of the variable for "named" functions.
: :_piRows Return number of rows.
: :_piCols Return number of columns.
: :_piLength Address of array of strings length (must be allocated
  size: _piRows * _piCols)
: :_pstStrings Address of array of char* (must be allocated size:
  _piRows * _piCols)
: :_pwstStrings Address of array of wchar_t* (must be allocated size:
  _piRows * _piCols)
: :SciErr Error structure where is stored errors messages history and
  first error number.
:



Description
~~~~~~~~~~~

This help describes how matrix of strings can be handled through the
Scilab API.



Gateway Source
~~~~~~~~~~~~~~


::

    #include "api_scilab.h"
    int read_string(char *fname,unsigned long fname_len)
    {
    	SciErr sciErr;
    	int i,j;
    	int iLen		= 0;
    	//variable info
    	int iRows		= 0;
    	int iCols		= 0;
    	int* piAddr		= NULL;
    	int* piLen		= NULL;
    	char** pstData	= NULL;
    	//output variable
    	int iRowsOut	= 1;
    	int iColsOut	= 1;
    	char* pstOut	= NULL;
    	//check input and output arguments
    
        CheckInputArgument(pvApiCtx, 1, 1);
        CheckOutputArgument(pvApiCtx, 1, 1);
    
    	//get variable address
    	sciErr = getVarAddressFromPosition(pvApiCtx, 1, &piAddr);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//fisrt call to retrieve dimensions
    	sciErr = getMatrixOfString(pvApiCtx, piAddr, &iRows, &iCols, NULL, NULL);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	piLen = (int*)malloc(sizeof(int) * iRows * iCols);
    
    	//second call to retrieve length of each string
    	sciErr = getMatrixOfString(pvApiCtx, piAddr, &iRows, &iCols, piLen, NULL);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	pstData = (char**)malloc(sizeof(char*) * iRows * iCols);
    	for(i = 0 ; i < iRows * iCols ; i++)
    	{
    		pstData[i] = (char*)malloc(sizeof(char) * (piLen[i] + 1));//+ 1 for null termination
    	}
    
    	//third call to retrieve data
    	sciErr = getMatrixOfString(pvApiCtx, piAddr, &iRows, &iCols, piLen, pstData);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//computer length of all strings
    	for(i = 0 ; i < iRows * iCols ; i++)
    	{
    		iLen += piLen[i];
    	}
    
    	//alloc output variable
    	pstOut = (char*)malloc(sizeof(char) * (iLen + iRows * iCols));
    	//initialize string to 0x00
    	memset(pstOut, 0x00, sizeof(char) * (iLen + iRows * iCols));
    
    	//concat input strings in output string
    	for(i = 0 ; i < iRows ; i++)
    	{
    		for(j = 0 ; j < iCols ; j++)
    		{
    			int iCurLen = strlen(pstOut);
    			if(iCurLen)
    			{
    				strcat(pstOut, " ");
    			}
    			strcpy(pstOut + strlen(pstOut), pstData[j * iRows + i]);
    		}
    	}
    
    	//create new variable
    	sciErr = createMatrixOfString(pvApiCtx, nbInputArgument + 1, iRowsOut, iColsOut, &pstOut);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//free memory
    	free(piLen);
    
    	for(i = 0 ; i < iRows * iCols ; i++)
    	{
    		free(pstData[i]);
    	}
    
    	free(pstData);
    	free(pstOut);
    	AssignOutputVariable(1) = nbInputArgument + 1;
    	return 0;
    }




Scilab test script
~~~~~~~~~~~~~~~~~~


::

    a_ref = ["may the puffin be with you"];
    a = ["may", "the", "puffin"; "be","with","you"];
    b = read_string(a);
    if a_ref <> b then `error`_("failed"), end




