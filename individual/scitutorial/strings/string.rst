====
"string"
====

Scilab Function Last update : April 1993
**string** - conversion to string



Calling Sequence
~~~~~~~~~~~~~~~~

string(x)
[out,in,text]=string(x)




Parameters
~~~~~~~~~~


+ **x** : real matrix or function




Description
~~~~~~~~~~~

converts a matrix into a matrix of strings.

If **x** is a function **[out,in,text]=string(x)** returns three
vectors strings : **out** is the vector of output variables, **in** is
the vector of input variables, and **text** is the (column) vector of
the source code of the function.

If **x** is a **lib** variable, text is a character string column
vector. The first element contains the path of library file and the
other the name of functions it defines.

Character strings are defined as **'string'** (between quotes) or
**"string"** (between doublequotes); matrices of strings are defined
as usual constant matrices.

Concatenation of strings is made by the **+** operation.



Examples
~~~~~~~~


::

    
    
    string(rand(2,2))
    deff('y=mymacro(x)','y=x+1')
    [out,in,text]=string(mymacro)
    x=123.356; 'Result is '+string(x)
     
      




See Also
~~~~~~~~

` **part** `_,` **length** `_,` **quote** `_,` **evstr** `_,`
**execstr** `_,` **strsubst** `_,` **strcat** `_,` **strindex** `_,`
**sci2exp** `_,

.. _
      : ://./strings/../programming/execstr.htm
.. _
      : ://./strings/../utilities/sci2exp.htm
.. _
      : ://./strings/strcat.htm
.. _
      : ://./strings/../programming/evstr.htm
.. _
      : ://./strings/length.htm
.. _
      : ://./strings/../programming/quote.htm
.. _
      : ://./strings/part.htm
.. _
      : ://./strings/strindex.htm
.. _
      : ://./strings/strsubst.htm


