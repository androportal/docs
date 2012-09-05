


tokens
======

returns the tokens of a character string.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    T=tokens(str [,delimiter])




Arguments
~~~~~~~~~

:str A character string. The string where to search the tokens.
: :delimiter (optional) a character or a vector of characters. The
  tokens delimeters.
: :T column vector of found tokens
:



Description
~~~~~~~~~~~

`T=tokens(str [,delimiter])` searches the tokens included in the
string `str`. The `delimiter` default value is [" ",<Tab>] where <Tab>
stands for `ascii(9)`.



Examples
~~~~~~~~


::

    tokens('This is a character string')
    
    tokens('SCI/demos/scicos','/')
    
    tokens('y=a+b*2',['=','+','*'])




See Also
~~~~~~~~


+ `strindex`_ search position of a character string in an other
  string.
+ `tokenpos`_ returns the tokens positions in a character string.


.. _tokenpos: tokenpos.html
.. _strindex: strindex.html


