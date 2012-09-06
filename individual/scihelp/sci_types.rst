


sci_types
=========

a C enumeration which defines the types available for a variable



Description
~~~~~~~~~~~

A C enumeration which defines the types available for a variable. You
must include stack-c.h to benefit from this type definition.

The list of available types is the following:


+ 1 - *sci_matrix*: a matrix of doubles
+ 2 - *sci_poly*: a polynomials matrix
+ 4 - *sci_boolean*: a boolean matrix
+ 5 - *sci_sparse*: a sparse matrix
+ 6 - *sci_boolean_sparse*: a sparse boolean matrix
+ 7 - *sci_matlab_sparse*: a sparse matlab matrix
+ 8 - *sci_ints*: a matrix of integers
+ 9 - *sci_handles*: a graphical handle
+ 10 - *sci_strings*: a matrix of strings
+ 11 - *sci_u_function*: an uncompiled Scilab function
+ 13 - *sci_c_function*: a compiled Scilab function
+ 14 - *sci_lib*: a library of Scilab functions
+ 15 - *sci_list*: a Scilab list
+ 16 - *sci_tlist*: a Scilab tlist
+ 17 - *sci_mlist*: a Scilab mlist
+ 128 - *sci_pointer (was: sci_lufact_pointer before Scilab 5.2)*: a
  pointer


Integers or enumeration types can be used to check the type of the
variables. Using the enumeration type is recommended because of the
explicit meaning of the value of the enumeration type.



Examples
~~~~~~~~

In this example, the C gateway function takes one argument. Through a
switch case structure, we display the type of the variable sent as a
parameter.


::

    #include "api_scilab.h"
    #include "sciprint.h"
    
    int sci_mysci_typesrhs(char * fname, unsigned long fname_len)
    {
        int         iType = 0;
        int*        piAddr = NULL;
        SciErr      sciErr;
    
        sciErr = getVarAddressFromPosition(pvApiCtx, 1, &piAddr);
        if(sciErr.iErr)
        {
            printError(&sciErr, 0);
            return 1;
        }
    
        sciErr = getVarType(pvApiCtx, piAddr, &iType);
        if(sciErr.iErr)
        {
            printError(&sciErr, 0);
            return 1;
        }
    
        switch(iType)
        {
        case sci_matrix:
            sciprint("A matrix of doubles\n");
            break;
        case sci_poly:
            sciprint("A matrix of polynomials\n");
            break;
        case sci_boolean:
            sciprint("A matrix of booleans\n");
            break;
        case sci_sparse:
            sciprint("A sparse matrix of doubles\n");
            break;
        case sci_boolean_sparse:
            sciprint("A sparse matrix of booleans\n");
            break;
        case sci_matlab_sparse:
            sciprint("A sparse matlab matrix\n");
            break;
        case sci_ints:
            sciprint("A matrix of integers\n");
            break;
        case sci_handles:
            sciprint("A graphic handle\n");
            break;
        case sci_strings:
            sciprint("A matrix of strings\n");
            break;
        case sci_u_function:
            sciprint("An uncompiled Scilab function\n");
            break;
        case sci_c_function:
            sciprint("A compiled Scilab function\n");
            break;
        case sci_lib:
            sciprint("A library of Scilab functions\n");
            break;
        case sci_list:
            sciprint("A Scilab list\n");
            break;
        case sci_tlist:
            sciprint("A Scilab tlist\n");
            break;
        case sci_mlist:
            sciprint("A Scilab mlist\n");
            break;
        case sci_pointer:
            sciprint("A pointer\n");
            break;
        default:
            sciprint("Unknown type !\n"); // Should never happen
        }
    
        return 0;
    }




See Also
~~~~~~~~


+ `sciprint`_ A C gateway function which displays standard messages to
  the user (same profil as the C printf function)


.. _sciprint: sciprint.html


