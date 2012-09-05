


getNbOutputArgument (Scilab gateway)
====================================

A C gateway function which provides the number of output arguments
present in the calling Scilab function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    nb_params = getNbOutputArgument(void* _pvCtx)



::

    nb_params = nbOutputArgument



::

    nb_params = Lhs




Arguments
~~~~~~~~~

:_pvCtx Scilab environment pointer, pass in "pvApiCtx" provided by
  api_scilab.h
: :nb_params the number of output arguments present in the calling
  Scilab function
:



Description
~~~~~~~~~~~

getNbOutputArgument provides a C gateway function which provides the
number of output arguments present in the calling Scilab function. You
must include api_scilab.h to benefit from this function.



Examples
~~~~~~~~

In this example, the C gateway function can take several output
arguments and prints in the Scilab console the integer corresponding
to the number of output arguments detected in the calling Scilab
function.


::

    #include "api_scilab.h"
    #include "sciprint.h"
    
    `int`_ sci_mylhs(char * fname)
    {
      sciprint("The number of output arguments is %d\n", getNbOutputArgument());
    
      return 0;
    }




See Also
~~~~~~~~


+ `getNbInputArgument`_ A C gateway function which provides the number
  of input arguments present in the calling Scilab function
+ `sciprint`_ A C gateway function which displays standard messages to
  the user (same profil as the C printf function)


.. _sciprint: sciprint.html
.. _getNbInputArgument: getNbInputArgument.html


