


AssignOutputVariable
====================

a C gateway function which specifies which parameters created inside
the C gateway will be returned as an output argument into Scilab.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    AssignOutputVariable(RankPos) = RankVar;




Arguments
~~~~~~~~~

:RankPos as integer providing the rank of the output argument
: :RankVar the rank of the parameter created inside the C gateway to
  be returned as an Scilab output argument
:



Description
~~~~~~~~~~~

A C gateway function which specifies which variables created inside
the C interface will be returned as an output argumen into Scilab.



Examples
~~~~~~~~

This example takes a matrix of doubles as input and returns:


+ the number of lines (first output argument)
+ the number of rows (second output argument)


We create an intermediate Scilab parameter which will handle an
integer but will neither be used nor returned as an output argument.


::

    #include "api_scilab.h"
    `int`_ sci_mysizedouble(char * fname, unsigned long fname_len)
    {
        SciErr      sciErr;
        `int`_         m_in_row;
        `int`_         n_in_col;
        `int`_*        piAddr = NULL;
        `double`_*     pdblData = NULL;
    
        sciErr = getVarAddressFromPosition(pvApiCtx, 1, &piAddr);
        if(sciErr.iErr)
        {
            printError(&sciErr, 0);
            return 0;
        }
    
        /* `get`_ dimensions */
        sciErr = getMatrixOfDouble(pvApiCtx, piAddr, &m_in_row, &n_in_col, &pdblData);
        if(sciErr.iErr)
        {
            printError(&sciErr, 0);
            return 0;
        }
    
        sciErr = createMatrixOfInteger32(pvApiCtx, nbInputArgument + 1, 1, 1, &m_in_row); // the m_in_row parameter handles the number of lines of the matrix sent as argument
        sciErr = createMatrixOfInteger32(pvApiCtx, nbInputArgument + 2, 1, 1, &m_in_row); // store a same value, but will neither be used nor returned to Scilab
        sciErr = createMatrixOfInteger32(pvApiCtx, nbInputArgument + 3, 1, 1, &n_in_col); // the n_in_col parameter handles the number of columns of the matrix sent as argument
    
        AssignOutputVariable(1) = nbInputArgument + 1; // We set the parameter "nbInputArgument + 1" as an output argument
        AssignOutputVariable(2) = nbInputArgument + 3; // We set the parameter "nbInputArgument + 3" as an output argument
        ReturnArguments();
        return 0;
    }




