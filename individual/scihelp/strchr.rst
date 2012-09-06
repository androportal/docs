


strchr
======

Find the first occurrence of a character in a string



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res = strchr(haystack,char)




Arguments
~~~~~~~~~

:haystack A character string or matrix of character strings
: :char a character.
: :res A character string or matrix of character strings
:



Description
~~~~~~~~~~~

`res = strchr(haystack,char)` returns the first occurrence of `char`
in the string `haystack`.

`char` must contain only one string or as many strings as in
`haystack` (each one being one-character-long).



Examples
~~~~~~~~


::

    strchr('This is a sample string','s')
    strchr(['This is a sample string','in scilab'],'s')
    strchr(['This is a sample string','in scilab'],['s','a'])




See Also
~~~~~~~~


+ `strrchr`_ Find the last occurrence of a character in a string
+ `strstr`_ Locate substring


.. _strstr: strstr.html
.. _strrchr: strrchr.html


