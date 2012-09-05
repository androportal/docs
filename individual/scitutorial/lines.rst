


lines
=====

rows and columns used for display



Calling Sequence
~~~~~~~~~~~~~~~~


::

    lines(nl)
    lines(nl, nc)
    lines(ncl)
    ncl = lines()




Arguments
~~~~~~~~~

:nl An integer, the number of lines for vertical paging control.

    + If 0: no vertical paging control is done.
    + If -1: reset vertical paging control to current size of the window.

: :nc An integer, the number of column of output. Used for formatting
  output
: :ncl A 1x2 vector [nc, nl]
:



Description
~~~~~~~~~~~

`lines` handles Scilab display paging.

`lines()` returns the vector `[# columns, # rows]` currently used by
Scilab for displaying the results.

`lines(nl)` sets the number of displayed lines (before user is asked
for more) to `nl`.

`lines(0)` disables vertical paging.

`lines(nl,nc)` and `lines([nc,nl])` changes also the size of the
output to `nc` columns.

When Scilab is launched without -nw option, the `lines` parameters are
automatically set according to the output window size, these
parameters are also automatically modified when the window is resized.



See Also
~~~~~~~~


+ `disp`_ displays variables
+ `print`_ prints variables in a file




History
~~~~~~~
Version Description 5.4.0

+ lines is set by default to 0. Argument -1 added. See SEP #67 for
  more information.
+ lines manages a 1x2 vector [nc, nl] as input argument


.. _print: print.html
.. _disp: disp.html


