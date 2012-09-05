


Rhs (deprecated)
================

A C gateway function which provides the number of input arguments
present in the calling Scilab function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    nb_params Rhs




Arguments
~~~~~~~~~

:nb_params the number of input arguments present in the calling Scilab
  function
:



Description
~~~~~~~~~~~

A C gateway function which provides the number of input arguments
present in the calling Scilab function. You must include stack-c.h to
benefit from this function.

Note: Rhs means Right Hand Side.

WARNING: This API is deprecated from Scilab 5.2.0 and is going to be
removed with Scilab 6.0. Please use `API Scilab`_ (the new Scilab
API).



Examples
~~~~~~~~

In this example, the C interface function can take several input
arguments and prints in the Scilab console the integer corresponding
to the number of input arguments detected in the calling Scilab
function.


::

    #include <stack-c.h>
    #include <sciprint.h>
    
    `int`_ sci_myrhs(char * fname)
    {
      sciprint("The number of input parameters is %d\n", Rhs);
    
      return 0;
    }




See Also
~~~~~~~~


+ `getNbInputArgument`_ A C gateway function which provides the number
  of input arguments present in the calling Scilab function
+ `getNbOutputArgument`_ A C gateway function which provides the
  number of output arguments present in the calling Scilab function
+ `sciprint`_ A C gateway function which displays standard messages to
  the user (same profil as the C printf function)
+ `Lhs`_ A C gateway function which provides the number of input
  arguments present in the calling Scilab function


.. _API Scilab: api_scilab.html
.. _sciprint: sciprint.html
.. _Lhs: Rhs.html
.. _getNbInputArgument: getNbInputArgument.html
.. _getNbOutputArgument: getNbOutputArgument.html


