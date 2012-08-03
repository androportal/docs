====
"emptystr"
====

Scilab Function Last update : April 1993
**emptystr** - zero length string



Calling Sequence
~~~~~~~~~~~~~~~~

s=emptystr()
s=emptystr(a)
s=emptystr(m,n)




Parameters
~~~~~~~~~~


+ **a** : any type of matrix
+ **s** : character string matrix
+ **m,n** : integers




Description
~~~~~~~~~~~

Returns a matrix of zero length character strings

With no input argument returns a zero length character string.

With a matrix for input argument returns a zero length character
strings matrix of the same size.

With two integer arguments returns a mxn zero length character strings
matrix



Examples
~~~~~~~~


::

    
    
    x=emptystr();for k=1:10, x=x+','+string(k);end
     
      




See Also
~~~~~~~~

` **part** `_,` **length** `_,` **string** `_,

.. _
      : ://./strings/length.htm
.. _
      : ://./strings/string.htm
.. _
      : ://./strings/part.htm


