====
"disp"
====

Scilab Function Last update : 04/10/2004
**disp** - displays variables



Calling Sequence
~~~~~~~~~~~~~~~~

disp(x1,[x2,...xn])




Description
~~~~~~~~~~~

displays **xi** with the current format. **xi** 's are arbitrary
objects (matrices of constants, strings, functions, lists, ...)

Display of objects defined by **tlist** may be overloaded by the
definition of a function. This function must have no output argument a
single input argument ant it's name is formed as follow
**%<tlist_type>_p** where **%<tlist_type>** stands for the first entry
of the tlist type component.

The ` **lines** `_ function may be used to control the ouput.



Examples
~~~~~~~~


::

    
    
    disp([1 2],3)
    deff('[]=%t_p(l)','disp(l(3),l(2))')
    disp(tlist('t',1,2))
     
      




See Also
~~~~~~~~

` **lines** `_,` **write** `_,` **read** `_,` **print** `_,`
**string** `_,` **tlist** `_,

.. _
      : ://./fileio/lines.htm
.. _
      : ://./fileio/print.htm
.. _
      : ://./fileio/read.htm
.. _
      : ://./fileio/../programming/tlist.htm
.. _
      : ://./fileio/../strings/string.htm
.. _
      : ://./fileio/write.htm


