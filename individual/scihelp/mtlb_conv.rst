****


mtlb_conv
=========

Matlab conv emulation function. **This function is obsolete.**



Description
~~~~~~~~~~~

Matlab `conv` and Scilab `convol` behave differently in some
particular cases:


+ With column vector inputs: if at least input is a column vector
  Matlab `conv` returns a column vector but Scilab `convol` always
  returns a row vector.


The function `mtlb_conv(u,v)` is used by `mfile2sci` to replace
`conv(u,v)` when it was not possible to know what were the inputs
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_conv` calls:


+ If `u` and `v` are row vectors, `mtlb_conv(u,v)` may be replaced by
  `convol(u,v)`
+ If `u` or `v` is a column vector, `mtlb_conv(u,v)` may be replaced
  by `convol(u,v).'`
+ If `u` and `v` are column vectors, `mtlb_conv(u,v)` may be replaced
  by `convol(u,v).'`


Scilab `convol` sometimes returns values that may be rounded using
`clean` to have a closer result from Matlab one.

Caution: `mtlb_conv` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `clean`_ cleans matrices (round to zero small entries)
+ `conv`_ discrete 1-D convolution.




History
~~~~~~~
Version Description 5.4.0 Function mtlb_conv is obsolete and will be
removed in Scilab 5.4.1, use `conv`_ instead.
.. _clean: clean.html
.. _conv: conv.html


