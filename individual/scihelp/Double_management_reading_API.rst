


Double reading (Scilab gateway)
===============================

How to read matrices of double in a gateway.



Calling Sequence
~~~~~~~~~~~~~~~~

Input argument profile:


::

    SciErr getMatrixOfDouble(void* _pvCtx, int* _piAddress, int* _piRows, int* _piCols, double** _pdblReal)



::

    SciErr getComplexMatrixOfDouble(void* _pvCtx, int* _piAddress, int* _piRows, int* _piCols, double** _pdblReal, double** _pdblImg)


Named variable profile:


::

    SciErr readNamedMatrixOfDouble(void* _pvCtx, const char* _pstName, int* _piRows, int* _piCols, double* _pdblReal)



::

    SciErr readNamedComplexMatrixOfDouble(void* _pvCtx, const char* _pstName, int* _piRows, int* _piCols, double* _pdblReal, double* _pdblImg)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h
: :_piAddress Address of the Scilab variable.
: :_pstName Name of the variable for "named" functions.
: :_piRows Return number of rows.
: :_piCols Return number of columns.
: :_pdblReal Return address of real data array (size: _iCols *
  _iRows). For "Named" function, _pdblReal must be allocated before
  calling function.
: :_pdblImg Return address of imaginary data array (size: _iCols *
  _iRows). For "Named" function, _pdblImg must be allocated before
  calling function.
: :SciErr Error structure where is stored errors messages history and
  first error number.
:



Description
~~~~~~~~~~~

This help describes how matrix of doubles can be handled through the
Scilab API.



Gateway Source
~~~~~~~~~~~~~~


::

    #include "api_scilab.h"
    int read_double(char *fname,unsigned long fname_len)
    {
    	SciErr sciErr;
    	int i;
    	//first variable info : real matrix of double
    	int iType			= 0;
    	int iRows			= 0;
    	int iCols			= 0;
    	int iComplex		= 0;
    	int *piAddr			= NULL;
    	double* pdblReal	= NULL;
    	double* pdblImg		= NULL;
    
    	//check input and output arguments
        CheckInputArgument(pvApiCtx, 1, 1);
        CheckOutputArgument(pvApiCtx, 1, 1);
    
        /************************
    	*    First variable    *
    	************************/
    
    	//get variable address of the first input argument
    	sciErr = getVarAddressFromPosition(pvApiCtx, 1, &piAddr);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//check type
    	sciErr = getVarType(pvApiCtx, piAddr, &iType);
    	if(sciErr.iErr || iType != sci_matrix)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//get complexity
    	iComplex	= isVarComplex(pvApiCtx, piAddr);
    
    	//check complexity
    	if(iComplex)
    	{
    		//get size and data from Scilab memory
    		sciErr = getComplexMatrixOfDouble(pvApiCtx, piAddr, &iRows, &iCols, &pdblReal, &pdblImg);
    	}
    	else
    	{
    		//get size and data from Scilab memory
    		sciErr = getMatrixOfDouble(pvApiCtx, piAddr, &iRows, &iCols, &pdblReal);
    	}
    
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//Do something with data
    	//if variable is complex, switch real part and imaginary part otherwise multiply by -1
    	if(iComplex)
    	{
    		sciErr = createComplexMatrixOfDouble(pvApiCtx, nbInputArgument + 1, iRows, iCols, pdblImg, pdblReal);
    	}
    	else
    	{
    		for(i = 0 ; i < iRows * iCols ; i++)
    		{
    			pdblReal[i] = pdblReal[i] * -1;
    		}
    		sciErr = createMatrixOfDouble(pvApiCtx, nbInputArgument + 1, iRows, iCols, pdblReal);
    	}
    
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
        AssignOutputVariable(1) = nbInputArgument + 1;
    	return 0;
    }




Scilab test script
~~~~~~~~~~~~~~~~~~


::

    a = [   0 1 2 3; ..
            4 5 6 7; ..
            8 9 10 11];
    b = [   23*%i,      1+22*%i,    2+21*%i,    3+20*%i,    4+19*%i,    5+18*%i; ..
            6+17*%i,    7+16*%i,    8+15*%i,    9+14*%i,     10+13*%i,  11+12*%i; ..
            12+11*%i,   13+10*%i,   14+9*%i,    15+8*%i,    16+7*%i,    17+6*%i; ..
            18+5*%i,    19+4*%i,    20+3*%i,    21+2*%i,    22+1*%i,    23];
    
    a2 = read_double(a);
    b2 = read_double(b);
    
    if `or`_(a2 <> a * -1) then `error`_("failed"), end
    if `or`_(b2 <> (`imag`_(b) + `real`_(b) * %i)) then `error`_("failed"), end




