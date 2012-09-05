


String writing (Scilab gateway)
===============================

How to write matrices of string in a gateway.



Calling Sequence
~~~~~~~~~~~~~~~~

Input argument profile:


::

    SciErr createMatrixOfString(void* _pvCtx, int _iVar, int _iRows, int _iCols, const char* const* _pstStrings)



::

    SciErr createMatrixOfWideString(void* _pvCtx, int _iVar, int _iRows, int _iCols, const wchar_t* const* _pwstStrings)


Named variable profile:


::

    SciErr createNamedMatrixOfString(void* _pvCtx, const char* _pstName, int _iRows, int _iCols, const char* const* _pstStrings)



::

    SciErr createNamedMatrixOfWideString(void* _pvCtx, const char* _pstName, int _iRows, int _iCols, const wchar_t* const* _pwstStrings)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_iVar Position in the Scilab memory where you want to put the
  variable
: :_pstName Name of the variable for "named" functions.
: :_iRows Number of rows of the new variable
: :_iCols Numbers of columns of the new variable
: :_pstStrings Address of array of char* (size: _iCols * _iRows)
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
    int write_string(char *fname,unsigned long fname_len)
    {
    	SciErr sciErr;
    	//variable info : matrix of string 2 x 3
    	int iRows		= 2;
    	int iCols		= 3;
    	char** pstData	= NULL;
    	//data to put in the new variable
    	char string11[]	= "may";
    	char string21[]	= "be";
    	char string12[]	= "the";
    	char string22[]	= "with";
    	char string13[]	= "puffin";
    	char string23[]	= "you";
    	//alloc new array
    	pstData			= (char**)malloc(sizeof(char*) * iRows * iCols);
    	//copy data address to the "main" array
    	pstData[0]		= string11;
    	pstData[1]		= string21;
    	pstData[2]		= string12;
    	pstData[3]		= string22;
    	pstData[4]		= string13;
    	pstData[5]		= string23;
    
    	//create the variable
    	sciErr = createMatrixOfString(pvApiCtx, nbInputArgument + 1, iRows, iCols, pstData);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//free container
    	free(pstData);
    	//assign allocated variables to Lhs position
        AssignOutputVariable(1) = nbInputArgument + 1;
    	return 0;
    }




Scilab test script
~~~~~~~~~~~~~~~~~~


::

    a_ref = "may the puffin be with you ";
    b = [];
    a = write_string();
    for i=1:`size`_(a,"r")
        for j=1:`size`_(a,"c")
            b = b + a(i,j);
            b = b + " ";
        end
    end
    if b <> a_ref then `error`_("failed"), end




