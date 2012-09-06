


isletter
========

check that characters of a string are alphabetics letters



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res = isletter(str)




Arguments
~~~~~~~~~

:str A character string.
: :res A boolean matrix.
:



Description
~~~~~~~~~~~

`res = isletter(str)` returns an array the same size as str containing
logical %t (true) where the elements of str are letters of the
alphabet and logical %f (false) where they are not.



Examples
~~~~~~~~


::

    s = 'A1,B2,C3';
    isletter(s)




See Also
~~~~~~~~


+ `isalphanum`_ check that characters of a string are alphanumerics
+ `isdigit`_ check that characters of a string are digits between 0
  and 9


.. _isdigit: isdigit.html
.. _isalphanum: isalphanum.html


