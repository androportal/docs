


getNbInputArgument (Scilab gateway)
===================================

A C gateway function which provides the number of input arguments
present in the calling Scilab function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    nb_params = getNbInputArgument(void* _pvCtx)



::

    nb_params = nbInputArgument



::

    nb_params = Rhs




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h
: :nb_params the number of input arguments present in the calling
  Scilab function
:



Description
~~~~~~~~~~~

A C gateway function which provides the number of input arguments
present in the calling Scilab function. You must include api_scilab.h
to benefit from this function.



Examples
~~~~~~~~

In this example, the C interface function can take several input
arguments and prints in the Scilab console the integer corresponding
to the number of input arguments detected in the calling Scilab
function.


::

    #include "api_scilab.h"
    #include "sciprint.h"
    
    `int`_ sci_myrhs(char * fname)
    {
      sciprint("The number of input parameters is %d\n", getNbInputArgument);
    
      return 0;
    }




See Also
~~~~~~~~


+ `getNbOutputArgument`_ A C gateway function which provides the
  number of output arguments present in the calling Scilab function
+ `sciprint`_ A C gateway function which displays standard messages to
  the user (same profil as the C printf function)


.. _sciprint: sciprint.html
.. _getNbOutputArgument: getNbOutputArgument.html


