


Integer Precision (Scilab gateway)
==================================

How to get precision of an integer matrix.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    SciErr getMatrixOfIntegerPrecision(void* _pvCtx, int* _piAddress, int* _piPrecision)



::

    SciErr getNamedMatrixOfIntegerPrecision(void* _pvCtx, const char* _pstName, int* _piPrecision)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h
: :_piAddress Address of the variable.
: :_pstName Name of the variable for "named" functions.
: :_piPrecision Return precision of an integer variable. ( SCI_INT8,
  SCI_UINT8, SCI_INT16, ... )
: :SciErr Error structure where is stored errors messages history and
  first error number.
:



Description
~~~~~~~~~~~

This help describes how to get precision of an integer matrix.



Gateway Source
~~~~~~~~~~~~~~


::

    #include "api_scilab.h"
    SciErr printf_info(int _iVar);
    
    int common_function(char *fname,unsigned long fname_len)
    {
        SciErr sciErr;
        int i;
        int *piAddr1    = NULL;
        int iBool       = 0;
    
        for(i = 0 ; i < nbInputArgument ; i++)
        {
            sciErr = printf_info(i + 1);
            if(sciErr.iErr)
            {
                printError(&sciErr, 0);
                break;
            }
            sciprint("\n\n");
        }
    
        //1 for true, 0 for false
        iBool = sciErr.iErr == 0 ? 1 : 0;
    
        sciErr = createMatrixOfBoolean(pvApiCtx, nbInputArgument + 1, 1, 1, &iBool);
        if(sciErr.iErr)
        {
            printError(&sciErr, 0);
            return 0;
        }
    
        //assign allocated variables to Lhs position
        AssignOutputVariable(1) = nbInputArgument + 1;
        return 0;
    }
    SciErr printf_info(int _iVar)
    {
        SciErr sciErr;
        int* piAddr     = NULL;
        int iType       = 0;
        int iRows       = 0;
        int iCols       = 0;
        int iItem       = 0;
        int iComplex    = 0;
    
        sciErr = getVarAddressFromPosition(pvApiCtx, _iVar, &piAddr);
        if(sciErr.iErr)
        {
            return sciErr;
        }
    
        sciprint("Variable %d information:\n", _iVar);
    
        sciErr = getVarType(pvApiCtx, piAddr, &iType);
        if(sciErr.iErr)
        {
            return sciErr;
        }
    
        sciprint("\tType: ");
        switch(iType)
        {
            case sci_matrix :
                sciprint("double\n");
                break;
            case sci_poly :
                sciprint("polynomial\n");
                break;
            case sci_boolean :
                sciprint("boolean\n");
                break;
            case sci_sparse :
                sciprint("sparse\n");
                break;
            case sci_boolean_sparse :
                sciprint("boolean_sparse\n");
                break;
            case sci_ints :
            {
                char pstSigned[]    = "signed";
                char pstUnsigned[]  = "unsigned";
                char* pstSign       = pstSigned;
                int iPrec           = 0;
    
                sciErr = getMatrixOfIntegerPrecision(pvApiCtx, piAddr, &iPrec);
                if(sciErr.iErr)
                {
                    return sciErr;
                }
    
                if(iPrec > 10)
                {
                    pstSign = pstUnsigned;
                }
    
                sciprint("%s integer %d bits\n", pstSign, (iPrec % 10) * 8);
            }
            break;
            case sci_strings :
                sciprint("strings\n");
                break;
            case sci_list :
                sciprint("list\n");
                break;
            case sci_tlist :
                sciprint("tlist\n");
                break;
            case sci_mlist :
                sciprint("mlist\n");
                break;
            default :
                sciprint("Not manage by this function\n");
                return sciErr;
        }
    
        if(isVarComplex(pvApiCtx, piAddr))
        {
            sciprint("\tComplex: Yes\n");
        }
    
        sciprint("\tDimensions: ");
        if(isVarMatrixType(pvApiCtx, piAddr))
        {
            sciErr = getVarDimension(pvApiCtx, piAddr, &iRows, &iCols);
            if(sciErr.iErr)
            {
                return sciErr;
            }
    
            sciprint("%d x %d", iRows, iCols);
        }
        else
        {
            sciErr = getListItemNumber(pvApiCtx, piAddr, &iItem);
            if(sciErr.iErr)
            {
                return sciErr;
            }
    
            sciprint("%d", iItem);
        }
        return sciErr;
    }




Scilab test script
~~~~~~~~~~~~~~~~~~


::

    l1 = [1,2*%i,3;%i,2,3*%i];
    l2 = ["may","the";"puffin","be";"with","you"];
    l3 = `int8`_([1,2,3]);
    l4 = `uint16`_([1000,2000,3000]);
    l5 = `list`_(l1,l2,l3);
    l = `list`_(l1,l2,l3,l4,l5);
    common_function(l(1:$))




