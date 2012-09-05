


mtlb_size
=========

Matlab size emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `size` behave differently in some particular cases:


+ With two inputs: Matlab `size` can be used with second parameter
  giving a not-existing dimension of first parameter (returns 1 in this
  case) but not Scilab one.
+ With more than one output: if number of output is lesser than number
  of dimensions, last output is the product of all remaining dimensions
  in Matlab but not in Scilab. If number of output is greater than
  number of dimensions, outputs corresponding to a not-existing
  dimension are set to 1 in Matlab but Scilab gives an error in this
  case.


The function `[d1,[d2,...]] = mtlb_size(X[,dim])` is used by
`mfile2sci` to replace `[d1,[d2,...]] = size(X[,dim])` when it was not
possible to know what were the inputs while porting Matlab code to
Scilab. This function will determine the correct semantic at run time.
If you want to have a more efficient code it is possible to replace
`mtlb_size` calls:


+ With two inputs: if `dim` gives an existing dimension of `X`
  `mtlb_size(X,dim)` may be replaced by `size(X,dim)`
+ With more than one outputs: if the number of outputs is equal to the
  number of dimensions of `X` `[d1,[d2,...]] = mtlb_size(X)` may be
  replaced by `[d1,[d2,...]] = size(X)`


Caution: `mtlb_size` has not to be used for hand coded functions.



