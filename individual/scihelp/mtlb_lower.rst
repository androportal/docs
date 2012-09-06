


mtlb_lower
==========

Matlab lower emulation function



Description
~~~~~~~~~~~

Matlab `lower(A)` and Scilab `convstr(A,"l")` behave differently in
some particular cases:


+ If `A` is not a chacarter string matrix: Matlab `lower` can be used
  with a not-character-string `A` but not Scilab `convstr`.


The function `mtlb_lower(A)` is used by `mfile2sci` to replace
`lower(A)` when it was not possible to know what were the inputs while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_lower` calls:


+ If `A` is a character string matrix `mtlb_lower(A)` may be replaced
  by `convstr(A,"l")`
+ If `A` is not a character string matrix `mtlb_lower(A)` may be
  replaced by `A`


Caution: `mtlb_lower` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `convstr`_ case conversion


.. _convstr: convstr.html


