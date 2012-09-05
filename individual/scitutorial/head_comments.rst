


head_comments
=============

display scilab function header comments



Calling Sequence
~~~~~~~~~~~~~~~~


::

    head_comments(name)
    head_comments(name,%paths)




Arguments
~~~~~~~~~

:name character string, the function name
: :%paths character string vector, paths where to look for the
  asscoated sci-file
:



Description
~~~~~~~~~~~

`comments(name)` displays the function header comments (like the
Matlab help). The comments are read from the associated sci-file. If
`name` if a function in a library the sci-file path is those given by
the library path (see `lib`). If `name` if a function which is not in
a library, a file with name `name.sci` is searched in the directories
given by the variable `%paths`

Warning, most of the scilab predefined functions have no header
comments.



Examples
~~~~~~~~


::

    head_comments sinc




See Also
~~~~~~~~


+ `help`_ on-line help command


.. _help: help.html


