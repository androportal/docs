


emptystr
========

zero length string



Calling Sequence
~~~~~~~~~~~~~~~~


::

    s = emptystr()
    s = emptystr(a)
    s = emptystr(m, n)




Arguments
~~~~~~~~~

:a matrix of size m x n
: :s A matrix of character strings
: :m,n Integers
:



Description
~~~~~~~~~~~

Returns a matrix of zero length character strings

With no input argument returns a zero length character string.

With a matrix for input argument returns a zero length character
strings matrix of the same size.

With two integer arguments returns a m x n zero length character
strings matrix



Examples
~~~~~~~~


::

    x=emptystr();for k=1:10, x=x+','+`string`_(k);end




See Also
~~~~~~~~


+ `part`_ extraction of strings
+ `length`_ length of object
+ `string`_ conversion to string


.. _part: part.html
.. _length: length.html
.. _string: string.html


