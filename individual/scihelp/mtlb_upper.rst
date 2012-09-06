


mtlb_upper
==========

Matlab upper emulation function



Description
~~~~~~~~~~~

Matlab `upper(A)` and Scilab `convstr(A,"u")` behave differently in
some particular cases:


+ If `A` is not a chacarter string matrix: Matlab `upper` can be used
  with a not-character-string `A` but not Scilab `convstr`.


The function `mtlb_upper(A)` is used by `mfile2sci` to replace
`upper(A)` when it was not possible to know what were the inputs while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_upper` calls:


+ If `A` is a character string matrix `mtlb_upper(A)` may be replaced
  by `convstr(A,"u")`
+ If `A` is not a character string matrix `mtlb_upper(A)` may be
  replaced by `A`


Caution: `mtlb_upper` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `convstr`_ case conversion


.. _convstr: convstr.html


