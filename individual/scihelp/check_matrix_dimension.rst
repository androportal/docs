


Check variable dimensions (Scilab gateway)
==========================================

A C gateway functions which check dimensions of a variable.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    int checkVarDimension(void* _pvCtx, int* _piAddress, int _iRows, int _iCols)



::

    int isRowVector(void* _pvCtx, int* _piAddress)



::

    int isColumnVector(void* _pvCtx, int* _piAddress)



::

    int isVector(void* _pvCtx, int* _piAddress)



::

    int isScalar(void* _pvCtx, int* _piAddress)



::

    int isSquareMatrix(void* _pvCtx, int* _piAddress)



::

    int isEmptyMatrix(void* _pvCtx, int* _piAddress)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h
: :_piAddress Address of the Scilab variable.
: :_iRows Expected row count
: :_iCols Expected col count
:



Description
~~~~~~~~~~~

A C gateway functions which check dimensions of a variable.



Examples
~~~~~~~~

In this example, the C interface function can take several input
arguments and prints input dimensions and several test results.


::

    #include "api_scilab.h"
    #include "sciprint.h"
    
    `int`_ check_matrix_dimension(char * fname)
    {
        SciErr sciErr;
        `int`_* piAddr = NULL;
        `int`_ iRows = 0;
        `int`_ iCols = 0;
    
        CheckInputArgument(pvApiCtx, 1, 1);
    
        sciErr = getVarAddressFromPosition(pvApiCtx, 1, &piAddr);
        if(sciErr.iErr)
        {
            printError(&sciErr, 0);
            return 1;
        }
    
        sciErr = getVarDimension(pvApiCtx, piAddr, &iRows, &iCols);
        if(sciErr.iErr)
        {
            printError(&sciErr, 0);
            return 1;
        }
    
        if(checkVarDimension(pvApiCtx, piAddr, iCols, iRows))
        {
            sciprint("checkVarDimension returns false\n");
        }
        else
        {
            sciprint("checkVarDimension returns true\n");
        }
    
        if(isRowVector(pvApiCtx, piAddr))
        {
            sciprint("isRowVector\n");
        }
    
        if(isColumnVector(pvApiCtx, piAddr))
        {
            sciprint("isColumnVector\n");
        }
    
        if(isVector(pvApiCtx, piAddr))
        {
            sciprint("isVector\n");
        }
    
        if(isScalar(pvApiCtx, piAddr))
        {
            sciprint("isScalar\n");
        }
    
        if(isSquareMatrix(pvApiCtx, piAddr))
        {
            sciprint("isSquareMatrix\n");
        }
    
        if(isEmptyMatrix(pvApiCtx, piAddr))
        {
            sciprint("isEmptyMatrix\n");
        }
    
        //no return value
        AssignOutputVariable(0) = 1;
        return 0;
    }




Scilab test script
~~~~~~~~~~~~~~~~~~


::

    check_matrix_dimension([1,2,3;4,5,6]);
    check_matrix_dimension([1,2,3]);
    check_matrix_dimension([1;2;3]);
    check_matrix_dimension([1]);
    check_matrix_dimension([1,2;3,4]);
    check_matrix_dimension([]);




See Also
~~~~~~~~


+ `sciprint`_ A C gateway function which displays standard messages to
  the user (same profil as the C printf function)


.. _sciprint: sciprint.html


