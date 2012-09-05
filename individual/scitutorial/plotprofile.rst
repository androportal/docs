


plotprofile
===========

extracts and displays execution profiles of a Scilab function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    plotprofile(fun)




Arguments
~~~~~~~~~

:fun a Scilab compiled function, or a function name (string), or an
  array of function names
:



Description
~~~~~~~~~~~

To use `plotprofile`, the Scilab function must have been prepared for
profiling (see exec).

When such a function is executed, the system counts how many times
each line is executed and how much cpu time is spent executing each
line. This data is stored within the function data structure. The
function `plotprofile` in an interactive command which displays this
results in a graphic window. When a line is clicked, the source of the
function is displayed with the selected line highlighted.

NOTE: you have to click on the "Exit" item in the graphics windows to
exit from "plotprofile".

The function code is regenerated with `fun2string` and dumped into a
temporary file.



Examples
~~~~~~~~


::

    //define a function and prepare it for profiling
    `deff`_('x=foo(n)',['if n==0 then'
                     '  x=[]'
                     'else'
                     '  x=0'
                     '  for k=1:n'
                     '    s=svd(rand(n+10,n+10))'
                     '    x=x+s(1)'
                     '  end'
                     'end'],'p')
    //call the function
    foo(30)
    
    //get execution profiles
    plotprofile(foo) // click on Exit to exit




See Also
~~~~~~~~


+ `profile`_ extract execution profiles of a Scilab function
+ `showprofile`_ extracts and displays execution profiles of a Scilab
  function
+ `fun2string`_ generates ascii definition of a scilab function


.. _profile: profile.html
.. _showprofile: showprofile.html
.. _fun2string: fun2string.html


