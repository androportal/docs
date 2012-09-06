


mtlb_find
=========

Matlab find emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `find` behave differently in some particular cases:


+ With column vectors and matrices as input: Matlab `find` returns
  column vectors while Scilab returns row vectors.
+ When called with three outputs: Matlab `find` can have three outputs
  but Scilab not.


The function `[i[,j[,v]]] = mtlb_find(B)` is used by `mfile2sci` to
replace `[i[,j[,v]]] = find(B)` when it was not possible to know what
was the input while porting Matlab code to Scilab. This function will
determine the correct semantic at run time. If you want to have a more
efficient code it is possible to replace `mtlb_find` calls:


+ When called with one output, if `B` is a row vector `i =
  mtlb_find(B)` may be replaced by `i = find(B)`
+ When called with one output, if `B` is not a row vector `i =
  mtlb_find(B)` may be replaced by `i = matrix(find(B),-1,1)`
+ When called with two outputs, if `B` is a row vector `[i,j] =
  mtlb_find(B)` may be replaced by `[i,j] = find(B)`
+ When called with two outputs, if `B` is not a row vector `[i,j] =
  mtlb_find(B)` may be replaced by `[i,j] = find(B);i = matrix(i,-1,1);j
  = matrix(j,-1,1);`


Caution: `mtlb_find` has not to be used for hand coded functions.



