


perl
====

Call Perl script using appropriate operating system executable



Calling Sequence
~~~~~~~~~~~~~~~~


::

    perl('perlfile')
    perl('perlfile',arg1,arg2,...)
    result = perl(...)




Description
~~~~~~~~~~~

`perl('perlfile')` calls the Perl script `perlfile`, using the
appropriate operating system Perl executable.

`perl('perlfile',arg1,arg2,...)` calls the Perl script perlfile, using
the appropriate operating system Perl executable, and passes the
arguments `arg1`, `arg2`, and so on, to `perlfile`.

`result = perl(...)` returns the results of attempted Perl call to
`result`.



See Also
~~~~~~~~


+ `unix`_ shell (sh) command execution


.. _unix: unix.html


