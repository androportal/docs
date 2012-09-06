


strcspn
=======

Get span until character in string



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res = strcspn(string_one,string_two)




Arguments
~~~~~~~~~

:string_one A character string or matrix of character strings
: :string_two A character string or matrix of character strings
: :res matrix.
:



Description
~~~~~~~~~~~

`res = strcspn(string_one,string_two)` Scans string_one for the first
occurrence of any of the characters that are part of string_two,
returning the number of characters of string_one read before this
first occurrence.

string_one must have same dimensions than string_two or string_one
must be a string.



Examples
~~~~~~~~


::

    strcspn("fcba73","1234567890")
    strcspn(["fcba73","f7cba73"],"1234567890")
    strcspn(["fcba73","f7cba73"],["312","34567890"])




See Also
~~~~~~~~


+ `strspn`_ Get span of character set in string


.. _strspn: strspn.html


