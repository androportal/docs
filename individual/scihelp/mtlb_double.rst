


mtlb_double
===========

Matlab double emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `double` behave differently in some particular
cases:


+ With character string input: Scilab `double` does not work with this
  type of input while Matlab `double` returns a matrix of ASCII codes.
+ With boolean input: Scilab `double` does not work with this type of
  input while Matlab `double` returns a matrix of double values.


The function `mtlb_double(A)` is used by `mfile2sci` to replace
`double(A)` when it was not possible to know what were theinput while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_double` calls:


+ If `A` is a character string, `mtlb_double(A)` may be replaced by
  `asciimat(A)`
+ If `A` is a boolean matrix, `mtlb_double(A)` may be replaced by
  `bool2s(A)`
+ If `A` is a double matrix, `mtlb_double(A)` may be replaced by `A`


Caution: `mtlb_double` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `asciimat`_ string matrix ascii conversions
+ `bool2s`_ convert boolean matrix to a zero one matrix.


.. _bool2s: bool2s.html
.. _asciimat: asciimat.html


