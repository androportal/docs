


disp
====

displays variables



Calling Sequence
~~~~~~~~~~~~~~~~


::

    disp(x1,[x2,...xn])




Description
~~~~~~~~~~~

displays `xi` with the current format. `xi`'s are arbitrary objects
(matrices of constants, strings, functions, lists, ...)

Display of objects defined by `tlist` may be overloaded by the
definition of a function. This function must have no output argument a
single input argument ant it's name is formed as follow
`%<tlist_type>_p` where `%<tlist_type>` stands for the first entry of
the tlist type component.

The `lines`_ function may be used to control the output.

`disp("a",1,"c")` display order: last input argument will be the first
displayed (LIFO).



Examples
~~~~~~~~


::

    disp([1 2],3)
    disp("a",1,"c")
    `deff`_('[]=%t_p(l)','disp(l(3),l(2))')
    disp(`tlist`_('t',1,2))




See Also
~~~~~~~~


+ `lines`_ rows and columns used for display
+ `write`_ write in a formatted file
+ `read`_ matrices read
+ `print`_ prints variables in a file
+ `string`_ conversion to string
+ `tlist`_ Scilab object and typed list definition.


.. _write: write.html
.. _print: print.html
.. _lines: lines.html
.. _read: read.html
.. _string: string.html
.. _tlist: tlist.html


