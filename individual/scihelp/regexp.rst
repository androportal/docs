


regexp
======

find a substring that matches the regular expression string



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [start]=regexp(input,pattern,[flag])
    [start,end,match]=regexp(input,pattern,[flag])
    [start,end]=regexp(input,pattern,[flag])
    [start,end,match]=regexp(input,pattern,[flag])




Arguments
~~~~~~~~~

:input a string.
: :pattern a character string (under the rules of regular expression)
: :start the starting index of each substring of str that matches the
  regular expression string pattern
: :end the ending index of each substring of str that matches the
  regular expression string pattern
: :match the text of each substring of str that matches `pattern`.
: :[flag] 'o' for matching the pattern once .
:



Description
~~~~~~~~~~~

The rules of regular expression are similar to perl language. For a
quick start , see `http://perldoc.perl.org/perlrequick.html`_. For a
more in-depth tutorial on , see
`http://perldoc.perl.org/perlretut.html`_ and for the reference page,
see `http://perldoc.perl.org/perlre.html`_

A difference with Perl is that matching a position but no character
(for example, with /^/ or /(?=o)/) is a successful match in Perl but
not in Scilab.



Examples
~~~~~~~~


::

    regexp('xabyabbbz','/ab*/','o')
    regexp('a!','/((((((((((a))))))))))\041/')
    regexp('ABCC','/^abc$/i')
    regexp('ABC','/ab|cd/i')
    [a b c]=regexp('XABYABBBZ','/ab*/i')




See Also
~~~~~~~~


+ `strindex`_ search position of a character string in an other
  string.


.. _http://perldoc.perl.org/perlrequick.html: http://perldoc.perl.org/perlrequick.html
.. _http://perldoc.perl.org/perlretut.html: http://perldoc.perl.org/perlretut.html
.. _strindex: strindex.html
.. _http://perldoc.perl.org/perlre.html: http://perldoc.perl.org/perlre.html


