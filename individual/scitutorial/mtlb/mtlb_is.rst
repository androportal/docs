====
"mtlb_is"
====

M2SCI function Last update : 30/03/2004
**mtlb_is** - Matlab string insertion emulation function



Description
~~~~~~~~~~~

Matlab and Scilab insertion behave differently for strings due to the
fact that they do not consider character strings in the same way.

The function **str = mtlb_is(sto,sfrom,i,j)** is used by **mfile2sci**
to replace insertion operations for character strings. This function
will determine the correct semantic at run time. There is no
replacement possibility for it.

Caution: **mtlb_is** has not to be used for hand coded functions.



See Also
~~~~~~~~

` **Matlab-Scilab_character_strings** `_,` **mtlb_i** `_,



Authors
~~~~~~~

****V.C.


.. _
      : ://./mtlb/Matlab-Scilab_character_strings.htm
.. _
      : ://./mtlb/mtlb_i.htm


