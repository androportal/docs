


Matrix Type (Scilab gateway)
============================

How to know if an argument or a variable is stored as a matrix.



Calling Sequence
~~~~~~~~~~~~~~~~

Input argument profile:


::

    int isVarMatrixType(void* _pvCtx, int* _piAddress)


Named variable profile:


::

    int isNamedVarMatrixType(void* _pvCtx, const char *_pstName)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h
: :_piAddress Address of the variable
: :Returned value 1 if the variable is stored as matrix otherwise 0.
:



Description
~~~~~~~~~~~

This help describes how to know if a variable is stored as a matrix.

In some cases (exemple: list), a variable is not stored as a standard
Scilab matrix. This function provides a way to handle both cases.



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




