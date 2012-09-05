


print
=====

prints variables in a file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    print('file-name',x1,[x2,...xn])




Description
~~~~~~~~~~~

prints `xi` on file `'file-name'` with the current format, i.e. the
format used by scilab to display the variables. All types of variables
may be " `print`"'ed

Note : `xi` must be a named variable, with expressions variable name
part of the display is unpredictable.

`print(%io(2),...)` prints on Scilab's window. this syntax may be used
to display variables within a macro.



Examples
~~~~~~~~


::

    a=`rand`_(3,3);p=`poly`_([1,2,3],'s');l=`list`_(1,'asdf',[1 2 3]);
    print(%io(2),a,p,l)
    `write`_(%io(2),a)




See Also
~~~~~~~~


+ `write`_ write in a formatted file
+ `read`_ matrices read
+ `format`_ number printing and display format
+ `printf`_
+ `disp`_ displays variables


.. _write: write.html
.. _disp: disp.html
.. _format: format.html
.. _read: read.html
.. _printf: mprintf.html#printf


