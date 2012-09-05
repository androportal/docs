


LhsVar (deprecated)
===================

a C gateway function which specifies which parameters created inside
the C gateway will be returned as an output argument into Scilab.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    LhsVar(RankPos) = RankVar;




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

WARNING: This API is deprecated from Scilab 5.2.0 and is going to be
removed with Scilab 6.0. Please use `API Scilab`_ (the new Scilab
API).



Examples
~~~~~~~~

This example takes a matrix of doubles as input and returns:


+ the number of lines (first output argument)
+ the number of rows (second output argument)


We create an intermediate Scilab parameter which will handle an
integer but will neither be used nor returned as an output argument.

TODO: insert an example in the Scilab language


::

    #include "stack-c.h"
    #include "api_scilab.h"
    `int`_ sci_mysizedouble(char * fname, unsigned long fname_len)
    {
        `int`_         m_in_row;
        `int`_         n_in_col;
        `int`_         *piAddr = NULL;
        `double`_      *pdblData = NULL;
        SciErr      sciErr;
    
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
    
        sciErr = createMatrixOfInteger32(pvApiCtx, 2, 1, 1, &m_in_row); // the out_lines_pos parameter handles the number of lines of the matrix sent as argument
        sciErr = createMatrixOfInteger32(pvApiCtx, 3, 1, 1, &m_in_row); // store a mere value, but will neither be used nor returned to Scilab
        sciErr = createMatrixOfInteger32(pvApiCtx, 4, 1, 1, &n_in_col); // store a mere value, but will neither be used nor returned to Scilab
    
        LhsVar(1) = 2; // We set the parameter 2 as an output argument
        LhsVar(2) = 4; // We set the parameter 4 as an output argument
        PutLhsVar();
        return 0;
    }




See Also
~~~~~~~~


+ `AssignOutputVariable`_ a C gateway function which specifies which
  parameters created inside the C gateway will be returned as an output
  argument into Scilab.


.. _AssignOutputVariable: AssignOutputVariable.html
.. _API Scilab: api_scilab.html


