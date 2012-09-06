


mtlb_diag
=========

Matlab diag emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `diag` behave differently in some particular cases:


+ With character string matrices: Scilab `diag` function considers
  each character string as an object while Matlab considers each
  character individually.


The function `y = mtlb_diag(x[,dim])` is used by `mfile2sci` to
replace `y = diag(x[,dim])` when it was not possible to know what were
the inputs while porting Matlab code to Scilab. This function will
determine the correct semantic at run time. If you want to have a more
efficient code it is possible to replace `mtlb_diag` calls:


+ If `x` is not a character string matrix `y = mtlb_diag(x[,dim])` may
  be replaced by `y = diag(x[,dim])`


Caution: `mtlb_diag` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `Matlab-Scilab_character_strings`_ Generally speaking about...


.. _Matlab-Scilab_character_strings: MatlabScilab_character_strings.html


