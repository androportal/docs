


mtlb_strcmpi
============

Matlab strcmpi emulation function



Description
~~~~~~~~~~~

There is no Scilab function equivalent for Matlab `strcmpi`, there is
equivalent instructions.

The function `mtlb_strcmpi(A,B)` is used by `mfile2sci` to replace
`strcmpi(A,B)` when it was not possible to know what were the inputs
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_strcmpi` calls:


+ If `A` and `B` are character strings `mtlb_strcmpi(A,B)` may be
  replaced by `convstr(A)==convstr(B)`
+ If `A` and/or `B` is not a character string `mtlb_strcmpi(A,B)` may
  be replaced by `0`


Caution: `mtlb_strcmpi` has not to be used for hand coded functions.



