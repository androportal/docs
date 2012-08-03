====
"lines"
====

Scilab Function Last update : 16/12/2004
**lines** - rows and columns used for display



Calling Sequence
~~~~~~~~~~~~~~~~

lines([nl [,nc]])
ncl=lines()




Parameters
~~~~~~~~~~


+ **nl : an integer, the number of lines for vertical paging control.
  If 0** no vertical paging control is done.
+ **nc** : an integer, the number of column of output. Used for
  formatting output
+ **ncl** : a 1x2 vector [nc,nl]




Description
~~~~~~~~~~~

**lines** handles Scilab display paging.

**lines()** returns the vector **[# columns, # rows]** currently used
by Scilab for displaying the results.

**lines(nl)** sets the number of displayed lines (before user is asked
for more) to **nl** .

**lines(0)** disables vertical paging

**lines(nl,nc)** changes also the size of the output to **nc**
columns.

When Scilab is launched without -nw option, the **lines** parameters
are automatically set according to the output window size, these
parameters are also automaticaly modified when the window is resized.



See Also
~~~~~~~~

` **disp** `_,` **print** `_,

.. _
      : ://./fileio/disp.htm
.. _
      : ://./fileio/print.htm


