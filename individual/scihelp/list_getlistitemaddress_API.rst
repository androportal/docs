


Get child item (Scilab gateway)
===============================

How to get the address of a list child.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    SciErr getListItemAddress(void* _pvCtx, int* _piAddress, int _iItemNum, int** _piItemAddress)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_piAddress Address of the list.
: :_iItemNum Item number.
: :_piItemAddress Return address of the item.
: :SciErr Error structure where is stored errors messages history and
  first error number.
:



Description
~~~~~~~~~~~

This help describes how to get the address of a list child.



Gateway Source
~~~~~~~~~~~~~~


::

    #include "api_scilab.h"
    
    int get_list_info(int* _piAddress);
    void insert_indent(void);
    
    static int iLocalTab = 0;
    
    int common_list(char *fname,unsigned long fname_len)
    {
        SciErr sciErr;
        int *piAddr = NULL;
    
        CheckInputArgument(pvApiCtx, 1, 1);
    
        sciErr = getVarAddressFromPosition(pvApiCtx, 1, &piAddr);
        if(sciErr.iErr)
        {
            printError(&sciErr, 0);
            return 0;
        }
    
        get_list_info(piAddr);
        AssignOutputVariable(1) = 0;
        return 0;
    }
    int get_list_info(int* _piAddress)
    {
        SciErr sciErr;
        int i       = 0;
        int iRet    = 0;
        int iItem   = 0;
    
        //get list item number, failed if variable is not a kind of list
        sciErr = getListItemNumber(pvApiCtx, _piAddress, &iItem);
        if(sciErr.iErr)
        {
            printError(&sciErr, 0);
            sciprint("This variable is not a list");
            return 0;
        }
    
        sciprint("List (%d items) -> address : 0x%08X) : \n", iItem, _piAddress);
    
        for(i = 0 ; i < iItem ; i++)
        {
            int iType           = 0;
            int* piAddrChild    = NULL;
    
            sciErr = getListItemAddress(pvApiCtx, _piAddress, i + 1, &piAddrChild);
            if(sciErr.iErr)
            {
                printError(&sciErr, 0);
                return 0;
            }
    
            sciErr = getVarType(pvApiCtx, piAddrChild, &iType);
            if(sciErr.iErr)
            {
                printError(&sciErr, 0);
                return 0;
            }
    
            if(iType == sci_list || iType == sci_tlist || iType == sci_mlist)
            {
                insert_indent();
                sciprint("Child %d -> ", i + 1);
                iLocalTab++;
                iRet = get_list_info(piAddrChild);
                iLocalTab--;
    
                if(iRet)
                {
                    return 1;
                }
            }
            else
            {
                insert_indent();
                sciprint("Child %d -> address : 0x%08X\n", i + 1, piAddrChild);
            }
        }
    
        return 0;
    }
    void insert_indent(void)
    {
        int i = 0;
        for(i = 0 ; i < iLocalTab ; i++)
        {
            sciprint("\t");
        }
    }




Scilab test script
~~~~~~~~~~~~~~~~~~


::

    l1 = [1,2*%i,3;%i,2,3*%i];
    l2 = ["may","the";"puffin","be";"with","you"];
    l3 = `int8`_([1,2,3]);
    l5 = `list`_(l1,l2,l3);
    l4 = `list`_(l5, `list`_(l5,l5));
    l6 = `uint16`_([1000,2000,3000]);
    l = `list`_(l1,l2,l3,l6,l4,l5);
    common_list(l)




