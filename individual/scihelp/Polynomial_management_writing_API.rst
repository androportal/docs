


Polynomial writing (Scilab gateway)
===================================

How to write matrices of polynomials in a gateway.



Calling Sequence
~~~~~~~~~~~~~~~~

Input argument profile:


::

    SciErr createMatrixOfPoly(void* _pvCtx, int _iVar, char* _pstVarName, int _iRows, int _iCols, const int* _piNbCoef, const double* const* _pdblReal)



::

    SciErr createComplexMatrixOfPoly(void* _pvCtx, int _iVar, char* _pstVarName, int _iRows, int _iCols, const int* _piNbCoef, const double* const* _pdblReal, const double* const* _pdblImg)


Named variable profile:


::

    SciErr createNamedMatrixOfPoly(void* _pvCtx, const char* _pstName, char* _pstVarName, int _iRows, int _iCols, const int* _piNbCoef, const double* const* _pdblReal)



::

    SciErr createNamedComplexMatrixOfPoly(void* _pvCtx, const char* _pstName, char* _pstVarName, int _iRows, int _iCols, const int* _piNbCoef, const double* const* _pdblReal, const double* const* _pdblImg)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_iVar Position in the Scilab memory where you want to put the
  variable
: :_pstName Name of the variable for "named" functions.
: :_pstVarName Variable name in polynomials (Scilab5: 4 characters
  max)
: :_iRows Number of rows of the new variable
: :_iCols Numbers of columns of the new variable
: :_piNbCoef Number of coefficient for each polynomial.
: :_pdblReal Address of array of double* with real part of coefficient
  (size: _iCols * _iRows)
: :_pdblImg Address of array of double* with imaginary part of
  coefficient (size: _iCols * _iRows)
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
    int write_poly(char *fname,unsigned long fname_len)
    {
        SciErr sciErr;
        //output variable info : polinomial matrix 2 x 4
        //[ x + 2                   x^2 - 4x + 5    4x^3 - 14x^2 + 18 ;
        //  2x^3 - 12x^2 + 64       1               8x^5 + 32x^3]
        int iRows               = 2;
        int iCols               = 3;
        //varname "x"
        char pstVarName[2]      = {"x"};
        //coeficient array
        int piNbCoef[6]         = {2,4,3,1,4,6};
        //data array
        double *pdblReal[6]     = {0};
        double pdblPoly0[2]     = {2,1};
        double pdblPoly1[4]     = {64,0,-12,2};
        double pdblPoly2[3]     = {5,-4,1};
        double pdblPoly3[1]     = {1};
        double pdblPoly4[4]     = {18,0,-14,4};
        double pdblPoly5[6]     = {0,0,0,32,0,8};
        pdblReal[0]             = pdblPoly0;
        pdblReal[1]             = pdblPoly1;
        pdblReal[2]             = pdblPoly2;
        pdblReal[3]             = pdblPoly3;
        pdblReal[4]             = pdblPoly4;
        pdblReal[5]             = pdblPoly5;
    
        sciErr = createMatrixOfPoly(pvApiCtx, nbInputArgument + 1, pstVarName, iRows, iCols, piNbCoef, pdblReal);
        if(sciErr.iErr)
        {
            printError(&sciErr, 0);
            return 0;
        }
    
        //assign allocated variables to Lhs position
        AssignOutputVariable(1) = nbInputArgument + 1;
        return 0;
    }




Scilab test script
~~~~~~~~~~~~~~~~~~


::

    p_ref = [2 5 18 1 -4 0 0 1 -14 0 0 4 0 0 0 0 0 0;64 1 0 0 0 0 -12 0 0 2 0 32 0 0 0 0 0 8];
    l = `list`_();
    a = write_poly();
    p = `coeff`_(a);
    if `or`_(p <> p_ref) then `error`_("failed"), end




