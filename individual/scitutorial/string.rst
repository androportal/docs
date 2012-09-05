


string
======

conversion to string



Calling Sequence
~~~~~~~~~~~~~~~~


::

    string(x)
    [out, in, text] = string(x)




Arguments
~~~~~~~~~

:x Boolean, complex, real, integer, polynomial matrix, implicit size,
  library or function
:



Description
~~~~~~~~~~~

converts a matrix into a matrix of strings.

If `x` is a function `[out, in, text] = string(x)` returns three
vectors strings : `out` is the vector of output variables, `in` is the
vector of input variables, and `text` is the (column) vector of the
source code of the function.

If `x` is a `lib` variable (library), text is a character string
column vector. The first element contains the path of library file and
the other the name of functions it defines.

Character strings are defined as `'string'` (between quotes) or
`"string"` (between doublequotes); matrices of strings are defined as
usual constant matrices.

Concatenation of strings is made by the `+` operation.

For complex, real, integer, polynomial matrix `string` output is
managed by `format`_ function (see examples).



Examples
~~~~~~~~


::

    string(`rand`_(2, 2))
          
          `deff`_("y = mymacro(x)", "y = x + 1")
          [out, in, text] = string(mymacro)
          x = 123.356;
          `disp`_("Result is " + string(x));
          
          `disp`_("/" + string(~%t) + "/");
          `disp`_("/" + string(%i+1) + "/");
          `disp`_("/" + string(`int16`_(-123)) + "/");
          `disp`_("/" + string(1 + %s + %s^3) + "/");
          
          string(corelib)
          
          v = `format`_();
          `disp`_(string(%pi))
          `format`_(24);
          `disp`_(string(%pi))
          `format`_(v(2))
          
          string(1:4:$)




See Also
~~~~~~~~


+ `part`_ extraction of strings
+ `length`_ length of object
+ `quote`_ (') transpose operator, string delimiter
+ `evstr`_ evaluation of expressions
+ `execstr`_ execute Scilab code in strings
+ `strsubst`_ substitute a character string by another in a character
  string.
+ `strcat`_ concatenate character strings
+ `strindex`_ search position of a character string in an other
  string.
+ `sci2exp`_ converts an expression to a string
+ `format`_ number printing and display format




History
~~~~~~~
Version Description 5.4.0 implicit size type managed as input
argument.
.. _execstr: execstr.html
.. _strindex: strindex.html
.. _length: length.html
.. _strcat: strcat.html
.. _strsubst: strsubst.html
.. _format: format.html
.. _part: part.html
.. _sci2exp: sci2exp.html
.. _quote: quote.html
.. _evstr: evstr.html


