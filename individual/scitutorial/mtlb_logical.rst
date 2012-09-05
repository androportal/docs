


mtlb_logical
============

Matlab logical emulation function



Description
~~~~~~~~~~~

There is no Scilab equivalent function for Matlab `logical` but its
behavior can be easyly reproduced.

The function `mtlb_logical(A)` is used by `mfile2sci` to replace
`logical(A)` when it was not possible to know what was the input while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_logical` calls:


+ If `A` is a boolean matrix `mtlb_logical(A)` may be replaced by `A`
+ If `A` is not an empty matrix `mtlb_logical(A)` may be replaced by
  `A<>[]`
+ If `A` is an empty matrix `mtlb_logical(A)` may be replaced by `[]`


Caution: `mtlb_logical` has not to be used for hand coded functions.



