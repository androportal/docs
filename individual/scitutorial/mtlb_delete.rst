


mtlb_delete
===========

Matlab delete emulation function



Description
~~~~~~~~~~~

The function `mtlb_delete(A)` is used by `mfile2sci` to replace
`delete(A)` when it was not possible to know what was the input while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_delete` calls:


+ If `A` is a character string `mtlb_delete(A)` may be replaced by
  `mdelete(A)`
+ If `A` is a graphic handle `mtlb_delete(A)` may be replaced by
  `delete(A)`


Caution: `mtlb_delete` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `mdelete`_ deletes file(s)


.. _mdelete: mdelete.html


