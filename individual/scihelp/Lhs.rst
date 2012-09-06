


Lhs (deprecated)
================

A C gateway function which provides the number of output arguments
present in the calling Scilab function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    nb_params Lhs




Arguments
~~~~~~~~~

:nb_params the number of output arguments present in the calling
  Scilab function
:



Description
~~~~~~~~~~~

Lhs provides a C gateway function which provides the number of output
arguments present in the calling Scilab function. You must include
stack-c.h to benefit from this function.

Note: Lhs means Left Hand Side.

WARNING: This API is deprecated from Scilab 5.2.0 and is going to be
removed with Scilab 6.0. Please use `API Scilab`_ (the new Scilab
API).



Examples
~~~~~~~~

In this example, the C gateway function can take several output
arguments and prints in the Scilab console the integer corresponding
to the number of output arguments detected in the calling Scilab
function.


::

    #include <stack-c.h>
    #include <sciprint.h>
    
    `int`_ sci_mylhs(char * fname)
    {
      sciprint("The number of output arguments is %d\n", Lhs);
    
      return 0;
    }




See Also
~~~~~~~~


+ `getNbOutputArgument`_ A C gateway function which provides the
  number of output arguments present in the calling Scilab function
+ `getNbInputArgument`_ A C gateway function which provides the number
  of input arguments present in the calling Scilab function
+ `sciprint`_ A C gateway function which displays standard messages to
  the user (same profil as the C printf function)
+ `Rhs`_ A C gateway function which provides the number of input
  arguments present in the calling Scilab function


.. _API Scilab: api_scilab.html
.. _sciprint: sciprint.html
.. _Rhs: Rhs.html
.. _getNbInputArgument: getNbInputArgument.html
.. _getNbOutputArgument: getNbOutputArgument.html


