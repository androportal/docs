


Polynomial reading (Scilab gateway)
===================================

How to read matrices of polynomials in a gateway.



Calling Sequence
~~~~~~~~~~~~~~~~

Input argument profile:


::

    SciErr getMatrixOfPoly(void* _pvCtx, int* _piAddress, int* _piRows, int* _piCols, int* _piNbCoef, double** _pdblReal)



::

    SciErr getComplexMatrixOfPoly(void* _pvCtx, int* _piAddress, int* _piRows, int* _piCols, int* _piNbCoef, double** _pdblReal, double** _pdblImg)


Named variable profile:


::

    SciErr readNamedMatrixOfPoly(void* _pvCtx, const char* _pstName, int* _piRows, int* _piCols, int* _piNbCoef, double** _pdblReal)



::

    SciErr readNamedComplexMatrixOfPoly(void* _pvCtx, const char* _pstName, int* _piRows, int* _piCols, int* _piNbCoef, double** _pdblReal, double** _pdblImg)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_piAddress Address of the Scilab variable.
: :_pstName Name of the variable for "named" functions.
: :_piRows Return number of rows.
: :_piCols Return number of columns.
: :_piNbCoef Return number of coefficient for each polynomial. (must
  be allocated)
: :_pdblReal Address of array of double* with imaginary part of
  coefficient (size: _iCols * _iRows, must be allocated)
: :_pdblImg Address of array of double* with imaginary part of
  coefficient (size: _iCols * _iRows, must be allocated)
: :SciErr Error structure where is stored errors messages history and
  first error number.
:



Description
~~~~~~~~~~~

This help describes how matrix of polynomials can be handled through
the Scilab API.



Gateway Source
~~~~~~~~~~~~~~


::

    #include "api_scilab.h"
    int read_poly(char *fname,unsigned long fname_len)
    {
    	SciErr sciErr;
    	int i,j;
    	//variable info
    	int iRows			= 0;
    	int iCols			= 0;
    	int iVarLen			= 0;
    	int* piAddr			= NULL;
    	int* piNbCoef		= NULL;
    	double** pdblReal	= NULL;
    	double** pdblImg	= NULL;
    	char* pstVarname	= NULL;
    
    	//check input and output arguments
        CheckInputArgument(pvApiCtx, 1, 1);
        CheckOutputArgument(pvApiCtx, 1, 1);
    
    	sciErr = getVarAddressFromPosition(pvApiCtx, 1, &piAddr);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	if(isVarComplex(pvApiCtx, piAddr) == FALSE)
    	{
    		//Error
    		return 0;
    	}
    
    	//get variable name length
    	sciErr = getPolyVariableName(pvApiCtx, piAddr, NULL, &iVarLen);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//alloc buff to receive variable name
    	pstVarname = (char*)malloc(sizeof(char) * (iVarLen + 1));//1 for null termination
    
    	//get variable name
    	sciErr = getPolyVariableName(pvApiCtx, piAddr, pstVarname, &iVarLen);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//First call: retrieve dimmension
    	sciErr = getComplexMatrixOfPoly(pvApiCtx, piAddr, &iRows, &iCols, NULL, NULL, NULL);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//alloc array of coefficient
    	piNbCoef = (int*)malloc(sizeof(int) * iRows * iCols);
    
    	//Second call: retrieve coefficient
    	sciErr = getComplexMatrixOfPoly(pvApiCtx, piAddr, &iRows, &iCols, piNbCoef, NULL, NULL);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//alloc arrays of data
    	pdblReal    = (double**)malloc(sizeof(double*) * iRows * iCols);
    	pdblImg     = (double**)malloc(sizeof(double*) * iRows * iCols);
    
    	for(i = 0 ; i < iRows * iCols ; i++)
    	{
    		pdblReal[i] = (double*)malloc(sizeof(double) * piNbCoef[i]);
    		pdblImg[i] = (double*)malloc(sizeof(double) * piNbCoef[i]);
    	}
    
    	//Third call: retrieve data
    	sciErr = getComplexMatrixOfPoly(pvApiCtx, piAddr, &iRows, &iCols, piNbCoef, pdblReal, pdblImg);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//Do something with Data
    	//Invert polynomials in the matrix and invert coefficients
    	for(i = 0 ; i < (iRows * iCols) / 2 ; i++)
    	{
    		int iPos1			= iRows * iCols - 1 - i;
    		double* pdblSave	= NULL;
    		int iNbCoefSave		= 0;
    		//switch array of coefficient
    		pdblSave			= pdblReal[i];
    		pdblReal[i]			= pdblReal[iPos1];
    		pdblReal[iPos1]		= pdblSave;
    		pdblSave			= pdblImg[i];
    		pdblImg[i]			= pdblImg[iPos1];
    		pdblImg[iPos1]		= pdblSave;
    		//switch number of coefficient
    		iNbCoefSave			= piNbCoef[i];
    		piNbCoef[i]			= piNbCoef[iPos1];
    		piNbCoef[iPos1]		= iNbCoefSave;
    	}
    
    	//switch coefficient
    	for(i = 0 ; i < iRows * iCols ; i++)
    	{
    		for(j = 0 ; j < piNbCoef[i] /2 ; j++)
    		{
    			int iPos2			= piNbCoef[i] - 1 - j;
    			double dblVal		= pdblReal[i][j];
    			pdblReal[i][j]		= pdblReal[i][iPos2];
    			pdblReal[i][iPos2]	= dblVal;
    			dblVal				= pdblImg[i][j];
    			pdblImg[i][j]		= pdblImg[i][iPos2];
    			pdblImg[i][iPos2]	= dblVal;
    		}
    	}
    
    	sciErr = createComplexMatrixOfPoly(pvApiCtx, nbInputArgument + 1, pstVarname, iRows, iCols, piNbCoef, pdblReal, pdblImg);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//free OS memory
    	free(pstVarname);
    	free(piNbCoef);
    	for(i = 0 ; i < iRows * iCols ; i++)
    	{
    		free(pdblReal[i]);
    		free(pdblImg[i]);
    	}
    	free(pdblReal);
    	free(pdblImg);
    	//assign allocated variables to Lhs position
    	AssignOutputVariable(1) = nbInputArgument + 1;
    	return 0;
    }




