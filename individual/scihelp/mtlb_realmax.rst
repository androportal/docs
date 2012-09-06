


mtlb_realmax
============

Matlab realmax emulation function



Description
~~~~~~~~~~~

Scilab equivalent for Matlab `realmax` is `number_properties` but not
all cases are implemented:


+ Scilab equivalent for Matlab `realmax` or `realmax('double')` is
  `number_properties("huge")`.
+ There is no Scilab equivalent for Matlab `realmax('single')`


The function `mtlb_realmax(prec)` is used by `mfile2sci` to replace
`realmax(prec)` when it was not possible to know what was the input
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_realmax` calls:


+ If `prec` is equal to `"double"` `mtlb_realmax(prec)` may be
  replaced by `number_properties("huge")`


Caution: `mtlb_realmax` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `number_properties`_ determine floating-point parameters


.. _number_properties: number_properties.html


