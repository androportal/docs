


strrchr
=======

Find the last occurrence of a character in a string



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res = strrchr(str1,char)




Arguments
~~~~~~~~~

:str1 A character string or matrix of character strings
: :char a character.
: :res A character string or matrix of character strings
:



Description
~~~~~~~~~~~

`res = strrchr(str1,char)` Returns the last occurrence of character in
the string str.

num must have same dimensions than str1 or only one char.



Examples
~~~~~~~~


::

    strrchr('This is a sample string','s')
    strrchr(['This is a sample string','in scilab'],'s')
    strrchr(['This is a sample string','in scilab'],['s','a'])




See Also
~~~~~~~~


+ `strchr`_ Find the first occurrence of a character in a string
+ `strstr`_ Locate substring


.. _strchr: strchr.html
.. _strstr: strstr.html


