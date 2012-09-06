


tokenpos
========

returns the tokens positions in a character string.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    kdf=tokenpos(str [,delimiter])




Arguments
~~~~~~~~~

:str A character string. The string where to search the tokens.
: :delimiter (optional) A character or a vector of characters. The
  tokens delimeters.
: :kdf Two columns matrix, first column gives the index of the
  beginning of the tokens, the second gives the index of the last
  character of the tokens.
:



Description
~~~~~~~~~~~

`kdf=tokenpos(str [,delimiter])` searches the tokens included in the
string `str`. The `delimiter` default value is [" ",<Tab>] where <Tab>
stands for `ascii(9)`. It returns the indices of the first and last
characters of each found tokens.



Examples
~~~~~~~~


::

    str='This is a character string';
    kdf=tokenpos(str)
    first=`part`_(str,kdf(1,1):kdf(1,2))




See Also
~~~~~~~~


+ `strindex`_ search position of a character string in an other
  string.
+ `tokens`_ returns the tokens of a character string.


.. _tokens: tokens.html
.. _strindex: strindex.html


