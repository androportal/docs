


strtok
======

Split string into tokens



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res = strtok(str,delimiters)




Arguments
~~~~~~~~~

:str A character string
: :delimiters A character string
: :res A character string
:



Description
~~~~~~~~~~~

`res = strtok(str,delimiters)` sequence of calls to this function
split str into tokens, which are sequences of contiguous characters
spearated by any of the characters that are part of delimiters.



Examples
~~~~~~~~


::

    TOKENS = [];
    token = strtok("A string of ,,tokens and some  more tokens"," ,");
    TOKENS = [TOKENS,token];
    while( token <> '' )
      token = strtok(" ,");
      TOKENS = [TOKENS,token];
    end
    `disp`_(TOKENS);




See Also
~~~~~~~~


+ `strrchr`_ Find the last occurrence of a character in a string
+ `strchr`_ Find the first occurrence of a character in a string


.. _strchr: strchr.html
.. _strrchr: strrchr.html


