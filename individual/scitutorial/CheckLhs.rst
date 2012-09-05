


CheckLhs (deprecated)
=====================

C macro which checks the number of output arguments present in the
calling Scilab function.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    CheckLhs(nb_min_params,nb_max_params)




Arguments
~~~~~~~~~

:nb_min_params the minimum number of output arguments which must be
  present in the calling Scilab function
: :nb_max_params the maximum number of output arguments which must be
  present in the calling Scilab function
:



Description
~~~~~~~~~~~

C macro which checks the number of output arguments present in the
calling Scilab function. You must include stack-c.h to benefit from
this function.

If the number of arguments is not between nb_min_params and
nb_max_params, we quit the C interface ( `return 0;`) and an error is
returned in the Scilab console.

Since `CheckLhs` is doing a `return 0;` within the gateway function,
it is important to call this macro before any memory allocation in
order to avoid any memory leak.

WARNING: This API is deprecated from Scilab 5.2.0 and is going to be
removed with Scilab 6.0. Please use `API Scilab`_ (the new Scilab
API). This function has been replaced by `CheckOutputArgument`_.



See Also
~~~~~~~~


+ `CheckOutputArgument`_ C function which checks the number of output
  arguments present in the calling Scilab function.


.. _CheckOutputArgument: CheckOutputArgument.html
.. _API Scilab: api_scilab.html


