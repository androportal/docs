


Pointer writing (Scilab gateway)
================================

How to write pointer in a gateway.
Create from existing data.


Calling Sequence
~~~~~~~~~~~~~~~~

Input argument profile:


::

    SciErr createPointer(void* _pvCtx, int _iVar, void* _pvPtr)


Named variable profile:


::

    SciErr createNamedPointer(void* _pvCtx, const char* _pstName, void** _pvPtr)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h
: :_iVar Position in the Scilab memory where you want to put the
  variable
: :_pstName Name of the variable for "named" functions.
: :_pvPtr Address of pointer.
: :SciErr Error structure where is stored errors messages history and
  first error number.
:
Write directly in Scilab memory.


Calling Sequence
~~~~~~~~~~~~~~~~


::

    SciErr allocPointer(void* _pvCtx, int _iVar, void** _pvPtr)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_piAddress Address of the Scilab variable.
: :_pvPtr Return address of pointer.
: :SciErr Error structure where is stored errors messages history and
  first error number.
:



Description
~~~~~~~~~~~

This help describes how pointer can be handled through the Scilab API.

Two types of functions can be used to write in the memory of Scilab.



Gateway Source
~~~~~~~~~~~~~~


::

    #include "api_scilab.h"
    int read_pointer(char *fname,unsigned long fname_len)
    {
    	SciErr sciErr;
    
    	CheckInputArgument(pvApiCtx, 0, 1);
        CheckOutputArgument(pvApiCtx, 1, 1);
    
    	if(nbInputArgument == 0)
    	{//create mode
    		double* pdblData    = (double*)malloc(sizeof(double) * 2 * 2);
    		pdblData[0]			= 1;
    		pdblData[1]			= 3;
    		pdblData[2]			= 2;
    		pdblData[3]			= 4;
    		sciErr = createPointer(pvApiCtx, nbInputArgument + 1, (void*)pdblData);
    	}
    	else if(nbInputArgument == 1)
    	{//read mode
    		int iType			= 0;
    		int* piAddr			= NULL;
    		void* pvPtr			= NULL;
    		double* pdblData	= NULL;
    		sciErr = getVarAddressFromPosition(pvApiCtx, 1, &piAddr);
    		if(sciErr.iErr)
    		{
    			printError(&sciErr, 0);
    			return 0;
    		}
    		sciErr = getPointer(pvApiCtx, piAddr, &pvPtr);
    		if(sciErr.iErr)
    		{
    			printError(&sciErr, 0);
    			return 0;
    		}
    		pdblData = (double*)pvPtr;
    		sciErr = createMatrixOfDouble(pvApiCtx, nbInputArgument + 1, 2, 2, pdblData);
    	}
    	else
    	{
    		return 0;
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

    b_ref = [1,2;3,4];
    a = read_pointer();
    b = read_pointer(a);
    if `or`_(b <> b_ref) then `error`_("failed"), end




