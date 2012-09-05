


mtlb_isspace
============

Matlab isspace emulation function



Description
~~~~~~~~~~~

There is no Scilab function equivalent for Matlab `isspace` but its
behavior can be reproduced.

The function `mtlb_isspace(A)` is used by `mfile2sci` to replace
`isspace(A)` when it was not possible to know what was the input while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_isspace` calls:


+ If `A` is a character string matrix `mtlb_isspace(A)` may be
  replaced by `asciimat(A)==32`
+ If `A` is not a character string matrix `mtlb_isspace(A)` may be
  replaced by `zeros(A)`


Caution: `mtlb_isspace` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `asciimat`_ string matrix ascii conversions


.. _asciimat: asciimat.html


