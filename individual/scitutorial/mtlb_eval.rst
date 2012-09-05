


mtlb_eval
=========

Matlab eval emulation function



Description
~~~~~~~~~~~

Scilab equivalent for Matlab `eval` is different according to its
inputs and outputs

The function `mtlb_eval(str1,str2)` is used by `mfile2sci` to replace
`eval` because it was not possible to know what were the inputs while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_eval` calls:


+ When called with one input and no output, `mtlb_eval(str1)` may be
  replaced by `evstr(str1)` if `str1` is a valid Scilab expression or by
  `execstr(str1)` if `str1` is a valid Scilab instruction.
+ When called with one input and one output, `val=mtlb_eval(str1)` may
  be replaced by `val=evstr(str1)` if `str1` is a valid Scilab
  instruction.
+ When called with two inputs and no output, `mtlb_eval(str1,str2)`
  may be replaced by: `if execstr(str1,"errcatch")<>0 then
  execstr(str2);end` if `str1` and `str2` are valid Scilab instructions.
+ When called with more than one output and one input,
  `[val1,val2,...]=mtlb_eval(str1)` may be replaced by
  `execstr("[val1,val2,...]"+str1)` if `str1` is a valid Scilab
  instruction.
+ When called with two inputs and more than one output,
  `[val1,val2,...]=mtlb_eval(str1,str2)` may be replaced by:

::

    if `execstr`_("[val1,val2,...]"+str1,"errcatch")<>0 then
      `execstr`_("[val1,val2,...]"+str2);
    end

  if `str1` and `str2` are valid Scilab instructions.


Caution: `mtlb_eval` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `evstr`_ evaluation of expressions
+ `execstr`_ execute Scilab code in strings


.. _evstr: evstr.html
.. _execstr: execstr.html


