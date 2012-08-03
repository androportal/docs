====
"getf"
====

Scilab Function Last update : April 1993
**getf** - defining a function from a file



Calling Sequence
~~~~~~~~~~~~~~~~

getf(file-name [,opt])




Parameters
~~~~~~~~~~


+ **filename** : Scilab string.
+ **opt** : optional character string

    + **"c" ** : loaded functions are "compiled" to be more efficient
      (default)
    + **"n" ** : loaded functions are not "compiled"
    + **"p" ** : loaded functions are "compiled" and prepared for
      profiling (see profile)





Description
~~~~~~~~~~~

loads one or several functions (see **functions** ) defined in the
file **'file-name'** . The string **opt='n'** means that the functions
are not compiled (pre-interpreted) when loaded. This can be useful for
some debugging purpose (see **comp** ). By default, functions are
compiled when loaded (i.e. **opt='c'** is used).

In the file a function must begin by a "syntax definition" line as
follows:


::

    
    
    function [y1,...,yn]=foo(x1,...,xm)
       
        


followed by a sequence of scilab instructions.

The "syntax definition" line gives the "full" calling syntax of this
function. The **yi** are output variables calculated as functions of
input variables **xi** and variables existing in Scilab when the
function is executed. Shorter input or output argument list may be
used.

Many functions may be written in the same file. A function is
terminated by an **endfunction** keyword. For compatibility with
previous versions a function may also be terminated by the following
**function** keyword or the **EOF** mark.

**getf** is an old way for loading functions into scilab from a file,
If functions in a file are terminated by an **endfunction** keyword,
the file maybe loaded using the **exec** function instead of **getf**
. In this case default option **opt** is used.



Examples
~~~~~~~~


::

    
    
    getf('SCI/macros/xdess/plot.sci')
    
    getf SCI/macros/xdess/plot.sci
     
      




See Also
~~~~~~~~

` **functions** `_,` **function** `_,` **genlib** `_,` **getd** `_,`
**exec** `_,` **edit** `_,` **comp** `_,

.. _
      : ://./functions/edit.htm
.. _
      : ://./functions/genlib.htm
.. _
      : ://./functions/comp.htm
.. _
      : ://./functions/function.htm
.. _
      : ://./functions/../programming/exec.htm
.. _
      : ://./functions/getd.htm
.. _
      : ://./functions/functions.htm


