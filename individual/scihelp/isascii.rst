


isascii
=======

tests if character is a 7-bit US-ASCII character



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res = isascii(str)




Arguments
~~~~~~~~~

:str A character string.
: :res A Boolean matrix.
:



Description
~~~~~~~~~~~

`res = isascii(str)` returns TRUE (%T) if c is a 7-bit US-ASCII
character code between 0 and octal 0177 inclusive. otherwise returns
FALSE (%F)



Examples
~~~~~~~~


::

    letters = [115.    99.    105.    108.    97.    98.]
    isascii(letters)
    `ascii`_(letters)
    isascii('scilab')




See Also
~~~~~~~~


+ `isalphanum`_ check that characters of a string are alphanumerics


.. _isalphanum: isalphanum.html


