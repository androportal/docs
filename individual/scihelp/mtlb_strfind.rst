


mtlb_strfind
============

Matlab strfind emulation function



Description
~~~~~~~~~~~

Matlab `strfind` and Scilab `strindex` behave differently in some
particular cases:


+ With inputs which not character strings: Matlab `strfind` can be
  used with not character strings inputs but not Scilab `strindex`.


The function `mtlb_strfind(A,B)` is used by `mfile2sci` to replace
`strfind(A,B)` when it was not possible to know what were the inputs
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_strfind` calls:


+ If `A` and `B` are character strings `mtlb_strfind(A,B)` may be
  replaced by `strindex(A,B)`


Caution: `mtlb_strfind` has not to be used for hand coded functions.



