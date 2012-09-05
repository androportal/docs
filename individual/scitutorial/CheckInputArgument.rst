


CheckInputArgument
==================

C function which checks the number of input arguments present in the
calling Scilab function.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    CheckInputArgument(void* pvCtx, int iMin, int iMax)




Arguments
~~~~~~~~~

:pvApiCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h
: :iMin the minimum number of input arguments which must be present in
  the calling Scilab function
: :iMax the maximum number of input arguments which must be present in
  the calling Scilab function
:



Description
~~~~~~~~~~~

C function which checks the number of input arguments present in the
calling Scilab function. You must include api_scilab.h to benefit from
this function.

If the number of arguments is not between _iMin and _iMax, we quit the
C interface ( `return 0;`) and an error is returned in the Scilab
console.

Since `CheckInputArgument` is doing a `return 0;` within the gateway
function, it is important to call this function before any memory
allocation in order to avoid any memory leak.

This function replaces the deprecated `CheckLhs` function



Examples
~~~~~~~~

In this example, the C gateway function checks for a number of input
arguments which must be between 2 and 3.


::

    #include <api_scilab.h>
    
    `int`_ sci_mycheckrhs(char * fname)
    {
      CheckInputArgument(pvApiCtx, 2, 3);
    
      // Read input argument
    
      // Perform some operations
    
      // Return output argument
    
      return 0;
    }


Now, some functions testing this interface:


::

    mycheckrhs(A,B); // OK, 2 input arguments
    mycheckrhs(A,B,C); // OK, 3 input arguments
    mycheckrhs(A); // ERROR, 1 input argument
    mycheckrhs(A,B,C,D); // ERROR, 4 input arguments




See Also
~~~~~~~~


+ `CheckOutputArgument`_ C function which checks the number of output
  arguments present in the calling Scilab function.


.. _CheckOutputArgument: CheckOutputArgument.html


