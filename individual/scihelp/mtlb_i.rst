


mtlb_i
======

Matlab insertion emulation function



Description
~~~~~~~~~~~

Matlab and Scilab insertion behave differently in some particular
cases:


+ When inserting a matrix in a variable: Matlab automatically adjusts
  output variable to fit with matrix to insert but not Scilab. For
  example, with A=1, A([1,2,3,4])=[1,2;3,4]) returns an error in Scilab
  while in Matlab we get A=[1,2,3,4]. If values miss comparing to
  indexes, Matlab fills output value with 0.
+ When inserting data into a character string matrix: due to the fact
  that character string matrices in Matlab can be adressed as any other
  matrix (each character can be adressed), insertion in such a type of
  matrix does not differ from other. But in Scilab it can't be done
  so... `mtlb_is` is an alternative.


The function `A=mtlb_i(A,k,B)` is used by `mfile2sci` to replace
`A(k)=B` when it was not possible to know what were the operands while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_i` calls:


+ If `A` is not a vector `A=mtlb_i(A,k,B)` may be replaced by `A(k)=B`
+ If `A` and `B` are both row or column vectors `A=mtlb_i(A,k,B)` may
  be replaced by `A(k)=B`


Caution: `mtlb_i` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `Matlab-Scilab_character_strings`_ Generally speaking about...
+ `mtlb_is`_ Matlab string insertion emulation function


.. _mtlb_is: mtlb_is.html
.. _Matlab-Scilab_character_strings: MatlabScilab_character_strings.html


