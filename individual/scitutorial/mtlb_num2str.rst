


mtlb_num2str
============

Matlab num2str emulation function



Description
~~~~~~~~~~~

Matlab `num2str` and Scilab equivalents ( `string`, `msprintf`) behave
differently in some particular cases:


+ With two input parameters, the second giving precision: There is no
  Scilab equivalent function, but `msprintf` can be used to emulate.
+ With two input parameters, the second giving format: Scilab
  equivalent for Matlab `num2string(a,format)` is `msprintf(format,a)`.


The function `mtlb_num2str(x,f)` is used by `mfile2sci` to replace
`num2str(x,f)` when it was not possible to know what were the inputs
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_num2str` calls:


+ If `f` is a character string `mtlb_num2str(x,f)` may be replaced by
  `msprintf(f,x)`


Caution: `mtlb_num2str` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `string`_ conversion to string
+ `msprintf`_ converts, formats, and writes data in a string


.. _msprintf: msprintf.html
.. _string: string.html


