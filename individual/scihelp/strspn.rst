


strspn
======

Get span of character set in string



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res = strspn(str1,str2)




Arguments
~~~~~~~~~

:str1 A character string or matrix of character strings
: :str2 A character string or matrix of character strings
: :res matrix.
:



Description
~~~~~~~~~~~

`res = strspn(str1,str2)` Returns the length of the initial portion of
str1 which consists only of characters that are part of str2.

str1 must have same dimensions than str2 or str1 must be a string.



Examples
~~~~~~~~


::

    i = strspn("129th","1234567890");
    `mprintf`_ ("The length of initial number is %d.\n",i);
    i = strspn(["129th","130th"],["1234567890","130t"])




See Also
~~~~~~~~


+ `strcspn`_ Get span until character in string


.. _strcspn: strcspn.html


