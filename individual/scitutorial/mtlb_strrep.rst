


mtlb_strrep
===========

Matlab strrep emulation function



Description
~~~~~~~~~~~

Matlab `strrep` and Scilab `strsubst` behave differently in some
particular cases:


+ With inputs which not character strings: Matlab `strrep` can be used
  with not character strings inputs but not Scilab `strsubst`.


The function `mtlb_strrep(A,B,C)` is used by `mfile2sci` to replace
`strrep(A,B,C)` when it was not possible to know what were the inputs
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_strrep` calls:


+ If `A`, `B` and `C` are character strings `mtlb_strrep(A,B,C)` may
  be replaced by `strsubst(A,B,C)`


Caution: `mtlb_strrep` has not to be used for hand coded functions.



