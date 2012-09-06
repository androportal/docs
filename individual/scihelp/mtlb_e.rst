


mtlb_e
======

Matlab extraction emulation function



Description
~~~~~~~~~~~

Matlab and Scilab extraction behave differently in some particular
cases:


+ When extracting data from a matrix with a vector as index: Matlab
  returns a row vector and Scilab returns a column vector.
+ When extracting data from a character string matrix: due to the fact
  that character string matrices in Matlab can be adressed as any other
  matrix (each character can be adressed), extraction in such a type of
  matrix does not differ from other. But in Scilab it can't be done so
  and `part` function has to be used.


The function `mtlb_e(B,k)` is used by `mfile2sci` to replace `A=B(k)`
when it was not possible to know what were the operands while porting
Matlab code to Scilab. This function will determine the correct
semantic at run time. If you want to have a more efficient code it is
possible to replace `mtlb_e` calls:


+ If `B` is a vector `A=mtlb_e(B,k)` may be replaced by `A=B(k)`
+ If `B` is a matrix `A=mtlb_e(B,k)` may be replaced by `A=B(k).'`
+ If `B` is a character string matrix and k is a scalar or a vector
  `A=mtlb_e(B,k)` may be replaced by `A=part(B,k)`


Caution: `mtlb_e` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `Matlab-Scilab_character_strings`_ Generally speaking about...
+ `part`_ extraction of strings


.. _part: part.html
.. _Matlab-Scilab_character_strings: MatlabScilab_character_strings.html


