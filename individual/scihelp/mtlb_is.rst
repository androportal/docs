


mtlb_is
=======

Matlab string insertion emulation function



Description
~~~~~~~~~~~

Matlab and Scilab insertion behave differently for strings due to the
fact that they do not consider character strings in the same way.

The function `str = mtlb_is(sto,sfrom,i,j)` is used by `mfile2sci` to
replace insertion operations for character strings. This function will
determine the correct semantic at run time. There is no replacement
possibility for it.

Caution: `mtlb_is` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `Matlab-Scilab_character_strings`_ Generally speaking about...
+ `mtlb_i`_ Matlab insertion emulation function


.. _mtlb_i: mtlb_i.html
.. _Matlab-Scilab_character_strings: MatlabScilab_character_strings.html


