


mtlb_beta
=========

Matlab beta emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `beta` behave differently in some particular cases:


+ With inputs having different sizes: Matlab `beta` input parameters
  must have the same size unless one of them is a scalar. In Scilab
  `beta` input parameters must have the same size even if one of them is
  a scalar.


The function `mtlb_beta(A,B)` is used by `mfile2sci` to replace
`beta(A,B)` when it was not possible to know what were the inputs
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_beta` calls:


+ If `A` is a scalar but not `B` `Y = mtlb_beta(A,B)` may be replaced
  by `C=B;C(:)=A;Y = mtlb_beta(C,B);`
+ If `B` is a scalar but not `A` `Y = mtlb_beta(A,B)` may be replaced
  by `C=A;C(:)=B;Y = mtlb_beta(A,C);`


Caution: `mtlb_beta` has not to be used for hand coded functions.



