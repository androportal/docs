


CheckOutputArgument
===================

C function which checks the number of output arguments present in the
calling Scilab function.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    CheckOutputArgument(void* _pvCtx, int iMin, int iMax)




Arguments
~~~~~~~~~

:pvApiCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h
: :iMin the minimum number of output arguments which must be present
  in the calling Scilab function
: :iMax the maximum number of output arguments which must be present
  in the calling Scilab function
:



Description
~~~~~~~~~~~

C function which checks the number of output arguments present in the
calling Scilab function. You must include api_scilab.h to benefit from
this function.

If the number of arguments is not between _iMin and _iMax, we quit the
C interface ( `return 0;`) and an error is returned in the Scilab
console.

Since `CheckOutputArgument` is doing a `return 0;` within the gateway
function, it is important to call this function before any memory
allocation in order to avoid any memory leak.

This function replaces the deprecated `CheckLhs` function



Examples
~~~~~~~~

In this example, the C gateway function checks for a number of output
arguments which must be between 2 and 3.


::

    #include <api_scilab.h>
    
    `int`_ sci_mychecklhs(char * fname)
    {
      CheckOutputArgument(pvApiCtx, 2, 3);
    
      // Read input argument
    
      // Perform some operations
    
      // Return output argument
      return 0;
    }


Now, some functions testing this interface:


::

    [A,B] = mychecklhs(); // OK, 2 output arguments
    [A,B,C] = mychecklhs(); // OK, 3 output arguments
    [A] = mychecklhs(); // ERROR, 1 output argument
    [A,B,C,D] = mychecklhs(); // ERROR, 4 output arguments




See Also
~~~~~~~~


+ `CheckInputArgument`_ C function which checks the number of input
  arguments present in the calling Scilab function.


.. _CheckInputArgument: CheckInputArgument.html


