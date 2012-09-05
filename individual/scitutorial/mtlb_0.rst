


mtlb_0
======

Matlab non-conjugate transposition emulation function



Description
~~~~~~~~~~~

Matlab and Scilab non-conjugate transposition behave differently in
some particular cases:


+ With character strings operands: The `.'` operator is used to
  transpose whole character strings in Scilab while Matlab realizes the
  transposition of each character.


The function `mtlb_0(A)` is used by `mfile2sci` to replace `A.'` when
it was not possible to know what were the operands while porting
Matlab code to Scilab. This function will determine the correct
semantic at run time. If you want to have a more efficient code it is
possible to replace `mtlb_0` calls:


+ If `A` is not a character string matrix `mtlb_0(A)` may be replaced
  by `A.'`


Caution: `mtlb_0` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `Matlab-Scilab_character_strings`_ Generally speaking about...


.. _Matlab-Scilab_character_strings: MatlabScilab_character_strings.html


