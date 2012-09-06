


mtlb_realmin
============

Matlab realmin emulation function



Description
~~~~~~~~~~~

Scilab equivalent for Matlab `realmin` is `number_properties` but not
all cases are implemented:


+ Scilab equivalent for Matlab `realmin` or `realmin('double')` is
  `number_properties("tiny")`.
+ There is no Scilab equivalent for Matlab `realmin('single')`


The function `mtlb_realmin(prec)` is used by `mfile2sci` to replace
`realmin(prec)` when it was not possible to know what was the input
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_realmin` calls:


+ If `prec` is equal to `"double"` `mtlb_realmin(prec)` may be
  replaced by `number_properties("tiny")`


Caution: `mtlb_realmin` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `number_properties`_ determine floating-point parameters


.. _number_properties: number_properties.html


