


Double writing (Scilab gateway)
===============================

How to write matrices of doubles in a gateway.
Create from existing data.


Calling Sequence
~~~~~~~~~~~~~~~~

Input argument profile:


::

    SciErr createMatrixOfDouble(void* _pvCtx, int _iVar, int _iRows, int _iCols, const double* _pdblReal)



::

    SciErr createComplexMatrixOfDouble(void* _pvCtx, int _iVar, int _iRows, int _iCols, const double* _pdblReal, double* _pdblImg)


Named variable profile:


::

    SciErr createNamedMatrixOfDouble(void* _pvCtx, const char* _pstName, int _iRows, int _iCols, const double* _pdblReal)



::

    SciErr createNamedComplexMatrixOfDouble(void* _pvCtx, const char* _pstName, int _iRows, int _iCols, const double* _pdblReal, const double* _pdblImg)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_iVar Position in the Scilab memory where you want to put the
  variable.
: :_pstName Name of the variable for "named" functions.
: :_iRows Number of rows of the new variable.
: :_iCols Numbers of columns of the new variable.
: :_pdblReal Address of real data array (size: _iCols * _iRows).
: :_pdblImg Address of imaginary data array (size: _iCols * _iRows).
  This argument does not exist with createMatrixOfDouble and
  createNamedMatrixOfDouble.
: :SciErr Error structure where is stored errors messages history and
  first error number.
:
Write directly in Scilab memory.


Calling Sequence
~~~~~~~~~~~~~~~~

Input argument profile:


::

    SciErr allocMatrixOfDouble(void* _pvCtx, int _iVar, int _iRows, int _iCols, double** _pdblReal)



::

    SciErr allocComplexMatrixOfDouble(void* _pvCtx, int _iVar, int _iRows, int _iCols, double** _pdblReal, double** _pdblImg)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_iVar Position in the Scilab memory where you want to put the
  variable.
: :_iRows Number of rows of the new variable.
: :_iCols Numbers of columns of the new variable.
: :_pdblReal Returns address of real data array (size: _iCols *
  _iRows).
: :_pdblImg Returns address of imaginary data array (size: _iCols *
  _iRows). This argument does not exist with allocMatrixOfDouble.
: :SciErr Error structure where is stored errors messages history and
  first error number.
:



Gateway Source
~~~~~~~~~~~~~~


::

    #include "api_scilab.h"
    int write_double(char *fname,unsigned long fname_len)
    {
    	SciErr sciErr;
    	int i,j;
    	//first variable info : real matrix of double 3 x 4
    	int iRows1			= 3;
    	int iCols1			= 4;
    	double* pdblReal1	= NULL;
    	//second variable info : complex matrix of double 4 x 6
    	int iRows2			= 4;
    	int iCols2			= 6;
    	double* pdblReal2	= NULL;
    	double* pdblImg2	= NULL;
    
    	/************************
    	*    First variable    *
    	************************/
    
    	//alloc array of data in OS memory
    	pdblReal1 = (double*)malloc(sizeof(double) * iRows1 * iCols1);
    	//fill array with incremental values
    	//[ 0   1   2   3
    	//  4   5   6   7
    	//  8   9   10  11]
    	for(i = 0 ; i < iRows1 ; i++)
    	{
    		for(j = 0 ; j < iCols1 ; j++)
    		{
    			pdblReal1[i + iRows1 * j] = i * iCols1 + j;
    		}
    	}
    
    	//can be written in a single loop
    	//for(i = 0 ; i < iRows1 * iCols1; i++)
    	//{
    	//  pdblReal1[i] = i;
    	//}
    	//create a variable from a existing data array
    
    	sciErr = createMatrixOfDouble(pvApiCtx, nbInputArgument + 1, iRows1, iCols1, pdblReal1);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    	//after creation, we can free memory.
    	free(pdblReal1);
    
    	
        /*************************
    	*    Second variable    *
    	*************************/
    
    	//reserve space in scilab memory and fill it
    	sciErr = allocComplexMatrixOfDouble(pvApiCtx, nbInputArgument + 2, iRows2, iCols2, &pdblReal2, &pdblImg2);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//fill array with incremental values for real part and decremental for imaginary part
    	//[ 23i     1+22i       2+21i       3+20i       4+19i       5+18i
    	//  6+17i   7+16i       8+15i       9+14i       10+13i      11+12i
    	//  12+11i  13+10i      14+9i       15+8i       16+7i       17+6i
    	//  18+5i   19+4i       20+3i       21+2i       22+1i       23  ]
    	for(i = 0 ; i < iRows2 ; i++)
    	{
    		for(j = 0 ; j < iCols2 ; j++)
    		{
    			pdblReal2[i + iRows2 * j] = i * iCols2 + j;
    			pdblImg2 [i + iRows2 * j]	= (iRows2 * iCols2 - 1) - (i * iCols2 + j);
    		}
    	}
    
    	//can be written in a single loop
    	//for(i = 0 ; i < iRows2 * iCols2; i++)
    	//{
    	//  pdblReal2[i] = i;
    	//  pdblImg2 [i] = (iRows2 * iCols2 - 1) - i;
    	//}
    	// /!\ DO NOT FREE MEMORY, in this case, it's the Scilab memory
    	//assign allocated variables to Lhs position
    
        AssignOutputVariable(1) = nbInputArgument + 1;
        AssignOutputVariable(2) = nbInputArgument + 2;
    
        return 0;
    }




Scilab test script
~~~~~~~~~~~~~~~~~~


::

    a_ref = [   0 1 2 3; ..
                4 5 6 7; ..
                8 9 10 11];
    b_ref = [   23*%i,      1+22*%i,    2+21*%i,    3+20*%i,    4+19*%i,    5+18*%i; ..
                6+17*%i,    7+16*%i,    8+15*%i,    9+14*%i,     10+13*%i,  11+12*%i; ..
                12+11*%i,   13+10*%i,   14+9*%i,    15+8*%i,    16+7*%i,    17+6*%i; ..
                18+5*%i,    19+4*%i,    20+3*%i,    21+2*%i,    22+1*%i,    23];
    [a,b] = write_double();
    if `or`_(a <> a_ref) then `error`_("failed");end
    if `or`_(b <> b_ref) then `error`_("failed");end




