


mtlb_isfield
============

Matlab isfield emulation function



Description
~~~~~~~~~~~

There is no Scilab equivalent function for Matlab `isfield(st,f)` and
equivalent expressions behave differently in some particular cases:


+ If `st` is not a structure: Scilab equivalent returns an error
  message but Matlab returns `0`.


The function `mtlb_isfield(st,f)` is used by `mfile2sci` to replace
`isfield(st,f)` when it was not possible to know what were the inputs
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_isfield` calls:


+ If `st` is a structure `tf = mtlb_isfield(st,f)` may be replaced by
  `allf=getfield(1,st);tf=or(allf(3:$)==f);`
+ If `st` is not a structure `tf = mtlb_isfield(st,f)` may be replaced
  by `tf=%F;`


Caution: `mtlb_isfield` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `getfield`_ list field extraction


.. _getfield: getfield.html


