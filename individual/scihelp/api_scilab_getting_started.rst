


Getting started with API_Scilab
===============================

How to load a C, C++ or fortran code in the Scilab engine as a new
function



Description
~~~~~~~~~~~

As described in the `api_scilab presentation`_, Scilab offers an API
to extend the language with C, C++ or Fortran code (sources or
libraries).

The link between the Scilab engine and the application code is called
`gateway`.

Most of the time, the process is always the same:

#. Check the number of arguments (both input and output) provided by
   the user.For example, if the function `foo(x)` is called with `foo()`
   or `foo(2,3)`, the user must get an answer. More:
   `CheckInputArgument`_ and `CheckOutputArgument`_
#. Manage input argumentsSeveral tasks are performed:

    #. Get the address to the variable for input argument XFunction
       `SciErr `getVarAddressFromPosition`_(void* context, int
       positionOfTheVariable, int** address)`
    #. Check the type of the variable: matrix of double (complex or not),
       string, etc `SciErr `getVarType`_(void* context, int*
       positionOfTheVariable, int* Type)` Other functions are also provided:

        + `int isBooleanType(void* context, int* address)`
        + `int isBooleanSparseType(void* context, int* address)`
        + `int isDoubleType(void* context, int* address)`
        + `int isIntegerType(void* context, int* address)`
        + `int isPointerType(void* context, int* address)`
        + `int isPolyType(void* context, int* address)`
        + `int isSparseType(void* context, int* address)`
        + `int isStringType(void* context, int* address)`
        + `int isListType(void* context, int* address)`
        + `int isTListType(void* context, int* address)`
        + `int isMListType(void* context, int* address)`

    #. If it is relevant, check if the input argument is complex or not.
       `int `isVarComplex`_(void* context, int* address)`
    #. Dealing with integer, further checks should be done on the
       precision of the integer `SciErr `getMatrixOfIntegerPrecision`_(void*
       context, int* address, int* precision)`
    #. Check the size of the variable: square matrix, scalar, etcThe
       retrieval of the size information will be done with the same functions
       used to retrieve the actual data. For example, for a matrix of double,
       the function call `SciErr `getMatrixOfDouble`_(void* context, int*
       address, int* nbRows, int* nbCols, double** theActualData)` will
       provide the dimension of the matrix. Almost all Scilab datatypes have
       an equivalent C function to perform such task.
    #. Other checks can be done like specific values expected, consitency
       between the first and second input arguments, etc.
    #. Data transformation (optional).Depending on the code or library
       targeted, some transformations can be applied to the data. A classical
       example is changing the storage of a matrix from column-stored to
       line-stored.Please note that it is usually a performance killer.

#. Application codeOnce all the checks and data retrieval have been
   performed, the actual core code can be called. The actual intelligence
   (processes, data transformations, etc) will be performed here.This can
   be done through a thirdparty code stored and built in `src/c`,
   `src/cpp` or `src/fortran` but also under the form of a library.
   Virtually, any library could be linked to Scilab.
#. Create the output arguments for the Scilab engineOnce the
   application code has been executed, usually, some data will be
   returned to the Scilab interpreter. For example, to create in the
   Scilab engine memory a matrix of double, the C function `SciErr
   `createMatrixOfDouble`_(void* context, int position, int nbRows, int
   nbCols, const double* matrixOfDouble)` should be called. The position
   is usually provided by `nbInputArgument + X`. `X` being the position
   of the returned output argument. For example, with the function
   profile `[a, b, c] = foo();` the `nbInputArgument + 3` will be the
   variable `c`. Note that the order of creation must be respected in the
   gateway.Almost all Scilab datatypes have an equivalent C function to
   perform such task.
#. Return the output arguments to the Scilab engineFollowing, the task
   4, the created variable will be returned.Taking the previous example
   `[a, b, c] = foo();`, to return `a`, the following declaration must be
   done: `AssignOutputVariable(1) = nbInputArgument + 1;` To commit the
   new variable to the Scilab engine, the function `ReturnArguments()`_
   must be called.



Note that almost all the API_Scilab functions returns a C structure
called SciErr which contains many information about the error.

By default, Scilab numerical values are stored with the C type
`double`.

As convention, gateways are stored in `sci_gateway/c/` (or `/cpp/`)
and are called `sci_functionName.c`.



Real life example
~~~~~~~~~~~~~~~~~

Taking the sample Scilab function:

`[c,d] = foo(a,b)`

with `a` being a matrix of double and `b` a matrix of boolean with the
same size of `a`, foo will multiply each element of `a` by 2 and
return it as `c` and transform each element of element of b to its
opposite.

The example is available in the toolbox skeleton provided with the
Scilab binary. The path is
`contrib/toolbox_skeleton/sci_gateway/c/sci_foo.c`

Detailed explanations are provided under the form of C comment in the
following example.


