


Boolean sparse writing (Scilab gateway)
=======================================

How to add boolean sparse matrix in a gateway.



Calling Sequence
~~~~~~~~~~~~~~~~

Input argument profile:


::

    SciErr createBooleanSparseMatrix(void* _pvCtx, int _iVar, int _iRows, int _iCols, int _iNbItem, const int* _piNbItemRow, const int* _piColPos)


Named variable profile:


::

    SciErr createNamedBooleanSparseMatrix(void* _pvCtx, const char* _pstName, int _iRows, int _iCols, int _iNbItem, const int* _piNbItemRow, const int* _piColPos)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_iVar Position in the Scilab memory where you want to put the
  variable.
: :_pstName Name of the variable for "named" functions.
: :_iRows Number of rows of the new variable.
: :_iCols Number of columns of the new variable.
: :_iNbItem Number of non zero itmes in the sparse.
: :_piNbItemRow Number of item in each rows (size: _iRows).
: :_piColPos Column position for each item (size: _iNbItem).
: :SciErr Error structure where is stored errors messages history and
  first error number.
:
Write directly in Scilab memory.


Calling Sequence
~~~~~~~~~~~~~~~~

Input argument profile:


::

    SciErr allocBooleanSparseMatrix(void* _pvCtx, int _iVar, int _iRows, int _iCols, int _iNbItem, int** _piNbItemRow, int** _piColPos)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_iVar Position in the Scilab memory where you want to put the
  variable.
: :_iRows Number of rows of the new variable.
: :_iCols Number of columns of the new variable.
: :_iNbItem Number of non zero itmes in the sparse.
: :_piNbItemRow Number of item in each rows (size: _iRows).
: :_piColPos Column position for each item (size: _iNbItem).
: :SciErr Error structure where is stored errors messages history and
  first error number.
:



Description
~~~~~~~~~~~

This help describes how to add boolean sparse matrix in a list.



Gateway Source
~~~~~~~~~~~~~~


::

    #include "api_scilab.h"
    int read_write_bsparse(char *fname,unsigned long fname_len)
    {
        SciErr sciErr;
        int i                   = 0;
        int j                   = 0;
        int k                   = 0;
        //first variable info : real matrix of double
        int iRows               = 0;
        int iCols               = 0;
        int *piAddr             = NULL;
        int iNbItem             = 0;
        int* piNbItemRow        = NULL;
        int* piColPos           = NULL;
        int iCol                = 0;
        int iNewCol             = 0;
        int iNewItem            = 0;
        int* piNewRow           = NULL;
        int* piNewCol           = NULL;
    
        //check input and output arguments
        CheckInputArgument(pvApiCtx, 1, 1);
        CheckOutputArgument(pvApiCtx, 1, 1);
    
        //get variable address of the first input argument
        sciErr = getVarAddressFromPosition(pvApiCtx, 1, &piAddr);
        if(sciErr.iErr)
        {
            printError(&sciErr, 0);
            return 0;
        }
    
        //get size and data from Scilab memory
        sciErr = getBooleanSparseMatrix(pvApiCtx, piAddr, &iRows, &iCols, &iNbItem, &piNbItemRow, &piColPos);
        if(sciErr.iErr)
        {
            printError(&sciErr, 0);
            return 0;
        }
    
        //Do something with data
        //convert %T -> %F and %F -> %T
        iNewItem = (iRows * iCols) - iNbItem;
        piNewRow = (int*)MALLOC(sizeof(int) * iRows);
        piNewCol = (int*)MALLOC(sizeof(int) * iNewItem);
    
        for(i = 0 ; i < iRows ; i++)
        {
            piNewRow[i] = iCols - piNbItemRow[i];
            for(j = 0 ; j < iCols ; j++)
            {
                int iFind = 0;
                for(k = 0 ; k < piNbItemRow[i] ; k++)
                {
                    if(piColPos[iCol + k] == (j + 1))
                    {
                        iFind = 1;
                        break;
                    }
                }
    
                if(iFind == 0)
                {
                    piNewCol[iNewCol++] = (j + 1);
                }
            }
    
            iCol += piNbItemRow[i];
        }
    
        sciErr = createBooleanSparseMatrix(pvApiCtx, nbInputArgument + 1, iRows, iCols, iNewItem, piNewRow, piNewCol);
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

    a = `sparse`_([%t, %f, %t ; %f, %t, %f ; %t, %f, %t]);
    a_ref = `sparse`_([%f, %t, %f ; %t, %f, %t ; %f, %t, %f]);
    
    b = read_write_bsparse(a);
    if `or`_(b <> a_ref) then `error`_("failed");end




