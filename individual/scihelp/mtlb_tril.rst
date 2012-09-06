


mtlb_tril
=========

Matlab tril emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `tril` behave differently in some particular cases:


+ With complex input: Matlab `tril` can be used with complex data but
  not Scilab one.
+ With character strings inputs: due to the fact the Matlab and Scilab
  do not consider character strings in the same way, Scilab and Matlab
  `tril` do not give the same results for this type of input.
+ With boolean inputs: Matlab `tril` can be used with boobean data but
  not Scilab one.


The function `mtlb_tril(x,k)` is used by `mfile2sci` to replace
`tril(x,k)` when it was not possible to know what were the inputs
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_tril` calls:


+ If `X` contains real double values `mtlb_tril(x,k)` may be replaced
  by `tril(x,k)`
+ If `X` contains boolean values `mtlb_tril(x,k)` may be replaced by
  `tril(bool2s(x),k)`


Caution: `mtlb_tril` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `Matlab-Scilab_character_strings`_ Generally speaking about...


.. _Matlab-Scilab_character_strings: MatlabScilab_character_strings.html