::

    // Full source can be found in the sci_gateway/c/ directory of the
    // toolbox skeleton
    
    // Standard header
    #include "api_scilab.h"
    #include "BOOL.h"
    
    // Function declaration
    int sci_foo(char *fname, unsigned long fname_len)
    {
    // Error management variable
    SciErr sciErr;
    
    ////////// Variables declaration //////////
    int m1 = 0, n1 = 0;
    int *piAddressVarOne = NULL;
    double *matrixOfDouble = NULL;
    double *newMatrixOfDouble = NULL;
    
    int m2 = 0, n2 = 0;
    int *piAddressVarTwo = NULL;
    int *matrixOfBoolean = NULL;
    int *newMatrixOfBoolean = NULL;
    int i = 0;
    
    ////////// Check the number of input and output arguments //////////
    /* --> [c, d] = foo(a, b) */
    /* check that we have only 2 input arguments */
    /* check that we have only 2 output argument */
    CheckInputArgument(pvApiCtx, 2, 2) ;
    CheckOutputArgument(pvApiCtx, 2, 2) ;
    
    ////////// Manage the first input argument (double) //////////
    /* get Address of inputs */
    sciErr = getVarAddressFromPosition(pvApiCtx, 1, &piAddressVarOne);
    if (sciErr.iErr)
    {
        printError(&sciErr, 0);
        return 0;
    }
    
    /* Check that the first input argument is a real matrix (and not complex) */
    if ( !isDoubleType(pvApiCtx, piAddressVarOne) ||  isVarComplex(pvApiCtx, piAddressVarOne) )
    {
        Scierror(999, "%s: Wrong type for input argument #%d: A real matrix expected.\n", fname, 1);
        return 0;
    }
    
    /* get matrix */
    sciErr = getMatrixOfDouble(pvApiCtx, piAddressVarOne, &m1, &n1, &matrixOfDouble);
    if (sciErr.iErr)
    {
        printError(&sciErr, 0);
        return 0;
    }
    
    ////////// Manage the second input argument (boolean) //////////
    
    /* get Address of inputs */
    sciErr = getVarAddressFromPosition(pvApiCtx, 2, &piAddressVarTwo);
    if (sciErr.iErr)
    {
        printError(&sciErr, 0);
        return 0;
    }
    
    if ( !isBooleanType(pvApiCtx, piAddressVarTwo) )
    {
        Scierror(999, "%s: Wrong type for input argument #%d: A boolean matrix expected.\n", fname, 2);
        return 0;
    }
    
    /* get matrix */
    sciErr = getMatrixOfBoolean(pvApiCtx, piAddressVarTwo, &m2, &n2, &matrixOfBoolean);
    if (sciErr.iErr)
    {
        printError(&sciErr, 0);
        return 0;
    }
    
    ////////// Check the consistency of the two input arguments //////////
    
    if ((m1 != m2) || (n1 != n2))
    {
        Scierror(999, "%s: Wrong size for input arguments: Same size expected.\n", fname, 1);
        return 0;
    }
    
    newMatrixOfDouble = (double*)malloc(sizeof(double) * m1 * n1);
    ////////// Application code //////////
    // Could be replaced by a call to a library
    
    for (i = 0; i < m1 * n1; i++)
    {
        /* For each element of the matrix, multiply by 2 */
        newMatrixOfDouble[i] = matrixOfDouble[i] * 2;
    }
    
    newMatrixOfBoolean = (int*)malloc(sizeof(BOOL) * m2 * n2);
    for (i = 0; i < m2 * n2; i++)
    {
        /* For each element of the matrix, invert the value */
        newMatrixOfBoolean[i] = ((matrixOfBoolean[i] == TRUE) ? FALSE : TRUE);
    }
    
    ////////// Create the output arguments //////////
    
    /* Create the matrix as return of the function */
    sciErr = createMatrixOfDouble(pvApiCtx, nbInputArgument + 1, m1, n1, newMatrixOfDouble);
    free(newMatrixOfDouble); // Data have been copied into Scilab memory
    if (sciErr.iErr)
    {
        free(newMatrixOfBoolean); // Make sure everything is cleanup in case of error
        printError(&sciErr, 0);
        return 0;
    }
    
    /* Create the matrix as return of the function */
    sciErr = createMatrixOfBoolean(pvApiCtx, nbInputArgument + 2, m2, n2, newMatrixOfBoolean);
    free(newMatrixOfBoolean); // Data have been copied into Scilab memory
    if (sciErr.iErr)
    {
        printError(&sciErr, 0);
        return 0;
    }
    
    ////////// Return the output arguments to the Scilab engine //////////
    
    AssignOutputVariable(1) = nbInputArgument + 1;
    AssignOutputVariable(2) = nbInputArgument + 2;
    
    ReturnArguments();
    
    return 0;
    }


To build this code and load it to Scilab, we use the dynamic link
capabilities of Scilab. Delegating the build process to Scilab, this
code is multiplaform.

::

    files=["sci_foo.c"];
    // TODO: WTF ?
    WITHOUT_AUTO_PUTLHSVAR = %t;
    `ilib_build`_('build_lib',['foo','sci_foo'],files,[]);
    `exec`_ loader.sce
    [c, d] = foo([2,%pi], [%t, %f])



Various checks can be performed:

::

    -->[c, d] = foo(2, 2) 
                       !--`error`_ 999 
    foo: Wrong `type`_ for input argument #2: A boolean matrix expected.



::

    -->[c, d] = foo([2,2], %t)
                            !--`error`_ 999 
    foo: Wrong `size`_ for input arguments: Same size expected.



::

    -->[a,b]=foo(2+%i,%t)
                       !--`error`_ 999 
    foo: Wrong `type`_ for input argument #1: A real matrix expected.



::

    -->[c, d] = foo([2,%pi], [%t, %f])
     d  =
     
      F T  
     c  =
     
        4.    6.2831853



.. _getVarAddressFromPosition: Common_getvaraddr_API.html
.. _isVarComplex: Common_iscomplex_API.html
.. _CheckOutputArgument: CheckOutputArgument.html
.. _api_scilab presentation: api_scilab.html
.. _getVarType: Common_getvartype_API.html
.. _getMatrixOfDouble: Double_management_reading_API.html
.. _ReturnArguments(): ReturnArguments.html
.. _CheckInputArgument: CheckInputArgument.html
.. _getMatrixOfIntegerPrecision: int_getmatrixofintegerprecision_API.html
.. _createMatrixOfDouble: Double_management_writing_API.html


