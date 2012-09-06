


Boolean writing (Scilab gateway)
================================

How to write matrices of boolean.



Calling Sequence
~~~~~~~~~~~~~~~~

Input argument profile:


::

    SciErr createMatrixOfBoolean(void* _pvCtx, int _iVar, int _iRows, int _iCols, const int* _piBool)


Named variable profile:


::

    SciErr createNamedMatrixOfBoolean(void* _pvCtx, const char* _pstName, int _iRows, int _iCols, const int* _piBool)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_iVar Position in the Scilab memory where you want to put the
  variable.
: :_pstName Name of the variable for "named" functions.
: :_piRows Return number of rows of the variable.
: :_piCols Return number of columns of the variable.
: :_piBool Return address of data array (size: _iRows * _iCols).
: :SciErr Error structure where is stored errors messages history and
  first error number.
:
Write directly in Scilab memory.


Calling Sequence
~~~~~~~~~~~~~~~~

Input argument profile:


::

    SciErr allocMatrixOfBoolean(void* _pvCtx, int _iVar, int _iRows, int _iCols, int** _piBool)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_iVar Position in the Scilab memory where you want to put the
  variable.
: :_iRows Number of rows of the new variable.
: :_iCols Numbers of columns of the new variable.
: :_piBool Returns address of real data array (size: _iCols * _iRows).
: :SciErr Error structure where is stored errors messages history and
  first error number.
:



Description
~~~~~~~~~~~

This help describes how to write matrix of boolean.



Gateway Source
~~~~~~~~~~~~~~


::

    #include "api_scilab.h"
    
    int read_write_boolean(char *fname,unsigned long fname_len)
    {
        SciErr sciErr;
        int i;
        //first variable info : real matrix of double
        int iRows       = 0;
        int iCols       = 0;
        int *piAddr     = NULL;
        int* piBool     = NULL;
    
        //check input and output arguments
        CheckInputArgument(pvApiCtx, 1,1);
        CheckOutputArgument(pvApiCtx, 1,1);
    
        //get variable address of the first input argument
        sciErr = getVarAddressFromPosition(pvApiCtx, 1, &piAddr);
        if(sciErr.iErr)
        {
            printError(&sciErr, 0);
            return 0;
        }
    
        //get size and data from Scilab memory
        sciErr = getMatrixOfBoolean(pvApiCtx, piAddr, &iRows, &iCols, &piBool);
        if(sciErr.iErr)
        {
            printError(&sciErr, 0);
            return 0;
        }
    
        //Do something with data
        for(i = 0 ; i < iRows * iCols ; i++)
        {
            piBool[i] = piBool[i] == 0 ? 1 : 0;
        }
    
        sciErr = createMatrixOfBoolean(pvApiCtx, nbInputArgument + 1, iRows, iCols, piBool);
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

    a = [%t, %f, %t ; %f, %t, %f ; %t, %f, %t];
    a_ref = [%f, %t, %f ; %t, %f, %t ; %f, %t, %f];
    b = read_write_boolean(a);
    
    if `or`_(b <> a_ref) then `error`_("failed"), end




