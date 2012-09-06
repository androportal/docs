


isdigit
=======

check that characters of a string are digits between 0 and 9



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res = isdigit(str)




Arguments
~~~~~~~~~

:str A character string.
: :res A boolean matrix.
:



Description
~~~~~~~~~~~

`res = isdigit(str)` returns an array the same size as str containing
logical %T (TRUE) where the elements of str are digits and logical %F
(FALSE) where they are not.



Examples
~~~~~~~~


::

    s = 'A1,B2,C3';
    isdigit(s)




See Also
~~~~~~~~


+ `isalphanum`_ check that characters of a string are alphanumerics
+ `isletter`_ check that characters of a string are alphabetics
  letters


.. _isletter: isletter.html
.. _isalphanum: isalphanum.html


