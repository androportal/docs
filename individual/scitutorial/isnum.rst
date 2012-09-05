


isnum
=====

tests if a string represents a number



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res = isnum(str)




Arguments
~~~~~~~~~

:str A character string or a matrix of character strings.
: :res A boolean matrix.
:



Description
~~~~~~~~~~~

`res = isnum(str)`returns %T if str represents a number



Examples
~~~~~~~~


::

    isnum(['1'     , ..
           '-1.23' , ..
           '+1e+23', .. 
           '1d+23' , ..
           '%pi'])




See Also
~~~~~~~~


+ `isletter`_ check that characters of a string are alphabetics
  letters
+ `isdigit`_ check that characters of a string are digits between 0
  and 9
+ `isalphanum`_ check that characters of a string are alphanumerics


.. _isdigit: isdigit.html
.. _isletter: isletter.html
.. _isalphanum: isalphanum.html