Scilab test script
~~~~~~~~~~~~~~~~~~


::

    coeff1 = [ ..
    29*%i,22*%i,16*%i,11*%i,7*%i,30,23,17,12,8,-31*%i,-24*%i,-18*%i,-13*%i,-9*%i,32,25,19,14,10,-33*%i,-26*%i,-20*%i,-15*%i,0,34,27,21,0,0,0,-28*%i,0,0,0,36-35*%i,0,0,0,0; ..
    4*%i,2*%i,%i,22,16,5,-3,0,-23*%i,-17*%i,-6*%i,0,0,24,18,0,0,0,-25*%i,-19*%i,0,0,0,26,20,0,0,0,-27*%i,-21*%i,0,0,0,28,0,0,0,0,0,0; ..
    11,7,4,2,1,-12*%i,-8*%i,-5*%i,3*%i,0,13,9,6,0,0,-14*%i,-10*%i,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    
    x = `poly`_(0, "x");
    p1  = 1;
    p2  = 2 * x + 3 * %i;
    p3  = 4 * x**2 - 5 * %i * x + 6;
    p4  = 7 * x**3 - 8 * %i * x**2 + 9 * x - 10 * %i;
    p5  = 11 * x**4 - 12 * %i * x**3 + 13 * x**2 - 14 * %i * x + 15;
    p6  = 16 * x**5 - 17 * %i * x**4 + 18 * x**3 - 19 * %i * x**2 + 20 * x  - 21 * %i;
    p7  = 22 * x**6 - 23 * %i * x**5 + 24 * x**4 - 25 * %i * x**3 + 26 * x**2 - 27 * %i * x + 28;
    p8  = %i;
    p9  = 2 * %i * x - 3;
    p10 = 4 * %i * x**2 + 5 * x - 6 * %i;
    p11 = 7 * %i * x**3 + 8 * x**2 - 9 * %i * x + 10;
    p12 = 11 * %i * x**4 + 12 * x**3 - 13 * %i * x**2 + 14 * x - 15 * %i;
    p13 = 16 * %i * x**5 + 17 * x**4 - 18 * %i * x**3 + 19 * x**2 - 20 * %i * x  + 21;
    p14 = 22 * %i * x**6 + 23 * x**5 - 24 * %i * x**4 + 25 * x**3 - 26 * %i * x**2 + 27 * x - 28 * %i;
    p15 = 29 * %i * x**7 + 30 * x**6 - 31 * %i * x**5 + 32 * x**4 - 33 * %i * x**3 + 34 * x**2 - 35 * %i + 36;
    p = [p1, p2, p3, p4, p5 ; p6, p7, p8, p9 ,p10 ; p11, p12, p13, p14, p15];
    
    p1 = read_poly(p);
    coeff2 = `coeff`_(p1);
    if `or`_(coeff2 <> coeff1) then `error`_("failed"), end




