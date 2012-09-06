


Sparse writing (Scilab gateway)
===============================

How to add sparse matrix in a list.
Create from existing data.


Calling Sequence
~~~~~~~~~~~~~~~~

Input argument profile:


::

    SciErr createSparseMatrixInList(void* _pvCtx, int _iVar, int* _piParent, int _iItemPos, int _iRows, int _iCols, int _iNbItem, const int* _piNbItemRow, const int* _piColPos, const double* _pdblReal)



::

    SciErr createComplexSparseMatrixInList(void* _pvCtx, int _iVar, int* _piParent, int _iItemPos, int _iRows, int _iCols, int _iNbItem, const int* _piNbItemRow, const int* _piColPos, const double* _pdblReal, const double* _pdblImg)


Named variable profile:


::

    SciErr createSparseMatrixInNamedList(void* _pvCtx, const char* _pstName, int* _piParent, int _iItemPos, int _iRows, int _iCols, int _iNbItem, const int* _piNbItemRow, const int* _piColPos, const double* _pdblReal)



::

    SciErr createComplexSparseMatrixInNamedList(void* _pvCtx, const char* _pstName, int* _piParent, int _iItemPos, int _iRows, int _iCols, int _iNbItem, const int* _piNbItemRow, const int* _piColPos, const double* _pdblReal, const double* _pdblImg)




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h.
: :_iVar Position in the Scilab memory where you want to put the
  variable.
: :_pstName Name of the variable for "named" functions.
: :_piParent Address of the parent of the new item.
: :_iItemPos Position of the new item in the list.
: :_iRows Number of rows of the new variable.
: :_iCols Number of columns of the new variable.
: :_iNbItem Number of non zero itmes in the sparse.
: :_piNbItemRow Number of item in each rows (size: _iRows).
: :_piColPos Column position for each item (size: _iNbItem).
: :_pdblReal Address of real data array (size: _iNbItem).
: :_pdblImg Address of imaginary data array (size: _iNbItem).
: :SciErr Error structure where is stored errors messages history and
  first error number.
:



Description
~~~~~~~~~~~

This help describes how to add sparse matrix in a list.



Gateway Source
~~~~~~~~~~~~~~


::

    #include "api_scilab.h"
    int list_createlist(char *fname,unsigned long fname_len)
    {
    	SciErr sciErr;
    	int *piAddr             = NULL;
    	int* piChild            = NULL;
    	double pdblData1[]      = {1,3,5,2,4,6};
    	double pdblData2[]      = {6,4,2,5,3,1};
    	char *pstData[]         = {"may","be","the","with","puffin","you"};
    	short psData[]          = {1,4,2,5,3,6};
    	double pdblPoly1[]      = {1};
    	double pdblPoly2[]      = {-2,-1};
    	double pdblPoly3[]      = {1,2,3};
    	double pdblPoly4[]      = {-4,-3,-2,-1};
    	double pdblPoly5[]      = {1,2,3,4,5};
    	double pdblPoly6[]      = {-6,-5,-4,-3,-2,-1};
    	double *pdblPoly[]      = {pdblPoly1, pdblPoly3, pdblPoly5, pdblPoly2, pdblPoly4, pdblPoly6};
    	int piCoef[]            = {1,3,5,2,4,6};
    	int piNbItemRow[]       = {1,2,1};
    	int piColPos[]          = {8,4,7,2};
    	double pdblSReal[]      = {1,2,3,4};
    	double pdblSImg[]       = {4,3,2,1};
    	int piBool[]            = {1,0,1,0,1,0,1,0,1};
    	double* pdblDataPtr     = NULL;
    
    	sciErr = createList(pvApiCtx, nbInputArgument + 1, 8, &piAddr);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	sciErr = createComplexMatrixOfDoubleInList(pvApiCtx, nbInputArgument + 1, piAddr, 1, 3, 2, pdblData1, pdblData2);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	sciErr = createMatrixOfStringInList(pvApiCtx, nbInputArgument + 1, piAddr, 2, 2, 3, pstData);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	sciErr = createMatrixOfInteger16InList(pvApiCtx, nbInputArgument + 1, piAddr, 3, 2, 3, psData);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	sciErr = createMatrixOfPolyInList(pvApiCtx, nbInputArgument + 1, piAddr, 4, "x", 3, 2, piCoef, pdblPoly);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    	sciErr = createComplexSparseMatrixInList(pvApiCtx, nbInputArgument + 1, piAddr, 5, 3, 10, 4, piNbItemRow, piColPos, pdblSReal, pdblSImg);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	sciErr = createMatrixOfBooleanInList(pvApiCtx, nbInputArgument + 1, piAddr, 6, 3, 3, piBool);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    	sciErr = createBooleanSparseMatrixInList(pvApiCtx, nbInputArgument + 1, piAddr, 7, 3, 10, 4, piNbItemRow, piColPos);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	//add list in list
    	sciErr = createListInList(pvApiCtx, nbInputArgument + 1, piAddr, 8, 3, &piChild);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	sciErr = createMatrixOfDoubleInList(pvApiCtx, nbInputArgument + 1, piChild, 1, 3, 2, pdblData1);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	sciErr = createSparseMatrixInList(pvApiCtx, nbInputArgument + 1, piChild, 2, 3, 10, 4, piNbItemRow, piColPos, pdblSReal);
    	if(sciErr.iErr)
    	{
    		printError(&sciErr, 0);
    		return 0;
    	}
    
    	pdblDataPtr     = (double*)malloc(sizeof(double) * 4);
    	pdblDataPtr[0]  = 1;
    	pdblDataPtr[1]  = 2;
    	pdblDataPtr[2]  = 3;
    	pdblDataPtr[3]  = 4;
    
    	sciErr = createPointerInList(pvApiCtx, nbInputArgument + 1, piChild, 3, pdblDataPtr);
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

    size_ref    = 8;
    type_ref    = ["constant","string","int16","polynomial", "sparse", "boolean", "boolean sparse", "list"];
    dim_ref     = `list`_([3,2],[2,3],[2,3],[3,2],[3,10],[3,3],[3,10],3);
    
    l = list_createlist();
    if `size`_(l) <> size_ref then `error`_("failed"), end
    for i = 1 : size_ref
        if `typeof`_(l(i)) <> type_ref(i) then `error`_("failed"), end
        if `size`_(l(i)) <> dim_ref(i) then `error`_("failed"), end
    end




