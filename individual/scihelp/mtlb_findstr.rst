


mtlb_findstr
============

Matlab findstr emulation function



Description
~~~~~~~~~~~

There is no Scilab equivalent for Matlab `findstr`.

The function `mtlb_findstr(A,B)` is used by `mfile2sci` to replace
`findstr(A,B)` when it was not possible to know what were the
operands/inputs[CUSTOM] while porting Matlab code to Scilab. This
function will determine the correct semantic at run time. If you want
to have a more efficient code it is possible to replace `mtlb_findstr`
calls:


+ If `A` is always longer than `B` (i.e. `findstr` can be replaced by
  `strfind` in Matlab, `mtlb_findstr(A,B)` may be replaced by
  `strindex(A,B)`


Caution: `mtlb_findstr` has not to be used for hand coded functions.



