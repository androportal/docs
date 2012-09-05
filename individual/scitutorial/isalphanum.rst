


isalphanum
==========

check that characters of a string are alphanumerics



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res = isalphanum(str)




Arguments
~~~~~~~~~

:str A character string.
: :res A boolean matrix.
:



Description
~~~~~~~~~~~

`res = isalphanum(str)` returns an array the same size as str
containing logical %t (true) where the elements of str are
alphanumerics and logical %f (false) where they are not.



Examples
~~~~~~~~


::

    s = 'A1,B2,C3';
    isalphanum(s)




See Also
~~~~~~~~


+ `isletter`_ check that characters of a string are alphabetics
  letters
+ `isdigit`_ check that characters of a string are digits between 0
  and 9


.. _isdigit: isdigit.html
.. _isletter: isletter.html


