


mtlb_sort
=========

Matlab sort emulation function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    P = mtlb_sort(X)
    P = mtlb_sort(X,dim[,mode])




Arguments
~~~~~~~~~

:X a scalar, vector, matrix of reals, booleans or a string
:

:dim a positive scalar integer
: :mode a string ("ascend" or "descend")
:



Description
~~~~~~~~~~~

Matlab `sort` and Scilab `gsort` behave differently in some particular
cases:


+ For a vector `X` the Matlab `sort(X,'g','i')` function call is
  equivalent to the Scilab `gsort(X)` function call.
+ The value `1` (resp. `2`) of the Matlab dim is equivalent to the
  Scilab `"r"` flag (resp. `"c"`).
+ The Matlab " `ascend"` (resp. `"descend"`) mode is equivalent to the
  Scilab `"i"` (resp. `"d"`) flag.


The function `mtlb_sort(X[,dim[,mode]])` is used by `mfile2sci` to
replace `sort(X[,dim[,mode]])` when it was not possible to know what
were the inputs while porting Matlab code to Scilab. This function
will determine the correct semantic at run time. If you want to have a
more efficient code it is possible to replace `mtlb_sort` call by
`gsort`_ call.

Caution: `mtlb_sort` has not to be used for hand coded functions.

.. _gsort: gsort.html


