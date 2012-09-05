


strstr
======

Locate substring



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res = strstr(haystack,needle)




Arguments
~~~~~~~~~

:haystack A character string or matrix of character strings
: :needle A character string or matrix of character strings
: :res A character string or matrix of character strings
:



Description
~~~~~~~~~~~

`res = strstr(haystack,needle)` Returns a string matrix starting from
where the first occurrence of needle in haystack to the end of
haystack, or '' if there needle is not part of haystack.



Examples
~~~~~~~~


::

    strstr('This is a simple string','simple')
    strstr('This is a simple string','sample')
    strstr(['This is a simple string','in scilab'],'is')
    strstr(['This is a sample string','in scilab'],['a','scilab'])




See Also
~~~~~~~~


+ `strrchr`_ Find the last occurrence of a character in a string
+ `strchr`_ Find the first occurrence of a character in a string


.. _strchr: strchr.html
.. _strrchr: strrchr.html


